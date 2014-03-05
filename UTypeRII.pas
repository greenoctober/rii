unit UTypeRII;

interface

const
{==========================================SQL=================================}
  INSERT_INTO_RESPONSE = 'insert into EXT_RESPONSE(id, response_date, entity_name,'
                            + ' entity_birthyear, entity_birthdate, entity_inn,'
                            + ' id_num, ip_num, request_num, request_id, data_str, answer_type)'
                            + ' values (:id, :response_date, :entity_name, :entity_birthyear, :entity_birthdate, : entity_inn,'
                            + ' :id_num, :ip_num, :request_num, :request_id, :data_str, :answer_type)';
  INSERT_INTO_INPUT_HEADER = 'insert into EXT_INPUT_HEADER(id, pack_number, proceed, agent_code,'
                                 + ' agent_dept_code, agent_agreement_code, external_key, metaobjectname, date_import, source_barcode)'
                                 + ' values (:id, :pack_number, :proceed, :agent_code, :agent_dept_code,'
                                 + ' :agent_agreement_code, :external_key, :metaobjectname, :date_import, :source_barcode)';
  INSERT_INTO_INFORMATION = 'insert into EXT_INFORMATION(id, act_date, kind_data_type, entity_name, external_key,'
                                + ' entity_birthdate, entity_birthyear, proceed, document_key, entity_inn)'
                                + ' values (:id, :act_date, :kind_data_type, :entity_name, :external_key,'
                                + ' :entity_birthdate, :entity_bithyear, :proceed, :document_key, :entity_inn)';
  INSERT_MANAGEMENT_DATA = 'insert into EXT_MANAGEMENT_DATA(id, manager_type, name, telephone_number, address, org_name)'
                            + ' values (:id, :manager_type, :name, :telephone_number, :address, :org_name)';
  INSERT_SVED_RAB_DATA = 'insert into EXT_SVED_RAB_DATA(id, adres_f, adres_j, naimorg, inn, kpp)'
                          + ' values (:id, :adres_f, :adres_j, :naimorg, :inn, :kpp)';
  INSERT_SVED_DOXOD_DATA = 'insert into EXT_SVED_DOXOD_DATA(id, currency_code, inn, datadox, sumdox, kind_dox, kpp)'
                            + ' values (:id, :currency_code, :inn, :databox, :sumdox, :kind_dox, :kpp)';
  INSERT_SVED_NEDV_DATA = 'insert into EXT_SVED_NEDV_DATA(id, kadastr_n, adres_nedv, s_nedv, floor, liter, inv_n_dedv, floor)'
                            + ' values (:id, :kadastr_n, :adres_nedv, :s_nedv, :floor, :liter_n, :inv_n_nedv, :nfloor)';
  INSERT_TELEPHONE_DATA = 'insert into EXT_TELEPHONE_DATA(id, telephone_no, operator_name)'
                            + ' values (:id, :telephone_no, :operator_name)';
  INSERT_TRANSPORT_DATA = 'insert into EXT_TRANSPORT_DATA(id, reg_no, model, producer_name, made_year, vin, color, engine, gibdd_dept_name)'
                            + ' values (:id, :reg_no, :model, :producer_name, :made_year, :vin, :color, :engine, :gibdd_dept_name)';
  INSERT_ADDRESS_DATA = 'insert into EXT_ADDRESS_DATA(id, str_addr)'
                          + ' values (:id, :str_addr)';
  INSERT_AVAILABILITY_ACC_DATA = 'insert into EXT_AVAILABILITY_ACC_DATA(id, bic_bank, currency_code, acc, bank_name, summa, dept_code, summa_info)'
                          + ' values (:id, :bic_bank, :currency_code, :acc, :bank_name, :summa, :dept_code, :summa_info)';
  INSERT_ACCOUNTING_DATA = 'insert into EXT_ACCOUNTING_DATA(id, amount, accountcode)'
                          + ' values (:id, :ammount, :accountcode)';
  INSERT_AVAILABILITY_ACC_DEPO_DATA = 'insert into EXT_AVAILABILITY_ACC_DEPO_DATA(id, bic_bank, bank_name, stracc, deptcode)'
                          + ' values (:id, :bic_bank, :bank_name, :stracc, :deptcode)';
  INSERT_DEBTOR_STATE_DATA = 'insert into EXT_DEBTOR_STATE_DATA(id, state)'
                          + ' values (:id, :state)';
  INSERT_IDENTIFICATION_DATA = 'insert into EXT_IDENTIFICATION_DATA(id, num_doc, date_doc, code_dep, ser_doc, fio_doc, str_addr, issued_doc, type_doc_code)'
                          + ' values (:id, :num_doc, :date_doc, :code_dep, :ser_doc, :fio_doc, :str_addr, :issued_doc, :type_doc_code)';

  SELECT_GEN_ID = 'select gen_id(:genName, 1) from rdb$database';
{==========================================SQL=================================}

type

  TITableName = (EXT_REQUEST, EXT_RESPONSE, EXT_ID, EXT_PPA, EXT_RECEIPT,
               EXT_REPORT, EXT_DEBT_FIX, EXT_DEBTOR_REGISTRY, EXT_EXT_DOCUMENT_NOTE,
               EXT_IP_ACTS, EXT_RESTRICTION, EXT_ACCOUNTING_DATA,
               EXT_ADDRESS_DATA, EXT_AVAILABILITY_ACC_DATA,
               EXT_AVAILABILITY_ACC_DEPO_DATA, EXT_DEBTOR_STATE_DATA,
               EXT_IDENTIFICATION_DATA, EXT_KKT_DATA, EXT_MANAGEMENT_DATA,
               EXT_OBJECT_DATA, EXT_SVED_DOXOD_DATA, EXT_SVED_NEDV_DATA,
               EXT_SVED_RAB_DATA, EXT_TELEPHONE_DATA, EXT_TRANSPORT_DATA);

  TDBProp = record
    id: string;
    name: string;
    path: string;
    user: string;
    password: string;
  end;
  TProfile = record
    id: string;
    agentCode: string;
    agentDeptCode: string;
    agentAgreementCode: string;
    fileFormat: string;
    coding: string;
    fileMask: string;
    loadPath: string;
    loadPathProcessed: string;
    loadPathError: string;
    unloadPath: string;
    nameLoadFile: string;
  end;
  TDocument = record
    id: String[20];
    agentCode: string;
    agentDeptCode: string;
    agentAgreementCode: string;
    ospNum: string;
    toNum: string;
    hspi: string;
    agentDeptName: String[255];
		agentName: String[80];
		agreementName: String[255];  
		codeArticle: string;
		codePart: string;
		codePoint: string;
		codeSubPoint: string;
		claimerAddress: string;
		claimerName: string;
		claimerType: string;
		docCopy: string;
		docDate: string;
		docDateExport: string;
		docId: string;
		docNum: string;
		docOutgoingNum: string;
		docRepeat: string;
		docSum: string;
		docType: string;
		entityAddr: string;
		entityBirthDate: string;
		entityBirthPlace: string;
		entityBirthYear: string;
		entityDocument: string;
		entityFio: string;
		entityFullName: string;
		entityInn: string;
		entityKpp: string;
		entityName: string;
		entityNoAccount: string;
		entityNumber: string;
		entityOgrn: string;
		entityPatronymic: string;
		entitySurname: string;
		entityType: string;
		entityWorkPl: string;
		externalKey: string;
		idActDate: string;
		idDate: string;
		idDeloDate: string;
		idDeloNum: string;
		idNum: string;
		idPeriod: string;
		idPeriodSum: string;
		idSdiPFR: string;
		idSubjName: string;
		idSubjType: string;
		idTypeName: string;
		ipActDateEnd: string;
		ipActDateStart: string;
		ipId: string;
		ipNum: string;
		ipRestDebtSum: string;
		ipRiseDate: string;
		aMessage: string;
		messageCode: string;
		metaObjectName: string;
		msg: string;
		msgCode: string;
		msgSize: string;
		msgType: string;
		organ: string;
		organAddr: string;
		organCode: string;
		organSignFio: string;
		organSignPost: string;
		packDate: string;
		packId: string;
		packNumber: string;
		paymentPurpose: string;
		paymentPAccount: string;
		paymentPCAccount: string;
		paymentPBankName: string;
		paymentPBankBic: string;
		paymentPenaltyDate: string;
		sourceBarcode: string;
		spiId: string;
		spiFio: string;
		spiPhone: string;
		spiTypeCode: string;
  end;
  TExtInformation = record
    id: String;
    accNum: String; 
    actDate: String;
    address: String;
    bankName: String;
    bicBank: String;
    currencyCode: String;
    dataSum: String;
    date: String;
    deptCode: String;
    documentKey: String;
    extKey: String;
    floor: String;
    floorNum: String;
    inn: String;
    invNum: String;
    legalAddr: String;
    letter: String;
    kindDataType: String;
    kpp: String;
    metaObjectName: String;
    name: String;
    num: String;
    orgName: String;
    phoneNum: String;
    sum: String;
    transportColor: String;
    transportEngine: String;
    transportModel: String;
    transportVin: String;
    typeData: String;
    ser: String;
    square: String;
    status: String;
  end;
{Пенсионный Фонд. Формат Ростова}
  TPFIdentification = record
    TypeDoc: String;
    SerDoc: String;
    NumDoc: String;
    IssuedDoc: String;
    DateDoc: String;
    CodeDep: String;
    FIODoc: String;
  end;
  TPFAddress = record
    StrAddr: String;
  end;
  TPFSvedRab = record
    NaimOrg: String;
    AdresJ: String;
    AdresF: String;
  end;
  TPFSvedRuc = record
    NameRuc: String;
    AddressRuc: String;
    TelRuc: String;
    NameBux: String;
    AddressBux: String;
    TelBux: String;
  end;
  TPFSvedDoxod = record
    DataDox: String;
    SumDox: String;
  end;
  TPFDebtorState = record
    State: String;
  end;

  TPFData = record
    key: String;
    actDate: String;
    debtorName: String;
    kindData: String;
    typeData: TITableName;
    pfIdentification: TPFIdentification;
    pfAddress: TPFAddress;
    pfSvedRab: TPFSvedRab;
    pfSvedRuc: TPFSvedRuc;
    pfSvedDoxod: TPFSvedDoxod;
    pfDebtorState: TPFDebtorState;
  end;
  TPFIP = record
    Key: String;
    IPNum: String;
    IPDate: String;
    IPName: String;
    IDType: String;
    IDNum: String;
    IDDate: String;
    IDSubj: String;
    IDSubjName: String;
    IDSum: String;
    IPDebt: String;
    DebtorType: String;
    DebtorName: String;
    DebtorAdr: String;
    DebtorINN: String;
    DebtorKPP: String;
    DebtorOGRN: String;
    DebtorBirthDate: String;
    DebtorBirthYear: String;
    DebtorBirthPlace: String;
    SPI: String;
    SPIFio: String;
  end;
  TPFQuery = record
    Key: String;
    DocDate: String;
    SPI: String;
    SPIFio: String;
    SPIPost: String;
    ChSPIFio: String;
    ChSPIPost: String;
    AnsDate: String;
    SearchRegion: String;
    pfIp: TPFIP;
    pfData: TPFData;
  end;
  TPFExtAnswer = record
    Key: String;
    AnswerType: String;
    QueryKey: String;
    IPkey: String;
    pfData: array of TPFData;
  end;
  TPFDataBlock = record
    Key: String;
    FsspTo: String;
    FsspOsp: String;
    OrgAMD: String;
    DivAMD: String;
    Signed: String;
    pfQuery: array of TPFQuery;
    pfExtAnswer: array of TPFExtAnswer;
  end;

                
implementation

end.
