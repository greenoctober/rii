unit URIIPFRostov;

interface
uses
  Windows, Variants, Classes, SysUtils, XMLDoc,  xmldom, XMLIntf, msxmldom,
  pFIBErrorHandler, FIB, FIBQuery, pFIBQuery,
  UTypeRII, UXmlRIIPFRDoc, UDBRII, UTools, Dialogs;

  procedure writeData2XmlPF(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure loadDataPF(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
implementation

procedure writeData2XmlPF(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
//Выгрузка данных в ПФР
var
  aXMLDoc : IXMLDocument;
  pfXmlDataBlock: UXmlRIIPFRDoc.IXMLDataBlockType;
  pfXmlQuery: UXmlRIIPFRDoc.IXMLQueryType;
  pfXmlIp: UXmlRIIPFRDoc.IXMLIPType;
  pfDataBlock: TPFDataBlock;
  IsEmptyDoc: Boolean;
  sql: TpFIBQuery;
begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;

  sql := TpFIBQuery.Create(nil);
  sql.Database := aQuery.Database;
  sql.Transaction := aQuery.Transaction;

  if FileExists(FileName) then begin
    IsEmptyDoc := False;
    try
      aXMLDoc.LoadFromFile(FileName);
      pfXmlDataBlock := UXmlRIIPFRDoc.GetDataBlock(aXMLDoc);
      IsEmptyDoc := False;
    except
      IsEmptyDoc := True;
    end
  end
  else IsEmptyDoc := True;

  if not(FileExists(FileName)) or IsEmptyDoc then begin
    aXMLDoc.Version:='1.0';
    aXMLDoc.Encoding := arrProfile[indexAgent].coding;
    aXMLDoc.Options:=aXMLDoc.Options+[doNodeAutoIndent]+[doAttrNull];
    pfXmlDataBlock := UXmlRIIPFRDoc.GetDataBlock(aXMLDoc);
    {отдельные блоки для таблиц с разными полями}
    case iTableName of
      EXT_REQUEST: begin
        pfXmlDataBlock.Key := CreateGuid;
        pfXmlDataBlock.FsspTo := '56';
        pfXmlDataBlock.FsspOsp := aQuery.FldByName['osp_number'].AsString;
        pfXmlDataBlock.OrgAMD := aQuery.FldByName['mvv_agent_code'].AsString;
        pfXmlDataBlock.DivAMD := aQuery.FldByName['mvv_agent_dept_code'].AsString;
        pfXmlDataBlock.Signed := aQuery.FldByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
    end;
  end;
  case iTableName of
    EXT_REQUEST: begin
      while not aQuery.Eof do begin
        pfXmlQuery := pfXmlDataBlock.Query.Add;
        pfXmlQuery.Key := aQuery.FldByName['req_id'].AsString;
        pfXmlQuery.DocDate := aQuery.FldByName['req_date'].AsString;
        pfXmlQuery.SPI := aQuery.FldByName['spi_id'].AsString;
        pfXmlQuery.SPIFio := aQuery.FldByName['fio_spi'].AsString;
        //pfXmlQuery.SPIPost := aQuery.FldByName[''].AsString; //Атрибут необязательный
        pfXmlQuery.ChSPIFio := aQuery.FldByName['h_spi'].AsString;
        //pfXmlQuery.ChSPIPost := aQuery.FldByName[''].AsInt64;
        //pfXmlQuery.AnsDate := aQuery.FldByName[''].AsDate;
        //pfXmlQuery.SearchRegion := 56;
        {данные по запросу}
        pfXmlIp := pfXmlQuery.IP;
        pfXmlIp.Key := aQuery.FldByName['ip_id'].AsString;
        pfXmlIp.IPNum := aQuery.FldByName['ip_num'].AsString;
        pfXmlIp.IPDate := aQuery.FldByName['ip_risedate'].AsString;
        // pfXmlIp.IPName := aQuery.FldByName[''].AsString; //хер знает откуда брать

        SetQuery(sql, 'select IDOC_TYPE_ID from NSI_IDOC_TYPE where IDOC_TYPE_NAME = :param',[aQuery.FldByName['id_type_name'].AsString]);
        sql.ExecQuery;
        pfXmlIp.IDType := sql.Fields[0].AsString;
        sql.Close;

        pfXmlIp.IDNum := aQuery.FldByName['id_number'].AsString;
        pfXmlIp.IDDate := aQuery.FldByName['id_date'].AsString;
        //pfXmlIp.IDSubj := aQuery.FldByName[''].AsInt64;
        pfXmlIp.IDSubjName := aQuery.FldByName['id_subject_type'].AsString;
        pfXmlIp.IDSum := aQuery.FldByName['ip_sum'].AsString;
        pfXmlIp.IPDebt := aQuery.FldByName['ip_rest_debtsum'].AsString;
        pfXmlIp.DebtorType := aQuery.FldByName['entity_type'].AsString;
        pfXmlIp.DebtorName := aQuery.FldByName['debtor_name'].AsString;
        pfXmlIp.DebtorAdr := aQuery.FldByName['debtor_address'].AsString;
        if not aQuery.FldByName['debtor_inn'].IsNull then pfXmlIp.DebtorINN := aQuery.FldByName['debtor_inn'].AsString;
        if not aQuery.FldByName['debtor_kpp'].IsNull then pfXmlIp.DebtorKPP := aQuery.FldByName['debtor_kpp'].AsString;
        if not aQuery.FldByName['debtor_orgn'].IsNull then pfXmlIp.DebtorOGRN := aQuery.FldByName['debtor_orgn'].AsString;
        if not aQuery.FldByName['debtor_birthdate'].IsNull then pfXmlIp.DebtorBirthDate := aQuery.FldByName['debtor_birthdate'].AsString;
        if not aQuery.FldByName['debtor_birthplace'].IsNull then pfXmlIp.DebtorBirthPlace := aQuery.FldByName['debtor_birthplace'].AsString;
        pfXmlIp.SPI := aQuery.FldByName['spi_id'].AsString;
        pfXmlIp.SPIFio := aQuery.FldByName['fio_spi'].AsString;
        aQuery.Next;
      end;
    end;
  end;
  aXMLDoc.SaveToFile(FileName);
  aXMLDoc.Active := False;
end;

procedure loadDataPF(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
const
  notKnow = 'не указано';
  MaxCountQueryParam = 15;
var
  aXMLDoc : IXMLDocument;
  pfXmlDataBlock: UXmlRIIPFRDoc.IXMLDataBlockType;
  pfXmlExtAnswer: UXmlRIIPFRDoc.IXMLExtAnswerType;
  pfXmlData: UXmlRIIPFRDoc.IXMLDataType;
  pfDataBlock: TPFDataBlock;
  IsEmptyDoc: Boolean;
  i: integer;
  j: integer;
  ii: integer;
  jj: integer;
  gen_extInformation: Int64;
  gen_extInputHeader: Int64;
  gen_document: Int64;
  gen_extIpActs: Int64;
  gen_dxPack: Int64;
  sql: TpFIBQuery;
  entityName: String;
  entityINN: String;
  entityBirthDate: String;
  strLst: TStringList;
  orgName: String; // т.к., блять, ёбнутый формат, сохраняем наименование организации
  kindDataType: String; // т.к. читай первую часть сообщения выше
  varParam: array [1..MaxCountQueryParam] of Variant;
begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;

  {чтение данных из xml файла==================================================}
  if FileExists(FileName) then begin
    sql := TpFIBQuery.Create(nil);
    sql.Database := aQuery.Database;
    sql.Transaction := aQuery.Transaction;
    try
      aXMLDoc.LoadFromFile(FileName);
      pfXmlDataBlock := UXmlRIIPFRDoc.GetDataBlock(aXMLDoc);
      strLst := TStringList.Create;
      // т.к. пустые атрибуты могут пропускаться,
      // анализируем элементы на наличие атрибутов.
      // если атрибут обязательный и пустой,
      // надо как-то отреагировать. Например, набить морду отправителю.
      // нехер всякую шнягу слать!
      if pfXmlDataBlock.HasAttribute('Key') then pfDataBlock.Key := pfXmlDataBlock.Key
      else begin {Bastards!} end;
      if pfXmlDataBlock.HasAttribute('FsspTo') then pfDataBlock.FsspTo := pfXmlDataBlock.FsspTo
      else begin {Bastards!} end;
      if pfXmlDataBlock.HasAttribute('FsspOsp') then pfDataBlock.FsspOsp := pfXmlDataBlock.FsspOsp
      else begin {Bastards!} end;
      if pfXmlDataBlock.HasAttribute('OrgAMD') then pfDataBlock.OrgAMD := pfXmlDataBlock.OrgAMD
      else begin {Bastards!} end;
      if pfXmlDataBlock.HasAttribute('DivAMD') then pfDataBlock.DivAMD := pfXmlDataBlock.DivAMD
      else begin {Bastards!} end;
      if pfXmlDataBlock.HasAttribute('Signed') then pfDataBlock.Signed := pfXmlDataBlock.Signed
      else begin {Bastards!} end;
      i := 0;
      SetLength(pfDataBlock.pfExtAnswer, 0);

      while i<pfXmlDataBlock.ChildNodes.Count do begin
        if pfXmlDataBlock.ChildNodes.Nodes[i].NodeName = 'ExtAnswer' then begin

          SetLength(pfDataBlock.pfExtAnswer, length(pfDataBlock.pfExtAnswer) + 1);
          ii := length(pfDataBlock.pfExtAnswer);
          pfXmlExtAnswer := pfXmlDataBlock.ExtAnswer.Items[i];
          pfDataBlock.pfExtAnswer[ii-1].Key := pfXmlExtAnswer.Key;
          pfDataBlock.pfExtAnswer[ii-1].AnswerType := pfXmlExtAnswer.AnswerType;
          pfDataBlock.pfExtAnswer[ii-1].QueryKey := pfXmlExtAnswer.QueryKey;
          pfDataBlock.pfExtAnswer[ii-1].IPkey := pfXmlExtAnswer.IPkey;
          j := 0;
          SetLength(pfDataBlock.pfExtAnswer[ii-1].pfData, 0);
          while (j<pfXmlExtAnswer.ChildNodes.Count) do begin  //<Data>
            pfXmlData := pfXmlExtAnswer.Data[j];

            SetLength(pfDataBlock.pfExtAnswer[ii-1].pfData, length(pfDataBlock.pfExtAnswer[ii-1].pfData) + 1);
            jj := length(pfDataBlock.pfExtAnswer[ii-1].pfData);

            pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].key := pfXmlData.Key;
            pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].actDate := pfXmlData.ActDate;
            pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].debtorName := pfXmlData.DebtorName;
            pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].kindData := pfXmlData.KindData;
            pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].typeData := EXT_RESPONSE;
            if pfXmlData.HasChildNodes then
              if pfXmlData.ChildNodes[0].NodeName = 'SvedRab' then begin
                pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRab.NaimOrg := pfXmlData.ChildNodes[0].GetAttribute('NaimOrg');
                pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRab.AdresJ := pfXmlData.ChildNodes[0].GetAttribute('AdresJ');
                pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRab.AdresF := pfXmlData.ChildNodes[0].GetAttribute('AdresF');
              end
              else if pfXmlData.ChildNodes[0].NodeName = 'SvedRuc' then begin
              {****Сведения о должн. лицах}
                pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRuc.NameRuc := pfXmlData.ChildNodes[0].GetAttribute('NameRuc');
                if pfXmlData.ChildNodes[0].HasAttribute('AddressRuc') then
                  pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRuc.AddressRuc := pfXmlData.ChildNodes[0].GetAttribute('AddressRuc');
                if pfXmlData.ChildNodes[0].HasAttribute('TelRuc') then
                  pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRuc.TelRuc := pfXmlData.ChildNodes[0].GetAttribute('TelRuc');
                if pfXmlData.ChildNodes[0].HasAttribute('NameBux') then
                  pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRuc.NameBux := pfXmlData.ChildNodes[0].GetAttribute('NameBux');
                if pfXmlData.ChildNodes[0].HasAttribute('AddressBux') then
                  pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRuc.AddressBux := pfXmlData.ChildNodes[0].GetAttribute('AddressBux');
                if pfXmlData.ChildNodes[0].HasAttribute('TelBux') then
                 pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedRuc.TelBux := pfXmlData.ChildNodes[0].GetAttribute('TelBux');
              end
              else if pfXmlData.ChildNodes[0].NodeName = 'SvedDoxod' then begin
                 pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedDoxod.DataDox := pfXmlData.ChildNodes[0].GetAttribute('DataDox');
                 pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfSvedDoxod.SumDox := pfXmlData.ChildNodes[0].GetAttribute('SumDox');
              end
              else if pfXmlData.ChildNodes[0].NodeName = 'DebtorState' then begin
                pfDataBlock.pfExtAnswer[ii-1].pfData[jj-1].pfDebtorState.State := pfXmlData.ChildNodes[0].GetAttribute('State');
              end
              else if pfXmlData.ChildNodes[0].NodeName = 'Identification' then begin
              //
              end;
            inc(j);
          end;
        end;
        inc(i);
      end;

      {получение номера пакета}
      gen_dxPack := getGen(aQuery, 'select gen_id(DX_PACK, 1) from rdb$database');
      
      {прогоняем по pfDataBlock}
      for ii := 0 to length(pfDataBlock.pfExtAnswer)-1 do
      begin
        {Полученные данные пихаем в sql и грузим в базу}
        {получение EXT_INPUT_HEADER.ID, он же EXT_RESPONSE.ID}
        gen_extInputHeader := getGen(aQuery, 'select gen_id(SEQ_EXT_INPUT_HEADER, 1) from rdb$database');
        {получение EXT_INPUT_HEADER.EXTERNAL_KEY = EXT_INFORMATION.DOCUMENT_KEY}
        gen_document := getGen(aQuery, 'select gen_id(SEQ_DOCUMENT, 1) from rdb$database');

        {==Выполняется в одной транзакции======================================}
        {инсертим ext_INPUT_HEADER}
        SetQuery(aQuery, INSERT_INTO_INPUT_HEADER,
          [gen_extInputHeader,                            //ID
          gen_dxPack,                                     //PACK_NUMBER
          0,                                              //PROCEED
          arrProfile[indexAgent].agentCode,               //AGENT_CODE
          arrProfile[indexAgent].agentDeptCode,           //AGENT_DEPT_CODE
          arrProfile[IndexAgent].agentAgreementCode,      //AGENT_AGREEMENT_CODE
          gen_document,                                   //EXTERNAL_KEY
          'EXT_RESPONSE',                                 //METAOBJECTNAME
          null,
          null]);

        if pfDataBlock.pfExtAnswer[ii].AnswerType <> '1' then begin
         {сведения отсутствуют, либо некорректный запрос
         а в этом г. формате наименование должника только в Data,
         поэтому дергаем его из таблицы ext_request}
         SetQuery(sql, 'select er.debtor_name from ext_request er where er.req_id = :reqId', [pfDataBlock.pfExtAnswer[ii].QueryKey]);
         sql.Transaction.StartTransaction;
         try
          sql.ExecQuery;
          entityName := sql.Fields[0].AsString;
          sql.Transaction.Commit;
          sql.Close;
         except
          sql.Transaction.Rollback;
         end;
        end
        else begin
          strLst.Clear;
          {т.к. в поле debtorName передается наименование должника + ИНН/Дата рождения
          парсим поле}
          ExtractStrings([','],[' '], PAnsiChar(pfDataBlock.pfExtAnswer[ii].pfData[0].debtorName), strLst);
          case isDateOrIsINN(strLst[1]) of
            1: entityINN := strLst[1];
            2: entityBirthDate := strLst[1];
            else begin
              entityINN := '';
              entityBirthDate := '';
            end;
          end;
          entityName := strLst[0];
        end;

        SetQuery(sql, INSERT_INTO_RESPONSE,
           [gen_extInputHeader,
           Now,                                                 //RESPONSE_DATE. В данном формате отсутствует дата ответа.
           entityName,                                          //ENTITY_NAME
           null,                                                //ENTITY_BIRTHYEAR
           entityBirthDate,                                     //ENTITY_BIRTHDATE
           entityINN,                                           //ENTITY_INN
           null,                                                //ID_NUM
           null,                                                //IP_NUM
           pfDataBlock.pfExtAnswer[ii].QueryKey,              //REQUEST_NUM
           pfDataBlock.pfExtAnswer[ii].QueryKey,              //REQUEST_ID
           null,                                                //DATA_STR
           pfDataBlock.pfExtAnswer[ii].AnswerType]);          //Answer_Type

        aQuery.Transaction.StartTransaction;
        try
          aQuery.ExecQuery;  // заполняем INPUT_HEADER
          sql.ExecQuery;     // заполняем RESPONSE
          aQuery.Transaction.Commit;
        except
          aQuery.Transaction.Rollback;
        end;
       {======================================Выполняется в одной транзакции===}
        orgName := '';
        for jj := 0 to length(pfDataBlock.pfExtAnswer[ii].pfData) - 1 do begin
          strLst.Clear;
          ExtractStrings([','],[' '], PAnsiChar(pfDataBlock.pfExtAnswer[ii].pfData[jj].debtorName), strLst);
          case isDateOrIsINN(strLst[1]) of
            1: entityINN := strLst[1];
            2: entityBirthDate := strLst[1];
            else begin
              entityINN := '';
              entityBirthDate := '';
            end;
          end;
          entityName := strLst[0];

          {получение EXT_INFORMATION.ID, он же EXT_X_DATA.ID}
          {необходимо получать для каждой записи "Сведения о должнике"}
          gen_extInformation := getGen(aQuery, 'select gen_id(EXT_INFORMATION, 1) from rdb$database');

          case StrToInt(pfDataBlock.pfExtAnswer[ii].pfData[jj].kindData) of
            20: kindDataType := '01';
            30: kindDataType := '02';
            31: kindDataType := '16';
            32: kindDataType := '17';
            81: kindDataType := '56';
            82: kindDataType := '06';
            91: kindDataType := '07';
            92: kindDataType := '00'; //еще одна куйня, которой нет в справочниках
            93: kindDataType := '08';
          end;

          {таможенный досмотр. проверяем все передаваемые параметры и заполняем
            varParam}
          if (isDateOrIsINN(pfDataBlock.pfExtAnswer[ii].pfData[jj].actDate) = 3)
            or (isDateOrIsINN(pfDataBlock.pfExtAnswer[ii].pfData[jj].actDate) = 1) then begin
          {тут 2 варианта: 1. необрабатывать т.к. поле ext_information.act_date обязательное
           залогировать сообщение о некорректном ответе/сообщить адресату, что он херню прислал.
           2. Присвоить дате актуальности  текущую дату}
            varParam[3] := Now;
          end else varParam[3] := pfDataBlock.pfExtAnswer[ii].pfData[jj].actDate;
          SetQuery(aQuery, INSERT_INTO_INFORMATION,
                [gen_extInformation,
                  varParam[3],
                  kindDataType,
                  entityName,
                  gen_document,
                  entityBirthDate,
                  null,
                  0,
                  gen_document,
                  entityINN
              ]);

          case StrToInt(pfDataBlock.pfExtAnswer[ii].pfData[jj].kindData) of
            20: begin    //01
              SetQuery(sql, INSERT_IDENTIFICATION_DATA,
                [gen_extInformation,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfIdentification.NumDoc,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfIdentification.DateDoc,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfIdentification.CodeDep,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfIdentification.SerDoc,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfIdentification.FIODoc,
                 null,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfIdentification.IssuedDoc,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfIdentification.TypeDoc
                ]);
              aQuery.Transaction.StartTransaction;
              try
                aQuery.ExecQuery;
                sql.ExecQuery;
                aQuery.Transaction.Commit;
              except
                aQuery.Transaction.Rollback;
              end;
            end;
            30,31,32: begin  //02,16,17
              SetQuery(sql, INSERT_ADDRESS_DATA,
                [gen_extInformation,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfAddress.StrAddr
                ]);
              aQuery.Transaction.StartTransaction;
              try
                aQuery.ExecQuery;
                sql.ExecQuery;
                aQuery.Transaction.Commit;
              except
                aQuery.Transaction.Rollback;
              end;
            end;
            81: begin  //56
              orgName := pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRab.NaimOrg;
              SetQuery(sql, INSERT_SVED_RAB_DATA,
                [gen_extInformation,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRab.AdresF,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRab.AdresJ,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRab.NaimOrg,
                 null,
                 null
                ]);
              aQuery.Transaction.StartTransaction;
              try
                aQuery.ExecQuery;
                sql.ExecQuery;
                aQuery.Transaction.Commit;
              except
                aQuery.Transaction.Rollback;
              end;
            end;
            82: begin  //06
              if orgName = '' then begin
              {ой, блять, какая оказия. Ну не было до этого сведений о работе,
              а в контейнере "Руководители" кое кто не добавил поле ORG_NAME.
              И хуле делать? Что писать? "ООО Рога и копыта" или "Привет Ростову?}
                orgName := notKnow;
              end;
              {а теперь индусский код или китайский,
              т.к. у "товарищей" сведения о руководителе и бухгалтере в одном
              элементе SvedRuc}

              {1. Вставляем информацию о руководителе}
              SetQuery(sql, INSERT_MANAGEMENT_DATA,
                [gen_extInformation,
                 '01',
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRuc.NameRuc,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRuc.TelRuc,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRuc.AddressRuc,
                 orgName
                ]);

              aQuery.Transaction.StartTransaction;
              try
                aQuery.ExecQuery;
                sql.ExecQuery;
                aQuery.Transaction.Commit;
              except
                aQuery.Transaction.Rollback;
              end;

              {2. Вставляем информацию о бухгалтере}
              if pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRuc.NameBux <> '' then begin

                gen_extInformation := getGen(aQuery, 'select gen_id(EXT_INFORMATION, 1) from rdb$database');

                SetQuery(aQuery, INSERT_INTO_INFORMATION,
                  [gen_extInformation,
                    pfDataBlock.pfExtAnswer[ii].pfData[jj].actDate,
                    pfDataBlock.pfExtAnswer[ii].pfData[jj].kindData,
                    entityName,
                    gen_document,
                    entityBirthDate,
                    null,
                    0,
                    gen_document,
                    entityINN
                  ]);

                SetQuery(sql, INSERT_MANAGEMENT_DATA,
                  [gen_extInformation,
                    '02',
                    pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRuc.NameBux,
                    pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRuc.TelBux,
                    pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedRuc.AddressBux,
                    orgName
                  ]);

                aQuery.Transaction.StartTransaction;
                try
                  aQuery.ExecQuery;
                  sql.ExecQuery;
                  aQuery.Transaction.Commit;
                except
                  aQuery.Transaction.Rollback;
                end;
              end;
            end;
            91: begin  //07
              SetQuery(sql, INSERT_SVED_DOXOD_DATA,
                [gen_extInformation,
                 810,                       //будем надеяться, что в рублях
                 null,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedDoxod.DataDox,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfSvedDoxod.SumDox,
                 notKnow,
                 null
                ]);
              aQuery.Transaction.StartTransaction;
              try
                aQuery.ExecQuery;
                sql.ExecQuery;
                aQuery.Transaction.Commit;
              except
                aQuery.Transaction.Rollback;
              end;
            end;
            93: begin   //08
              SetQuery(sql, INSERT_DEBTOR_STATE_DATA,
                [gen_extInformation,
                 pfDataBlock.pfExtAnswer[ii].pfData[jj].pfDebtorState.State
                ]);
              aQuery.Transaction.StartTransaction;
              try
                aQuery.ExecQuery;
                sql.ExecQuery;
                aQuery.Transaction.Commit;
              except
                aQuery.Transaction.Rollback;
              end;
            end;
          {Case end}
          end;
        {For end. Перебор Data}
        end;
      {For end. Перебор Answer}
      end;
    finally
      strLst.Free;
      sql.Free;
    end;
  end;
  {===============================================чтение данных из xml файла===}
  aXMLDoc.Active := False;
end;


end.
