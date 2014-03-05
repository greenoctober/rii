unit UXmlRII;

interface
uses
  Windows, Variants, Classes, SysUtils, XMLDoc,  xmldom, XMLIntf, msxmldom,
  pFIBErrorHandler, FIB, FIBQuery, pFIBQuery,
  UTypeRII, UXmlRIIDocument, UXmlRIIPFRDoc, UTools;

  procedure writeData2Xml(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure writeData2XmlCurr(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure readXml(FileName: String; aQuery: TpFIBQuery);
  procedure writeData2XmlPF(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure unloadData(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
  procedure loadData(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
implementation


procedure unloadData(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
begin
end;

procedure loadData(FileName: String; aQuery: TpFIBQuery; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
begin
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
        aXMLDoc.DocumentElement.Attributes['hSpi'] := aQuery.FldByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_RESTRICTION: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.FldByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.FldByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.FldByName['agent_agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.FldByName['osp_number'].AsString;
        aXMLDoc.DocumentElement.Attributes['hSpi'] := aQuery.FldByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_EXT_DOCUMENT_NOTE: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.FldByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.FldByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.FldByName['agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.FldByName['???'].AsString;
        aXMLDoc.DocumentElement.Attributes['hSpi'] := aQuery.FldByName['???'].AsString;
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
      aXMLDoc.DocumentElement.ChildNodes.Last;
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
        aXMLDoc.DocumentElement.Attributes['hSpi'] := aQuery.ByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_RESTRICTION: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.ByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.ByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.ByName['agent_agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.ByName['osp_number'].AsString;
        aXMLDoc.DocumentElement.Attributes['hSpi'] := aQuery.ByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
      EXT_EXT_DOCUMENT_NOTE: begin
        aXMLDoc.DocumentElement.Attributes['agentCode'] := aQuery.ByName['agent_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentDeptCode'] := aQuery.ByName['agent_dept_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['agentAgreementCode'] := aQuery.ByName['agreement_code'].AsString;
        aXMLDoc.DocumentElement.Attributes['ospNum'] := aQuery.ByName['???'].AsString;
        aXMLDoc.DocumentElement.Attributes['hSpi'] := aQuery.ByName['???'].AsString;
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
var
  aXMLDoc : IXMLDocument;
  nodeData: UXmlRIIDocument.IXMLDATAType;
  nodeDoc: UXmlRIIDocument.IXMLDocumentType;
  nodeDocExtInf: UXmlRIIDocument.IXMLExtInformationType;

begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;

  if FileExists(FileName) then begin
    try
      aXMLDoc.LoadFromFile(FileName);
      if aXMLDoc.DocumentElement <> nil then begin
      end;
    except
    end;
  end;
end;

procedure writeData2XmlPF(FileName: String; aQuery: TFIBXSQLDA; iTableName: TITableName; arrProfile: array of TProfile; IndexAgent: integer);
//Выгрузка данных в ПФР
var
  aXMLDoc : IXMLDocument;
  pfXmlDataBlock: UXmlRIIPFRDoc.IXMLDataBlockType;
  pfXmlQuery: UXmlRIIPFRDoc.IXMLQueryType;
  pfIp: UXmlRIIPFRDoc.IXMLIPType;
  pfDataBlock: TPFDataBlock;
  IsEmptyDoc: Boolean;
begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;

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
    aXMLDoc.Options:=aXMLDoc.Options+[doNodeAutoIndent];
    pfXmlDataBlock := UXmlRIIPFRDoc.GetDataBlock(aXMLDoc);
    {отдельные блоки для таблиц с разными полями}
    case iTableName of
      EXT_REQUEST: begin
        pfXmlDataBlock.Key := CreateGuid;
        pfXmlDataBlock.FsspTo := StrToInt64('56');
        pfXmlDataBlock.FsspOsp := StrToInt64(aQuery.ByName['osp_number'].AsString);
        pfXmlDataBlock.OrgAMD := StrToInt64(aQuery.ByName['mvv_agent_code'].AsString);
        pfXmlDataBlock.DivAMD := StrToInt64(aQuery.ByName['mvv_agent_dept_code'].AsString);
        pfXmlDataBlock.Signed := aQuery.ByName['h_spi'].AsString;
        aXMLDoc.SaveToFile(FileName);
      end;
    end;
  end;
  case iTableName of
      EXT_REQUEST: begin
        pfXmlQuery := pfXmlDataBlock.Query.Add;
        pfXmlQuery.Key := aQuery.ByName['req_id'].AsInt64;
        pfXmlQuery.DocDate := aQuery.ByName['req_date'].AsDate;
        pfXmlQuery.SPI := aQuery.ByName['spi_id'].AsInt64;
        pfXmlQuery.SPIFio := aQuery.ByName['fio_spi'].AsString;
        //pfXmlQuery.SPIPost := aQuery.ByName[''].AsInt64; //Атрибут необязательный
        pfXmlQuery.ChSPIFio := aQuery.ByName['h_spi'].AsString;
        //pfXmlQuery.ChSPIPost := aQuery.ByName[''].AsInt64;
        //pfXmlQuery.AnsDate := aQuery.ByName[''].AsDate;
        //pfXmlQuery.SearchRegion := 56;
        {данные по запросу}
        pfIp := pfXmlQuery.IP;
        pfIp.Key := aQuery.ByName['ip_id'].AsInt64;
        pfIp.IPNum := aQuery.ByName['ip_num'].AsString;
        pfIp.IPDate := aQuery.ByName['ip_risedate'].AsDate;
       // pfIp.IPName := aQuery.ByName[''].AsString; //хер знает откуда брать
       // pfIp.IDType := aQuery.ByName[''].AsInt64; // select idoce_type_id from nsi_idoc_type where idoc_type_name = aQuery.ByName['id_type_name'].AsString;
        pfIp.IDNum := aQuery.ByName['id_number'].AsString;
        pfIp.IDDate := aQuery.ByName['id_date'].AsDate;
        //pfIp.IDSubj := aQuery.ByName[''].AsInt64;
        pfIp.IDSubjName := aQuery.ByName['id_subject_type'].AsString;
        pfIp.IDSum := aQuery.ByName['ip_sum'].AsCurrency;
        pfIp.IPDebt := aQuery.ByName['ip_rest_debtsum'].AsString;
        pfIp.DebtorType := aQuery.ByName['entity_type'].AsInt64;
        pfIp.DebtorName := aQuery.ByName['debtor_name'].AsString;
        pfIp.DebtorAdr := aQuery.ByName['debtor_address'].AsString;
        pfIp.DebtorINN := aQuery.ByName['debtor_inn'].AsString;
        pfIp.DebtorKPP := aQuery.ByName['debtor_kpp'].AsString;
        pfIp.DebtorOGRN := aQuery.ByName['debtor_orgn'].AsString;
        pfIp.DebtorBirthDate := aQuery.ByName['debtor_birthdate'].AsDate;
        pfIp.DebtorBirthPlace := aQuery.ByName['debtor_birthplace'].AsString;
        pfIp.SPI := aQuery.ByName['spi_id'].AsInt64;
        pfIp.SPIFio := aQuery.ByName['fio_spi'].AsString;
      end;
  end;
  aXMLDoc.SaveToFile(FileName);
  aXMLDoc.Active := False;
end;
end.
