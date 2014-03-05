unit URIIOrenburg;

interface
uses
  Windows, Variants, Classes, SysUtils, XMLDoc,  xmldom, XMLIntf, msxmldom,
  pFIBErrorHandler, FIB, FIBQuery, pFIBQuery,
  UTypeRII, UXmlRIIDocument, UXmlRIIPFRDoc, UTools;

  procedure writeData2Xml(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure writeData2XmlCurr(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure readXml(FileName: String; aQuery: TpFIBQuery);

  procedure unloadData(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure loadData(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
implementation


procedure unloadData(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
begin
end;

procedure loadData(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
var
  aXmlDoc: IXMLDocument;
  xmlRIIDOCData: UXmlRIIDocument.IXMLDATAType;
  xmlRIIDocDocument: UXmlRIIDocument.IXMLDocumentType;
  xmlRIIDocInformation: UXmlRIIDocument.IXMLExtInformationType;
  aRIIDocData: TRIIDOCData;
  i, j: integer;
  ii, jj: integer;
  gen_extInformation: Int64;
  gen_extInputHeader: Int64;
  gen_document: Int64;
  gen_extIpActs: Int64;
  gen_dxPack: Int64;
begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;
  if FileExists(FileName) then begin
    try
      aXMLDoc.LoadFromFile(FileName);
      xmlRIIDOCData := UXmlRIIDocument.GetDATA(aXmlDoc);
      if xmlRIIDOCData.HasAttribute('agentCode') then aRIIDocData.agentCode := xmlRIIDOCData.AgentCode
      else  begin
        {необходимо прекратить обработку файла. отсутствуют обязательные атрибуты}
      end;
      if xmlRIIDOCData.HasAttribute('agentDeptCode') then aRIIDocData.agentDeptCode := xmlRIIDOCData.AgentDeptCode
      else begin
        {необходимо прекратить обработку файла. отсутствуют обязательные атрибуты}
      end;
      if xmlRIIDOCData.HasAttribute('agentAgreementCode') then aRIIDocData.agentAgreementCode := xmlRIIDOCData.AgentAgreementCode
      else begin
              {необходимо прекратить обработку файла. отсутствуют обязательные атрибуты}
      end;
      if xmlRIIDOCData.HasAttribute('ospNum') then aRIIDocData.ospNum := xmlRIIDOCData.OspNum
      else begin
              {необходимо прекратить обработку файла. отсутствуют обязательные атрибуты}
      end;
      if xmlRIIDOCData.HasAttribute('toNum') then aRIIDocData.toNum := xmlRIIDOCData.ToNum
      else begin
              {необходимо прекратить обработку файла. отсутствуют обязательные атрибуты}
      end;
      if xmlRIIDOCData.HasAttribute('Signed') then aRIIDocData.signed := xmlRIIDOCData.Signed
      else aRIIDocData.signed := '';


      if xmlRIIDOCData.HasChildNodes then begin
        i := 0;
        ii := 0;
        SetLength(aRIIDocData.riiDocDocument, 0);
        while i < xmlRIIDOCData.ChildNodes.Count do begin
          if xmlRIIDOCData.ChildNodes.Nodes[i].NodeName = 'document' then begin
          {проверяем что это тэг document}
            ii := length(aRIIDocData.riiDocDocument) + 1;
            SetLength(aRIIDocData.riiDocDocument, ii);
            xmlRIIDocDocument := xmlRIIDOCData.Document[i];

            if xmlRIIDOCData.HasAttribute('agentDeptName') then begin
              aRIIDocData.riiDocDocument[ii-1].agentDeptName := xmlRIIDocDocument.AgentDeptName;
            end;
            if xmlRIIDOCData.HasAttribute('agentName') then begin
              aRIIDocData.riiDocDocument[ii-1].agentName := xmlRIIDocDocument.AgentName;
            end;
            if xmlRIIDOCData.HasAttribute('agreementName') then begin
              aRIIDocData.riiDocDocument[ii-1].agreementName := xmlRIIDocDocument.AgreementName;
            end;
            if xmlRIIDOCData.HasAttribute('codeArticle') then begin
              aRIIDocData.riiDocDocument[ii-1].codeArticle := xmlRIIDocDocument.CodeArticle;
            end;
            if xmlRIIDOCData.HasAttribute('codePart') then begin
              aRIIDocData.riiDocDocument[ii-1].codePart := xmlRIIDocDocument.CodePart;
            end;
            if xmlRIIDOCData.HasAttribute('codePoint') then begin
              aRIIDocData.riiDocDocument[ii-1].codePoint := xmlRIIDocDocument.CodePoint;
            end;
            if xmlRIIDOCData.HasAttribute('codeSubPoint') then begin
              aRIIDocData.riiDocDocument[ii-1].codeSubPoint := xmlRIIDocDocument.CodeSubPoint;
            end;
            if xmlRIIDOCData.HasAttribute('claimerAddress') then begin
              aRIIDocData.riiDocDocument[ii-1].claimerAddress := xmlRIIDocDocument.ClaimerAddress;
            end;
            if xmlRIIDOCData.HasAttribute('claimerName') then begin
              aRIIDocData.riiDocDocument[ii-1].claimerName := xmlRIIDocDocument.ClaimerName;
            end;
            if xmlRIIDOCData.HasAttribute('claimerType') then begin
              aRIIDocData.riiDocDocument[ii-1].claimerType := xmlRIIDocDocument.ClaimerType;
            end;
            if xmlRIIDOCData.HasAttribute('docCopy') then begin
              aRIIDocData.riiDocDocument[ii-1].docCopy := xmlRIIDocDocument.DocCopy;
            end;
            if xmlRIIDOCData.HasAttribute('docDate') then begin
              aRIIDocData.riiDocDocument[ii-1].docDate := xmlRIIDocDocument.DocDate;
            end;
            if xmlRIIDOCData.HasAttribute('docDateExport') then begin
              aRIIDocData.riiDocDocument[ii-1].docDateExport := xmlRIIDocDocument.DocDateExport;
            end;
            if xmlRIIDOCData.HasAttribute('docId') then begin
              aRIIDocData.riiDocDocument[ii-1].docId := xmlRIIDocDocument.DocId;
            end;
            if xmlRIIDOCData.HasAttribute('docNum') then begin
              aRIIDocData.riiDocDocument[ii-1].docNum := xmlRIIDocDocument.DocNum;
            end;
            if xmlRIIDOCData.HasAttribute('docOutgoingNum') then begin
              aRIIDocData.riiDocDocument[ii-1].docOutgoingNum := xmlRIIDocDocument.DocOutgoingNum;
            end;
            if xmlRIIDOCData.HasAttribute('docRepeat') then begin
              aRIIDocData.riiDocDocument[ii-1].docRepeat := xmlRIIDocDocument.DocRepeat;
            end;
            if xmlRIIDOCData.HasAttribute('docSum') then begin
              aRIIDocData.riiDocDocument[ii-1].docSum := xmlRIIDocDocument.DocSum;
            end;
            if xmlRIIDOCData.HasAttribute('docType') then begin
              aRIIDocData.riiDocDocument[ii-1].docType := xmlRIIDocDocument.DocType;
            end;
            if xmlRIIDOCData.HasAttribute('entityAddr') then begin
              aRIIDocData.riiDocDocument[ii-1].entityAddr := xmlRIIDocDocument.EntityAddr;
            end;
            if xmlRIIDOCData.HasAttribute('entityBirthDate') then begin
              aRIIDocData.riiDocDocument[ii-1].entityBirthDate := xmlRIIDocDocument.EntityBirthDate;
            end;
            if xmlRIIDOCData.HasAttribute('entityBirthPlace') then begin
              aRIIDocData.riiDocDocument[ii-1].entityBirthPlace := xmlRIIDocDocument.EntityBirthPlace;
            end;
            if xmlRIIDOCData.HasAttribute('entityBirthYear') then begin
              aRIIDocData.riiDocDocument[ii-1].entityBirthYear := xmlRIIDocDocument.EntityBirthYear;
            end;
            if xmlRIIDOCData.HasAttribute('entityDocument') then begin
              aRIIDocData.riiDocDocument[ii-1].entityDocument := xmlRIIDocDocument.EntityDocument;
            end;
            if xmlRIIDOCData.HasAttribute('entityFio') then begin
              aRIIDocData.riiDocDocument[ii-1].entityFio := xmlRIIDocDocument.EntityFio;
            end;
            if xmlRIIDOCData.HasAttribute('entityFullName') then begin
              aRIIDocData.riiDocDocument[ii-1].entityFullName := xmlRIIDocDocument.EntityFullName;
            end;
            if xmlRIIDOCData.HasAttribute('entityInn') then begin
              aRIIDocData.riiDocDocument[ii-1].entityInn := xmlRIIDocDocument.EntityInn;
            end;
            if xmlRIIDOCData.HasAttribute('entityKpp') then begin
              aRIIDocData.riiDocDocument[ii-1].entityKpp := xmlRIIDocDocument.EntityKpp;
            end;
            if xmlRIIDOCData.HasAttribute('entityName') then begin
              aRIIDocData.riiDocDocument[ii-1].entityName := xmlRIIDocDocument.EntityName;
            end;
            if xmlRIIDOCData.HasAttribute('entityNoAccount') then begin
              aRIIDocData.riiDocDocument[ii-1].entityNoAccount := xmlRIIDocDocument.EntityNoAccount;
            end;
            if xmlRIIDOCData.HasAttribute('entityNumber') then begin
              aRIIDocData.riiDocDocument[ii-1].entityNumber := xmlRIIDocDocument.EntityNumber;
            end;
            if xmlRIIDOCData.HasAttribute('entityOgrn') then begin
              aRIIDocData.riiDocDocument[ii-1].entityOgrn := xmlRIIDocDocument.EntityOgrn;
            end;
            if xmlRIIDOCData.HasAttribute('entityPatronymic') then begin
              aRIIDocData.riiDocDocument[ii-1].entityPatronymic := xmlRIIDocDocument.EntityPatronymic;
            end;
            if xmlRIIDOCData.HasAttribute('entitySurname') then begin
              aRIIDocData.riiDocDocument[ii-1].entitySurname := xmlRIIDocDocument.EntitySurname;
            end;
            if xmlRIIDOCData.HasAttribute('entityType') then begin
              aRIIDocData.riiDocDocument[ii-1].entityType := xmlRIIDocDocument.EntityType;
            end;
            if xmlRIIDOCData.HasAttribute('entityWorkPl') then begin
              aRIIDocData.riiDocDocument[ii-1].entityWorkPl := xmlRIIDocDocument.EntityWorkPl;
            end;
            if xmlRIIDOCData.HasAttribute('externalKey') then begin
              aRIIDocData.riiDocDocument[ii-1].externalKey := xmlRIIDocDocument.ExternalKey;
            end;
            if xmlRIIDOCData.HasAttribute('idActDate') then begin
              aRIIDocData.riiDocDocument[ii-1].idActDate := xmlRIIDocDocument.IdActDate;
            end;
            if xmlRIIDOCData.HasAttribute('idDate') then begin
              aRIIDocData.riiDocDocument[ii-1].idDate := xmlRIIDocDocument.IdDate;
            end;
            if xmlRIIDOCData.HasAttribute('idDeloDate') then begin
              aRIIDocData.riiDocDocument[ii-1].idDeloDate := xmlRIIDocDocument.IdDeloDate;
            end;
            if xmlRIIDOCData.HasAttribute('idDeloNum') then begin
              aRIIDocData.riiDocDocument[ii-1].idDeloNum := xmlRIIDocDocument.IdDeloNum;
            end;
            if xmlRIIDOCData.HasAttribute('idNum') then begin
              aRIIDocData.riiDocDocument[ii-1].idNum := xmlRIIDocDocument.IdNum;
            end;
            if xmlRIIDOCData.HasAttribute('idPeriod') then begin
              aRIIDocData.riiDocDocument[ii-1].idPeriod := xmlRIIDocDocument.IdPeriod;
            end;
            if xmlRIIDOCData.HasAttribute('idPeriodSum') then begin
              aRIIDocData.riiDocDocument[ii-1].idPeriodSum := xmlRIIDocDocument.IdPeriodSum;
            end;
            if xmlRIIDOCData.HasAttribute('idSdiPFR') then begin
              aRIIDocData.riiDocDocument[ii-1].idSdiPFR := xmlRIIDocDocument.IdSdiPFR;
            end;
            if xmlRIIDOCData.HasAttribute('idSubjName') then begin
              aRIIDocData.riiDocDocument[ii-1].idSubjName := xmlRIIDocDocument.IdSubjName;
            end;
            if xmlRIIDOCData.HasAttribute('idSubjType') then begin
              aRIIDocData.riiDocDocument[ii-1].idSubjType := xmlRIIDocDocument.IdSubjType;
            end;
            if xmlRIIDOCData.HasAttribute('idTypeName') then begin
              aRIIDocData.riiDocDocument[ii-1].idTypeName := xmlRIIDocDocument.IdTypeName;
            end;
            if xmlRIIDOCData.HasAttribute('ipActDateEnd') then begin
              aRIIDocData.riiDocDocument[ii-1].ipActDateEnd := xmlRIIDocDocument.IpActDateEnd;
            end;
            if xmlRIIDOCData.HasAttribute('ipActDateStart') then begin
              aRIIDocData.riiDocDocument[ii-1].ipActDateStart := xmlRIIDocDocument.IpActDateStart;
            end;
            if xmlRIIDOCData.HasAttribute('ipId') then begin
              aRIIDocData.riiDocDocument[ii-1].ipId := xmlRIIDocDocument.IpId;
            end;
            if xmlRIIDOCData.HasAttribute('ipNum') then begin
              aRIIDocData.riiDocDocument[ii-1].ipNum := xmlRIIDocDocument.IpNum;
            end;
            if xmlRIIDOCData.HasAttribute('ipRestDebtSum') then begin
              aRIIDocData.riiDocDocument[ii-1].ipRestDebtSum := xmlRIIDocDocument.IpRestDebtSum;
            end;
            if xmlRIIDOCData.HasAttribute('ipRiseDate') then begin
              aRIIDocData.riiDocDocument[ii-1].ipRiseDate := xmlRIIDocDocument.IpRestDebtSum;
            end;
            if xmlRIIDOCData.HasAttribute('message') then begin
              aRIIDocData.riiDocDocument[ii-1].aMessage := xmlRIIDocDocument.aMessage;
            end;
            if xmlRIIDOCData.HasAttribute('messageCode') then begin
              aRIIDocData.riiDocDocument[ii-1].messageCode := xmlRIIDocDocument.MessageCode;
            end;
            if xmlRIIDOCData.HasAttribute('metaObjectName') then begin
              aRIIDocData.riiDocDocument[ii-1].metaObjectName := xmlRIIDocDocument.MetaObjectName;
            end;
            if xmlRIIDOCData.HasAttribute('msg') then begin
              aRIIDocData.riiDocDocument[ii-1].msg := xmlRIIDocDocument.Msg;
            end;
            if xmlRIIDOCData.HasAttribute('msgCode') then begin
              aRIIDocData.riiDocDocument[ii-1].msgCode := xmlRIIDocDocument.MsgCode;
            end;
            if xmlRIIDOCData.HasAttribute('msgSize') then begin
              aRIIDocData.riiDocDocument[ii-1].msgSize := xmlRIIDocDocument.MsgSize;
            end;
            if xmlRIIDOCData.HasAttribute('msgType') then begin
              aRIIDocData.riiDocDocument[ii-1].msgType := xmlRIIDocDocument.MsgType;
            end;
            if xmlRIIDOCData.HasAttribute('organ') then begin
              aRIIDocData.riiDocDocument[ii-1].organ := xmlRIIDocDocument.Organ;
            end;
            if xmlRIIDOCData.HasAttribute('organAddr') then begin
              aRIIDocData.riiDocDocument[ii-1].organAddr := xmlRIIDocDocument.OrganAddr;
            end;
            if xmlRIIDOCData.HasAttribute('organCode') then begin
              aRIIDocData.riiDocDocument[ii-1].organCode := xmlRIIDocDocument.OrganCode;
            end;
            if xmlRIIDOCData.HasAttribute('organSignFio') then begin
              aRIIDocData.riiDocDocument[ii-1].organSignFio := xmlRIIDocDocument.OrganSignFio;
            end;
            if xmlRIIDOCData.HasAttribute('organSignPost') then begin
              aRIIDocData.riiDocDocument[ii-1].organSignPost := xmlRIIDocDocument.OrganSignPost;
            end;
            if xmlRIIDOCData.HasAttribute('packDate') then begin
              aRIIDocData.riiDocDocument[ii-1].packDate := xmlRIIDocDocument.PackDate;
            end;
            if xmlRIIDOCData.HasAttribute('packId') then begin
              aRIIDocData.riiDocDocument[ii-1].packId := xmlRIIDocDocument.PackId;
            end;
            if xmlRIIDOCData.HasAttribute('packNumber') then begin
              aRIIDocData.riiDocDocument[ii-1].packNumber := xmlRIIDocDocument.PackNumber;
            end;
            if xmlRIIDOCData.HasAttribute('paymentPurpose') then begin
              aRIIDocData.riiDocDocument[ii-1].paymentPurpose := xmlRIIDocDocument.PaymentPurpose;
            end;
            if xmlRIIDOCData.HasAttribute('paymentPAccount') then begin
              aRIIDocData.riiDocDocument[ii-1].paymentPAccount := xmlRIIDocDocument.PaymentPAccount;
            end;
            if xmlRIIDOCData.HasAttribute('paymentPCAccount') then begin
              aRIIDocData.riiDocDocument[ii-1].paymentPCAccount := xmlRIIDocDocument.PaymentPCAccount;
            end;
            if xmlRIIDOCData.HasAttribute('paymentPBankName') then begin
              aRIIDocData.riiDocDocument[ii-1].paymentPBankName := xmlRIIDocDocument.PaymentPBankName;
            end;
            if xmlRIIDOCData.HasAttribute('paymentPBankBic') then begin
              aRIIDocData.riiDocDocument[ii-1].paymentPBankBic := xmlRIIDocDocument.PaymentPBankBic;
            end;
            if xmlRIIDOCData.HasAttribute('paymentPenaltyDate') then begin
              aRIIDocData.riiDocDocument[ii-1].paymentPenaltyDate := xmlRIIDocDocument.PaymentPenaltyDate;
            end;
            if xmlRIIDOCData.HasAttribute('sourceBarcode') then begin
              aRIIDocData.riiDocDocument[ii-1].sourceBarcode := xmlRIIDocDocument.SourceBarcode;
            end;
            if xmlRIIDOCData.HasAttribute('spiId') then begin
              aRIIDocData.riiDocDocument[ii-1].spiId := xmlRIIDocDocument.SpiId;
            end;
            if xmlRIIDOCData.HasAttribute('spiFio') then begin
              aRIIDocData.riiDocDocument[ii-1].spiFio := xmlRIIDocDocument.SpiFio;
            end;
            if xmlRIIDOCData.HasAttribute('spiPhone') then begin
              aRIIDocData.riiDocDocument[ii-1].spiPhone := xmlRIIDocDocument.SpiPhone;
            end;
            if xmlRIIDOCData.HasAttribute('spiTypeCode') then begin
              aRIIDocData.riiDocDocument[ii-1].spiTypeCode := xmlRIIDocDocument.SpiTypeCode;
            end;
            if xmlRIIDocDocument.HasChildNodes then begin
              SetLength(aRIIDocData.riiDocDocument[ii-1].riiDocInformation, 0);
              j := 0;
              while j < xmlRIIDocDocument.ChildNodes.Count do begin
                jj := length(aRIIDocData.riiDocDocument[ii-1].riiDocInformation) + 1;
                SetLength(aRIIDocData.riiDocDocument[ii-1].riiDocInformation, jj);
                xmlRIIDocInformation := xmlRIIDocDocument.ExtInformation[j];

                if xmlRIIDocInformation.HasAttribute('accNum') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].accNum := xmlRIIDocInformation.AccNum;
                end;
                if xmlRIIDocInformation.HasAttribute('actDate') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].actDate := xmlRIIDocInformation.ActDate;
                end;
                if xmlRIIDocInformation.HasAttribute('address') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].address := xmlRIIDocInformation.Address;
                end;
                if xmlRIIDocInformation.HasAttribute('bankName') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].bankName := xmlRIIDocInformation.BankName;
                end;
                if xmlRIIDocInformation.HasAttribute('bicBank') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].bicBank := xmlRIIDocInformation.BicBank;
                end;
                if xmlRIIDocInformation.HasAttribute('currencyCode') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].currencyCode := xmlRIIDocInformation.CurrencyCode;
                end;
                if xmlRIIDocInformation.HasAttribute('dataSum') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].dataSum := xmlRIIDocInformation.DataSum;
                end;
                if xmlRIIDocInformation.HasAttribute('date') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].date := xmlRIIDocInformation.Date;
                end;
                if xmlRIIDocInformation.HasAttribute('deptCode') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].deptCode := xmlRIIDocInformation.DeptCode;
                end;
                if xmlRIIDocInformation.HasAttribute('extKey') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].extKey := xmlRIIDocInformation.ExtKey;
                end;
                if xmlRIIDocInformation.HasAttribute('floor') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].floor := xmlRIIDocInformation.Floor;
                end;
                if xmlRIIDocInformation.HasAttribute('floorNum') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].floorNum := xmlRIIDocInformation.FloorNum;
                end;
                if xmlRIIDocInformation.HasAttribute('inn') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].inn := xmlRIIDocInformation.Inn;
                end;
                if xmlRIIDocInformation.HasAttribute('invNum') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].invNum := xmlRIIDocInformation.InvNum;
                end;
                if xmlRIIDocInformation.HasAttribute('legalAddr') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].legalAddr := xmlRIIDocInformation.LegalAddr;
                end;
                if xmlRIIDocInformation.HasAttribute('letter') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].letter := xmlRIIDocInformation.Letter;
                end;
                if xmlRIIDocInformation.HasAttribute('kindDataType') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].kindDataType := xmlRIIDocInformation.KindDataType;
                end;
                if xmlRIIDocInformation.HasAttribute('kpp') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].kpp := xmlRIIDocInformation.Kpp;
                end;
                if xmlRIIDocInformation.HasAttribute('metaObjectName') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].metaObjectName := xmlRIIDocInformation.MetaObjectName;
                end;
                if xmlRIIDocInformation.HasAttribute('name') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].name := xmlRIIDocInformation.Name;
                end;
                if xmlRIIDocInformation.HasAttribute('num') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].num := xmlRIIDocInformation.Num;
                end;
                if xmlRIIDocInformation.HasAttribute('orgName') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].orgName := xmlRIIDocInformation.OrgName;
                end;
                if xmlRIIDocInformation.HasAttribute('phoneNum') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].phoneNum := xmlRIIDocInformation.PhoneNum;
                end;
                if xmlRIIDocInformation.HasAttribute('sum') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].sum := xmlRIIDocInformation.Sum;
                end;
                if xmlRIIDocInformation.HasAttribute('transportColor') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].transportColor := xmlRIIDocInformation.TransportColor;
                end;
                if xmlRIIDocInformation.HasAttribute('transportEngine') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].transportEngine := xmlRIIDocInformation.TransportEngine;
                end;
                if xmlRIIDocInformation.HasAttribute('transportModel') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].transportModel := xmlRIIDocInformation.TransportModel;
                end;
                if xmlRIIDocInformation.HasAttribute('transportVin') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].transportVin := xmlRIIDocInformation.TransportVin;
                end;
                if xmlRIIDocInformation.HasAttribute('typeData') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].typeData := xmlRIIDocInformation.TypeData;
                end;
                if xmlRIIDocInformation.HasAttribute('ser') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].ser := xmlRIIDocInformation.Ser;
                end;
                if xmlRIIDocInformation.HasAttribute('square') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].square := xmlRIIDocInformation.Square;
                end;
                if xmlRIIDocInformation.HasAttribute('status') then begin
                  aRIIDocData.riiDocDocument[ii-1].riiDocInformation[jj-1].status := xmlRIIDocInformation.Status;
                end;

                inc(j);
              end;
            end;
          {IF end}
          end;
          inc(i);
        end;
      {IF haschild end}
      end;
      {=========================загрузка данных в бд===========================}
      {получение номера пакета}
      gen_dxPack := getGen(aQuery, 'select gen_id(DX_PACK, 1) from rdb$database');
      {получение EXT_INPUT_HEADER.ID, он же EXT_RESPONSE.ID}
      gen_extInputHeader := getGen(aQuery, 'select gen_id(SEQ_EXT_INPUT_HEADER, 1) from rdb$database');
      {получение EXT_INPUT_HEADER.EXTERNAL_KEY = EXT_INFORMATION.DOCUMENT_KEY}
      gen_document := getGen(aQuery, 'select gen_id(SEQ_DOCUMENT, 1) from rdb$database');
      {========================================================================}
    finally
      aXmlDoc.Active := False;
    end;
  end;
end;

procedure writeData2Xml(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
{ формат взаимодействия - orenburg.fssp}
var
  aXMLDoc : IXMLDocument;
  iNode: IXMLNode;
  iNode2: IXMLNode;
  IsEmptyDoc: boolean;
  strLst: TStringList;
begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;
  if FileExists(FileName) then begin
    IsEmptyDoc := False;
    try
      aXMLDoc.LoadFromFile(FileName);
      IsEmptyDoc := False;
    except
      IsEmptyDoc := True;
    end
  end
  else IsEmptyDoc := True;

  if not(FileExists(FileName)) or IsEmptyDoc then begin
    aXMLDoc.Version:='1.0';
    aXMLDoc.Encoding := arrProfile[indexAgent].coding;
    aXMLDoc.Options:=aXMLDoc.Options+[doNodeAutoIndent];
    aXMLDoc.DocumentElement:=aXMLDoc.AddChild('DATA');
    {отдельные блоки для таблиц с разными полями}
    case iTableName of
      EXT_REQUEST, EXT_IP_ACTS: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.FldByName['mvv_agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.FldByName['mvv_agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.FldByName['mvv_agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.FldByName['osp_number'].AsString;
        aXMLDoc.DocumentElement.Attributes['Signed'] := aQuery.FldByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_RESTRICTION: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.FldByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.FldByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.FldByName['agent_agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.FldByName['osp_number'].AsString;
        aXMLDoc.DocumentElement.Attributes['Signed'] := aQuery.FldByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_EXT_DOCUMENT_NOTE: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.FldByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.FldByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.FldByName['agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.FldByName['???'].AsString;
        aXMLDoc.DocumentElement.Attributes['Signed'] := aQuery.FldByName['???'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
    end;
  end;
  Case iTableName of
    EXT_ACCOUNTING_DATA: begin
    end;
    EXT_ADDRESS_DATA: begin
    end;
    EXT_AVAILABILITY_ACC_DATA: begin
    end;
    EXT_AVAILABILITY_ACC_DEPO_DATA: begin
    end;
    EXT_DEBTOR_REGISTRY: begin
    end;
    EXT_DEBTOR_STATE_DATA: begin
    end;
    EXT_DEBT_FIX: begin
    end;
    EXT_EXT_DOCUMENT_NOTE: begin
      //квитанция о доставке документа
      iNode := aXMLDoc.DocumentElement.AddChild('document');
      iNode.Attributes['metaObjectName'] := 'EXT_EXT_DOCUMENT_NOTE';
      iNode.Attributes['packDate'] := aQuery.FldByName['pack_date'].AsString;
      iNode.Attributes['packId'] := aQuery.FldByName['pack_id'].AsString;
      iNode.Attributes['packNumber'] := aQuery.FldByName['pack_number'].AsString;
      iNode.Attributes['agentName'] := aQuery.FldByName['agent'].AsString;
      iNode.Attributes['agentDeptName'] := aQuery.FldByName['agent_dept'].AsString;
      iNode.Attributes['AgreementName'] := aQuery.FldByName['agreement'].AsString;
      iNode.Attributes['docDate'] := aQuery.FldByName['i_doc_date'].AsString;
      iNode.Attributes['docId'] := aQuery.FldByName['req_id'].AsString;
      iNode.Attributes['docNum'] := aQuery.FldByName['i_doc_number'].AsString;
      iNode.Attributes['docSum'] := aQuery.FldByName['i_doc_sum'].AsString;
      iNode.Attributes['docType'] := aQuery.FldByName['req_metaobjectname'].AsString;
      iNode.Attributes['externalKey'] := aQuery.FldByName['doc_external_key'].AsString;
      iNode.Attributes['idActDate'] := aQuery.FldByName[''].AsString;
      iNode.Attributes['idDate'] := aQuery.FldByName['id_date'].AsString;
      iNode.Attributes['idNum'] := aQuery.FldByName['id_number'].AsString;
      iNode.Attributes['idSubjName'] := aQuery.FldByName[''].AsString;
      iNode.Attributes['idSubjType'] := aQuery.FldByName['id_subject_type'].AsString;
      iNode.Attributes['idTypeName'] := aQuery.FldByName['id_type_name'].AsString;
      iNode.Attributes['ipId'] := aQuery.FldByName['ip_id'].AsString;
      iNode.Attributes['ipNum'] := aQuery.FldByName['ip_num'].AsString;
      iNode.Attributes['message'] := aQuery.FldByName['error_message'].AsString;
      iNode.Attributes['messageCode'] := aQuery.FldByName['error_code'].AsString;
      iNode.Attributes['msg'] := aQuery.FldByName['i_doc_meta_name'].AsString;
    end;
    EXT_ID: begin
    end;
    EXT_IDENTIFICATION_DATA: begin
    end;
    EXT_IP_ACTS: begin
      iNode := aXMLDoc.DocumentElement.AddChild('document');
      iNode.Attributes['metaObjectName'] := 'EXT_IP_ACTS';
      iNode.Attributes['packDate'] := aQuery.FldByName['pack_date'].AsString;
      iNode.Attributes['packId'] := aQuery.FldByName['pack_id'].AsString;
      iNode.Attributes['packNumber'] := aQuery.FldByName['pack_number'].AsString;
      iNode.Attributes['docDate'] := aQuery.FldByName['act_date'].AsString;
      iNode.Attributes['docDateExport'] := aQuery.FldByName['date_export'].AsString;
      iNode.Attributes['docId'] := aQuery.FldByName['ext_ip_acts_id'].AsString;
      iNode.Attributes['docNum'] := aQuery.FldByName['act_number'].AsString;
      iNode.Attributes['docSum'] := aQuery.FldByName['ip_sum'].AsString;
      iNode.Attributes['docType'] := aQuery.FldByName['act_type'].AsString;
      iNode.Attributes['entityFullName'] := aQuery.FldByName['debtor_name'].AsString;
      iNode.Attributes['entityAddr'] := aQuery.FldByName['debtor_address'].AsString;
      iNode.Attributes['entityBirthDate'] := aQuery.FldByName['debtor_birthdate'].AsString;
      iNode.Attributes['entityBirthPlace'] := aQuery.FldByName['debtor_birthplace'].AsString;
      iNode.Attributes['entityDocument'] := aQuery.FldByName['debtor_document'].AsString;
      iNode.Attributes['entityInn'] := aQuery.FldByName['debtor_inn'].AsString;
      iNode.Attributes['entityKpp'] := aQuery.FldByName['debtor_kpp'].AsString;
      iNode.Attributes['entityOgrn'] := aQuery.FldByName['debtor_orgn'].AsString;
      iNode.Attributes['codeArticle'] := aQuery.FldByName['article'].AsString;
      iNode.Attributes['codePoint'] := aQuery.FldByName['point'].AsString;
      iNode.Attributes['codeSubPoint'] := aQuery.FldByName['subpoint'].AsString;
      iNode.Attributes['idDate'] := aQuery.FldByName['id_date'].AsString;
      iNode.Attributes['idNum'] := aQuery.FldByName['id_no'].AsString;
      iNode.Attributes['ipActDateEnd'] := aQuery.FldByName['dt_end'].AsString;
      iNode.Attributes['ipActDateStart'] := aQuery.FldByName['dt_start'].AsString;
      iNode.Attributes['ipNum'] := aQuery.FldByName['ip_num'].AsString;
      iNode.Attributes['message'] := aQuery.FldByName['act_reason'].AsString;
      iNode.Attributes['spiFio'] := aQuery.FldByName['fio_spi'].AsString;
      iNode.Attributes['externalKey'] := aQuery.FldByName['id_external_key'].AsString;
    end;
    EXT_KKT_DATA: begin
    end;
    EXT_MANAGEMENT_DATA: begin
      iNode := aXMLDoc.DocumentElement.AddChild('rrr');
      iNode.Attributes['manager_type'] := '01';
    end;
    EXT_OBJECT_DATA: begin
    end;
    EXT_PPA: begin
    end;
    EXT_RECEIPT: begin
    end;
    EXT_REPORT: begin
    end;
    EXT_REQUEST: begin
      strLst := TStringList.Create;
      //Выгрузка запроса в xml файл
      while not aQuery.Eof do begin
        iNode := aXMLDoc.DocumentElement.AddChild('document');
        iNode2 := iNode.AddChild('EXT_DATA');
        iNode.Attributes['metaObjectName'] := 'EXT_REQUEST';
        iNode.Attributes['packDate'] := aQuery.FldByName['pack_date'].AsString;
        iNode.Attributes['packId'] := aQuery.FldByName['pack_id'].AsString;
        iNode.Attributes['packNumber'] := aQuery.FldByName['pack_number'].AsString;
        iNode.Attributes['docDate'] := aQuery.FldByName['req_date'].AsString;
        iNode.Attributes['docId'] := aQuery.FldByName['req_id'].AsString;
        iNode.Attributes['docNum'] := aQuery.FldByName['req_number'].AsString;
        iNode.Attributes['docOutgoingNum'] := aQuery.FldByName['req_outgoing_number'].AsString;
        iNode.Attributes['docType'] := aQuery.FldByName['req_metaobjectname'].AsString;
        iNode.Attributes['entityFullName'] := aQuery.FldByName['debtor_name'].AsString;
        iNode.Attributes['entityAddr'] := aQuery.FldByName['debtor_address'].AsString;
        iNode.Attributes['entityBirthDate'] := aQuery.FldByName['debtor_birthdate'].AsString;
        iNode.Attributes['entityBirthPlace'] := aQuery.FldByName['debtor_birthplace'].AsString;
        iNode.Attributes['entityDocument'] := aQuery.FldByName['debtor_document'].AsString;
        iNode.Attributes['entityType'] := aQuery.FldByName['entity_type'].AsString;
        //разбор ФИО для физ. и ИП------------------------------------------
        if aQuery.FldByName['entity_type'].AsInteger in [2,95] then begin
          iNode.Attributes['entityFio'] := aQuery.FldByName['debtor_name'].AsString;
          strLst.Clear;
          ExtractStrings([' '],[' '], PAnsiChar(aQuery.FldByName['debtor_name'].AsString), strLst);
          case strLst.Count of
            2: begin
              iNode.Attributes['entitySurname'] := strLst[0];
              iNode.Attributes['entityName'] := strLst[1];
            end;
            3: begin
              iNode.Attributes['entitySurname'] := strLst[0];
              iNode.Attributes['entityName'] := strLst[1];
              iNode.Attributes['entityPatronymic'] := strLst[2];
            end;
          end;
        end;
        //------------------------------------------------------------------
        iNode.Attributes['entityInn'] := aQuery.FldByName['debtor_inn'].AsString;
        iNode.Attributes['entityKpp'] := aQuery.FldByName['debtor_kpp'].AsString;
        iNode.Attributes['entityOgrn'] := aQuery.FldByName['debtor_orgn'].AsString;
        iNode.Attributes['idDate'] := aQuery.FldByName['id_date'].AsString;
        iNode.Attributes['idNum'] := aQuery.FldByName['id_number'].AsString;
        iNode.Attributes['idSubjType'] := aQuery.FldByName['id_subject_type'].AsString;
        iNode.Attributes['idTypeName'] := aQuery.FldByName['id_type_name'].AsString;
        iNode.Attributes['ipId'] := aQuery.FldByName['ip_id'].AsString;
        iNode.Attributes['ipNum'] := aQuery.FldByName['ip_num'].AsString;
        iNode.Attributes['ipRiseDate'] := aQuery.FldByName['ip_risedate'].AsString;
        iNode.Attributes['docSum'] := aQuery.FldByName['ip_sum'].AsString;
        iNode.Attributes['ipRestDebtSum'] := aQuery.FldByName['ip_rest_debtsum'].AsString;
        iNode.Attributes['spiId'] := aQuery.FldByName['spi_id'].AsString;
        iNode.Attributes['spiFio'] := aQuery.FldByName['fio_spi'].AsString;
        iNode2.Attributes['ky-ky'] := 'Ky-ky!';
        aQuery.Next;
      end;
      strLst.Free;
    end;
    EXT_RESPONSE: begin
    end;
    EXT_RESTRICTION: begin
      iNode := aXMLDoc.DocumentElement.AddChild('document');
      iNode.Attributes['metaObjectName'] := 'EXT_RESTRICTION';
      iNode.Attributes['packDate'] := aQuery.FldByName['pack_date'].AsString;
      iNode.Attributes['packId'] := aQuery.FldByName['pack_id'].AsString;
      iNode.Attributes['packNumber'] := aQuery.FldByName['pack_number'].AsString;
      iNode.Attributes['codeArticle'] := aQuery.FldByName['article'].AsString;
      iNode.Attributes['codePart'] := aQuery.FldByName['part'].AsString;
      iNode.Attributes['docDate'] := aQuery.FldByName['doc_date'].AsString;
      iNode.Attributes['docDateExport'] := aQuery.FldByName[''].AsString;
      iNode.Attributes['docId'] := aQuery.FldByName['act_id'].AsString;
      iNode.Attributes['docNum'] := aQuery.FldByName['doc_number'].AsString;
      iNode.Attributes['docSum'] := aQuery.FldByName['ip_sum'].AsString;
      iNode.Attributes['docType'] := aQuery.FldByName['doc_code'].AsString;
      iNode.Attributes['entityFullName'] := aQuery.FldByName['debtor_name'].AsString;
      iNode.Attributes['entityAddr'] := aQuery.FldByName['debtor_adr'].AsString;
      iNode.Attributes['entityBirthDate'] := aQuery.FldByName['debtor_birth_date'].AsString;
      iNode.Attributes['entityBirthPlace'] := aQuery.FldByName['debtor_birth_place'].AsString;
      iNode.Attributes['entityInn'] := aQuery.FldByName['debtor_inn'].AsString;
      iNode.Attributes['claimerName'] := aQuery.FldByName['id_crdr_name'].AsString;
      iNode.Attributes['claimerAddress'] := aQuery.FldByName['id_crdr_adr'].AsString;
      iNode.Attributes['idDate'] := aQuery.FldByName['id_date'].AsString;
      iNode.Attributes['idNum'] := aQuery.FldByName['id_number'].AsString;
      iNode.Attributes['ipId'] := aQuery.FldByName['ip_id'].AsString;
      iNode.Attributes['ipNum'] := aQuery.FldByName['ip_number'].AsString;
      iNode.Attributes['ipRestDebtSum'] := aQuery.FldByName['ip_rest_debtsum'].AsString;
      iNode.Attributes['ipRiseDate'] := aQuery.FldByName['ip_risedate'].AsString;
      iNode.Attributes['spiId'] := aQuery.FldByName['spi_id'].AsString;
      iNode.Attributes['spiFio'] := aQuery.FldByName['spi_fio'].AsString;
      iNode.Attributes['spiPhone'] := aQuery.FldByName['spi_phone'].AsString;
      iNode.Attributes['spiTypeCode'] := aQuery.FldByName['spi_type_code'].AsString;
    end;
    EXT_SVED_DOXOD_DATA: begin
    end;
    EXT_SVED_NEDV_DATA: begin
    end;
    EXT_SVED_RAB_DATA: begin
    end;
    EXT_TELEPHONE_DATA: begin
    end;
    EXT_TRANSPORT_DATA: begin
    end;
  end;
  aXMLDoc.SaveToFile(FileName);
  aXMLDoc.Active := False;
end;

procedure writeData2XmlCurr(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
{ формат взаимодействия - orenburg.fssp}
var
  aXMLDoc : IXMLDocument;
  iNode: IXMLNode;
  iNode2: IXMLNode;
  IsEmptyDoc: boolean;
  strLst: TStringList;

begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;

  if FileExists(FileName) then begin
    IsEmptyDoc := False;
    try
      aXMLDoc.LoadFromFile(FileName);
      IsEmptyDoc := False;
    except
      IsEmptyDoc := True;
    end
  end
  else IsEmptyDoc := True;

  if not(FileExists(FileName)) or IsEmptyDoc then begin
    aXMLDoc.Version:='1.0';
    aXMLDoc.Encoding := arrProfile[indexAgent].coding;
    aXMLDoc.Options:=aXMLDoc.Options+[doNodeAutoIndent];
    aXMLDoc.DocumentElement:=aXMLDoc.AddChild('DATA');
    {отдельные блоки для таблиц с разными полями}
    case iTableName of
      EXT_REQUEST, EXT_IP_ACTS: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.ByName['mvv_agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.ByName['mvv_agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.ByName['mvv_agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.ByName['osp_number'].AsString;
        aXMLDoc.DocumentElement.Attributes['Signed'] := aQuery.ByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_RESTRICTION: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.ByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.ByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.ByName['agent_agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.ByName['osp_number'].AsString;
        aXMLDoc.DocumentElement.Attributes['Signed'] := aQuery.ByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_EXT_DOCUMENT_NOTE: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.ByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.ByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.ByName['agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.ByName['???'].AsString;
        aXMLDoc.DocumentElement.Attributes['Signed'] := aQuery.ByName['???'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
    end;
  end;
  Case iTableName of
    EXT_ACCOUNTING_DATA: begin
    end;
    EXT_ADDRESS_DATA: begin
    end;
    EXT_AVAILABILITY_ACC_DATA: begin
    end;
    EXT_AVAILABILITY_ACC_DEPO_DATA: begin
    end;
    EXT_DEBTOR_REGISTRY: begin
    end;
    EXT_DEBTOR_STATE_DATA: begin
    end;
    EXT_DEBT_FIX: begin
    end;
    EXT_EXT_DOCUMENT_NOTE: begin
      //квитанция о доставке документа
      iNode := aXMLDoc.DocumentElement.AddChild('document');
      iNode.Attributes['metaObjectName'] := 'EXT_EXT_DOCUMENT_NOTE';
      iNode.Attributes['packDate'] := aQuery.ByName['pack_date'].AsString;
      iNode.Attributes['packId'] := aQuery.ByName['pack_id'].AsString;
      iNode.Attributes['packNumber'] := aQuery.ByName['pack_number'].AsString;
      iNode.Attributes['agentName'] := aQuery.ByName['agent'].AsString;
      iNode.Attributes['agentDeptName'] := aQuery.ByName['agent_dept'].AsString;
      iNode.Attributes['AgreementName'] := aQuery.ByName['agreement'].AsString;
      iNode.Attributes['docDate'] := aQuery.ByName['i_doc_date'].AsString;
      iNode.Attributes['docId'] := aQuery.ByName['req_id'].AsString;
      iNode.Attributes['docNum'] := aQuery.ByName['i_doc_number'].AsString;
      iNode.Attributes['docSum'] := aQuery.ByName['i_doc_sum'].AsString;
      iNode.Attributes['docType'] := aQuery.ByName['req_metaobjectname'].AsString;
      iNode.Attributes['externalKey'] := aQuery.ByName['doc_external_key'].AsString;
      iNode.Attributes['idActDate'] := aQuery.ByName[''].AsString;
      iNode.Attributes['idDate'] := aQuery.ByName['id_date'].AsString;
      iNode.Attributes['idNum'] := aQuery.ByName['id_number'].AsString;
      iNode.Attributes['idSubjName'] := aQuery.ByName[''].AsString;
      iNode.Attributes['idSubjType'] := aQuery.ByName['id_subject_type'].AsString;
      iNode.Attributes['idTypeName'] := aQuery.ByName['id_type_name'].AsString;
      iNode.Attributes['ipId'] := aQuery.ByName['ip_id'].AsString;
      iNode.Attributes['ipNum'] := aQuery.ByName['ip_num'].AsString;
      iNode.Attributes['message'] := aQuery.ByName['error_message'].AsString;
      iNode.Attributes['messageCode'] := aQuery.ByName['error_code'].AsString;
      iNode.Attributes['msg'] := aQuery.ByName['i_doc_meta_name'].AsString;
    end;
    EXT_ID: begin
    end;
    EXT_IDENTIFICATION_DATA: begin
    end;
    EXT_IP_ACTS: begin
      iNode := aXMLDoc.DocumentElement.AddChild('document');
      iNode.Attributes['metaObjectName'] := 'EXT_IP_ACTS';
      iNode.Attributes['packDate'] := aQuery.ByName['pack_date'].AsString;
      iNode.Attributes['packId'] := aQuery.ByName['pack_id'].AsString;
      iNode.Attributes['packNumber'] := aQuery.ByName['pack_number'].AsString;
      iNode.Attributes['docDate'] := aQuery.ByName['act_date'].AsString;
      iNode.Attributes['docDateExport'] := aQuery.ByName['date_export'].AsString;
      iNode.Attributes['docId'] := aQuery.ByName['ext_ip_acts_id'].AsString;
      iNode.Attributes['docNum'] := aQuery.ByName['act_number'].AsString;
      iNode.Attributes['docSum'] := aQuery.ByName['ip_sum'].AsString;
      iNode.Attributes['docType'] := aQuery.ByName['act_type'].AsString;
      iNode.Attributes['entityFullName'] := aQuery.ByName['debtor_name'].AsString;
      iNode.Attributes['entityAddr'] := aQuery.ByName['debtor_address'].AsString;
      iNode.Attributes['entityBirthDate'] := aQuery.ByName['debtor_birthdate'].AsString;
      iNode.Attributes['entityBirthPlace'] := aQuery.ByName['debtor_birthplace'].AsString;
      iNode.Attributes['entityDocument'] := aQuery.ByName['debtor_document'].AsString;
      iNode.Attributes['entityInn'] := aQuery.ByName['debtor_inn'].AsString;
      iNode.Attributes['entityKpp'] := aQuery.ByName['debtor_kpp'].AsString;
      iNode.Attributes['entityOgrn'] := aQuery.ByName['debtor_orgn'].AsString;
      iNode.Attributes['codeArticle'] := aQuery.ByName['article'].AsString;
      iNode.Attributes['codePoint'] := aQuery.ByName['point'].AsString;
      iNode.Attributes['codeSubPoint'] := aQuery.ByName['subpoint'].AsString;
      iNode.Attributes['idDate'] := aQuery.ByName['id_date'].AsString;
      iNode.Attributes['idNum'] := aQuery.ByName['id_no'].AsString;
      iNode.Attributes['ipActDateEnd'] := aQuery.ByName['dt_end'].AsString;
      iNode.Attributes['ipActDateStart'] := aQuery.ByName['dt_start'].AsString;
      iNode.Attributes['ipNum'] := aQuery.ByName['ip_num'].AsString;
      iNode.Attributes['message'] := aQuery.ByName['act_reason'].AsString;
      iNode.Attributes['spiFio'] := aQuery.ByName['fio_spi'].AsString;
      iNode.Attributes['externalKey'] := aQuery.ByName['id_external_key'].AsString;
    end;
    EXT_KKT_DATA: begin
    end;
    EXT_MANAGEMENT_DATA: begin

    end;
    EXT_OBJECT_DATA: begin
    end;
    EXT_PPA: begin
    end;
    EXT_RECEIPT: begin
    end;
    EXT_REPORT: begin
    end;
    EXT_REQUEST: begin
      strLst := TStringList.Create;
      //Выгрузка запроса в xml файл
        iNode := aXMLDoc.DocumentElement.AddChild('document');
        iNode.Attributes['metaObjectName'] := 'EXT_REQUEST';
        iNode.Attributes['packDate'] := aQuery.ByName['pack_date'].AsString;
        iNode.Attributes['packId'] := aQuery.ByName['pack_id'].AsString;
        iNode.Attributes['packNumber'] := aQuery.ByName['pack_number'].AsString;
        iNode.Attributes['docDate'] := aQuery.ByName['req_date'].AsString;
        iNode.Attributes['docId'] := aQuery.ByName['req_id'].AsString;
        iNode.Attributes['docNum'] := aQuery.ByName['req_number'].AsString;
        iNode.Attributes['docOutgoingNum'] := aQuery.ByName['req_outgoing_number'].AsString;
        iNode.Attributes['docType'] := aQuery.ByName['req_metaobjectname'].AsString;
        iNode.Attributes['entityFullName'] := aQuery.ByName['debtor_name'].AsString;
        iNode.Attributes['entityAddr'] := aQuery.ByName['debtor_address'].AsString;
        iNode.Attributes['entityBirthDate'] := aQuery.ByName['debtor_birthdate'].AsString;
        iNode.Attributes['entityBirthPlace'] := aQuery.ByName['debtor_birthplace'].AsString;
        iNode.Attributes['entityDocument'] := aQuery.ByName['debtor_document'].AsString;
        iNode.Attributes['entityType'] := aQuery.ByName['entity_type'].AsString;
        //разбор ФИО для физ. и ИП------------------------------------------
        if aQuery.ByName['entity_type'].AsInteger in [2,95] then begin
          iNode.Attributes['entityFio'] := aQuery.ByName['debtor_name'].AsString;
          strLst.Clear;
          ExtractStrings([' '],[' '], PAnsiChar(aQuery.ByName['debtor_name'].AsString), strLst);
          case strLst.Count of
            2: begin
              iNode.Attributes['entitySurname'] := strLst[0];
              iNode.Attributes['entityName'] := strLst[1];
            end;
            3: begin
              iNode.Attributes['entitySurname'] := strLst[0];
              iNode.Attributes['entityName'] := strLst[1];
              iNode.Attributes['entityPatronymic'] := strLst[2];
            end;
          end;
        end;
        //------------------------------------------------------------------
        iNode.Attributes['entityInn'] := aQuery.ByName['debtor_inn'].AsString;
        iNode.Attributes['entityKpp'] := aQuery.ByName['debtor_kpp'].AsString;
        iNode.Attributes['entityOgrn'] := aQuery.ByName['debtor_orgn'].AsString;
        iNode.Attributes['idDate'] := aQuery.ByName['id_date'].AsString;
        iNode.Attributes['idNum'] := aQuery.ByName['id_number'].AsString;
        iNode.Attributes['idSubjType'] := aQuery.ByName['id_subject_type'].AsString;
        iNode.Attributes['idTypeName'] := aQuery.ByName['id_type_name'].AsString;
        iNode.Attributes['ipId'] := aQuery.ByName['ip_id'].AsString;
        iNode.Attributes['ipNum'] := aQuery.ByName['ip_num'].AsString;
        iNode.Attributes['ipRiseDate'] := aQuery.ByName['ip_risedate'].AsString;
        iNode.Attributes['docSum'] := aQuery.ByName['ip_sum'].AsString;
        iNode.Attributes['ipRestDebtSum'] := aQuery.ByName['ip_rest_debtsum'].AsString;
        iNode.Attributes['spiId'] := aQuery.ByName['spi_id'].AsString;
        iNode.Attributes['spiFio'] := aQuery.ByName['fio_spi'].AsString;
      strLst.Free;
    end;
    EXT_RESPONSE: begin
    end;
    EXT_RESTRICTION: begin
      iNode := aXMLDoc.DocumentElement.AddChild('document');
      iNode.Attributes['metaObjectName'] := 'EXT_RESTRICTION';
      iNode.Attributes['packDate'] := aQuery.ByName['pack_date'].AsString;
      iNode.Attributes['packId'] := aQuery.ByName['pack_id'].AsString;
      iNode.Attributes['packNumber'] := aQuery.ByName['pack_number'].AsString;
      iNode.Attributes['codeArticle'] := aQuery.ByName['article'].AsString;
      iNode.Attributes['codePart'] := aQuery.ByName['part'].AsString;
      iNode.Attributes['docDate'] := aQuery.ByName['doc_date'].AsString;
      iNode.Attributes['docDateExport'] := aQuery.ByName[''].AsString;
      iNode.Attributes['docId'] := aQuery.ByName['act_id'].AsString;
      iNode.Attributes['docNum'] := aQuery.ByName['doc_number'].AsString;
      iNode.Attributes['docSum'] := aQuery.ByName['ip_sum'].AsString;
      iNode.Attributes['docType'] := aQuery.ByName['doc_code'].AsString;
      iNode.Attributes['entityFullName'] := aQuery.ByName['debtor_name'].AsString;
      iNode.Attributes['entityAddr'] := aQuery.ByName['debtor_adr'].AsString;
      iNode.Attributes['entityBirthDate'] := aQuery.ByName['debtor_birth_date'].AsString;
      iNode.Attributes['entityBirthPlace'] := aQuery.ByName['debtor_birth_place'].AsString;
      iNode.Attributes['entityInn'] := aQuery.ByName['debtor_inn'].AsString;
      iNode.Attributes['claimerName'] := aQuery.ByName['id_crdr_name'].AsString;
      iNode.Attributes['claimerAddress'] := aQuery.ByName['id_crdr_adr'].AsString;
      iNode.Attributes['idDate'] := aQuery.ByName['id_date'].AsString;
      iNode.Attributes['idNum'] := aQuery.ByName['id_number'].AsString;
      iNode.Attributes['ipId'] := aQuery.ByName['ip_id'].AsString;
      iNode.Attributes['ipNum'] := aQuery.ByName['ip_number'].AsString;
      iNode.Attributes['ipRestDebtSum'] := aQuery.ByName['ip_rest_debtsum'].AsString;
      iNode.Attributes['ipRiseDate'] := aQuery.ByName['ip_risedate'].AsString;
      iNode.Attributes['spiId'] := aQuery.ByName['spi_id'].AsString;
      iNode.Attributes['spiFio'] := aQuery.ByName['spi_fio'].AsString;
      iNode.Attributes['spiPhone'] := aQuery.ByName['spi_phone'].AsString;
      iNode.Attributes['spiTypeCode'] := aQuery.ByName['spi_type_code'].AsString;
    end;
    EXT_SVED_DOXOD_DATA: begin
    end;
    EXT_SVED_NEDV_DATA: begin
    end;
    EXT_SVED_RAB_DATA: begin
    end;
    EXT_TELEPHONE_DATA: begin
    end;
    EXT_TRANSPORT_DATA: begin
    end;
  end;
  aXMLDoc.SaveToFile(FileName);
  aXMLDoc.Active := False;
end;

procedure readXml(FileName: String; aQuery: TpFIBQuery);
{ формат взаимодействия - orenburg.fssp}


begin

end;


end.
