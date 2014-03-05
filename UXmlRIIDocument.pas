
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 17.02.2014 1:23:17                                     }
{******************************************************************************}

unit UXmlRIIDocument;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLDATAType = interface;
  IXMLDocumentType = interface;
  IXMLDocumentTypeList = interface;
  IXMLExtInformationType = interface;
  IXMLExtInformationTypeList = interface;

{ IXMLDATAType }

  IXMLDATAType = interface(IXMLNodeCollection)
    ['{BFD9E6F8-4B72-46E1-9418-E89D7C3175E8}']
    { Property Accessors }
    function GetAgentCode: WideString;
    function GetAgentDeptCode: WideString;
    function GetAgentAgreementCode: WideString;
    function GetOspNum: WideString;
    function GetToNum: WideString;
    function GetSigned: WideString;
    function GetDocument(Index: Integer): IXMLDocumentType;
    procedure SetAgentCode(Value: WideString);
    procedure SetAgentDeptCode(Value: WideString);
    procedure SetAgentAgreementCode(Value: WideString);
    procedure SetOspNum(Value: WideString);
    procedure SetToNum(Value: WideString);
    procedure SetSigned(Value: WideString);
    { Methods & Properties }
    function Add: IXMLDocumentType;
    function Insert(const Index: Integer): IXMLDocumentType;
    property AgentCode: WideString read GetAgentCode write SetAgentCode;
    property AgentDeptCode: WideString read GetAgentDeptCode write SetAgentDeptCode;
    property AgentAgreementCode: WideString read GetAgentAgreementCode write SetAgentAgreementCode;
    property OspNum: WideString read GetOspNum write SetOspNum;
    property ToNum: WideString read GetToNum write SetToNum;
    property Signed: WideString read GetSigned write SetSigned;
    property Document[Index: Integer]: IXMLDocumentType read GetDocument; default;
  end;

{ IXMLDocumentType }

  IXMLDocumentType = interface(IXMLNodeCollection)
    ['{A85185FD-DEC0-436D-83E9-B3E4052C6C5E}']
    { Property Accessors }
    function GetAgentDeptName: WideString;
    function GetAgentName: WideString;
    function GetAgreementName: WideString;
    function GetCodeArticle: WideString;
    function GetCodePart: WideString;
    function GetCodePoint: WideString;
    function GetCodeSubPoint: WideString;
    function GetClaimerAddress: WideString;
    function GetClaimerName: WideString;
    function GetClaimerType: WideString;
    function GetDocCopy: WideString;
    function GetDocDate: WideString;
    function GetDocDateExport: WideString;
    function GetDocId: WideString;
    function GetDocNum: WideString;
    function GetDocOutgoingNum: WideString;
    function GetDocRepeat: WideString;
    function GetDocSum: WideString;
    function GetDocType: WideString;
    function GetEntityAddr: WideString;
    function GetEntityBirthDate: WideString;
    function GetEntityBirthPlace: WideString;
    function GetEntityBirthYear: WideString;
    function GetEntityDocument: WideString;
    function GetEntityFio: WideString;
    function GetEntityFullName: WideString;
    function GetEntityInn: WideString;
    function GetEntityKpp: WideString;
    function GetEntityName: WideString;
    function GetEntityNoAccount: WideString;
    function GetEntityNumber: WideString;
    function GetEntityOgrn: WideString;
    function GetEntityPatronymic: WideString;
    function GetEntitySurname: WideString;
    function GetEntityType: WideString;
    function GetEntityWorkPl: WideString;
    function GetExternalKey: WideString;
    function GetIdActDate: WideString;
    function GetIdDate: WideString;
    function GetIdDeloDate: WideString;
    function GetIdDeloNum: WideString;
    function GetIdNum: WideString;
    function GetIdPeriod: WideString;
    function GetIdPeriodSum: WideString;
    function GetIdSdiPFR: WideString;
    function GetIdSubjName: WideString;
    function GetIdSubjType: WideString;
    function GetIdTypeName: WideString;
    function GetIpActDateEnd: WideString;
    function GetIpActDateStart: WideString;
    function GetIpId: WideString;
    function GetIpNum: WideString;
    function GetIpRestDebtSum: WideString;
    function GetIpRiseDate: WideString;
    function GetMessage: WideString;
    function GetMessageCode: WideString;
    function GetMetaObjectName: WideString;
    function GetMsg: WideString;
    function GetMsgCode: WideString;
    function GetMsgSize: WideString;
    function GetMsgType: WideString;
    function GetOrgan: WideString;
    function GetOrganAddr: WideString;
    function GetOrganCode: WideString;
    function GetOrganSignFio: WideString;
    function GetOrganSignPost: WideString;
    function GetPackDate: WideString;
    function GetPackId: WideString;
    function GetPackNumber: WideString;
    function GetPaymentPurpose: WideString;
    function GetPaymentPAccount: WideString;
    function GetPaymentPCAccount: WideString;
    function GetPaymentPBankName: WideString;
    function GetPaymentPBankBic: WideString;
    function GetPaymentPenaltyDate: WideString;
    function GetSourceBarcode: WideString;
    function GetSpiId: WideString;
    function GetSpiFio: WideString;
    function GetSpiPhone: WideString;
    function GetSpiTypeCode: WideString;
    function GetExtInformation(Index: Integer): IXMLExtInformationType;
    procedure SetAgentDeptName(Value: WideString);
    procedure SetAgentName(Value: WideString);
    procedure SetAgreementName(Value: WideString);
    procedure SetCodeArticle(Value: WideString);
    procedure SetCodePart(Value: WideString);
    procedure SetCodePoint(Value: WideString);
    procedure SetCodeSubPoint(Value: WideString);
    procedure SetClaimerAddress(Value: WideString);
    procedure SetClaimerName(Value: WideString);
    procedure SetClaimerType(Value: WideString);
    procedure SetDocCopy(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetDocDateExport(Value: WideString);
    procedure SetDocId(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetDocOutgoingNum(Value: WideString);
    procedure SetDocRepeat(Value: WideString);
    procedure SetDocSum(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetEntityAddr(Value: WideString);
    procedure SetEntityBirthDate(Value: WideString);
    procedure SetEntityBirthPlace(Value: WideString);
    procedure SetEntityBirthYear(Value: WideString);
    procedure SetEntityDocument(Value: WideString);
    procedure SetEntityFio(Value: WideString);
    procedure SetEntityFullName(Value: WideString);
    procedure SetEntityInn(Value: WideString);
    procedure SetEntityKpp(Value: WideString);
    procedure SetEntityName(Value: WideString);
    procedure SetEntityNoAccount(Value: WideString);
    procedure SetEntityNumber(Value: WideString);
    procedure SetEntityOgrn(Value: WideString);
    procedure SetEntityPatronymic(Value: WideString);
    procedure SetEntitySurname(Value: WideString);
    procedure SetEntityType(Value: WideString);
    procedure SetEntityWorkPl(Value: WideString);
    procedure SetExternalKey(Value: WideString);
    procedure SetIdActDate(Value: WideString);
    procedure SetIdDate(Value: WideString);
    procedure SetIdDeloDate(Value: WideString);
    procedure SetIdDeloNum(Value: WideString);
    procedure SetIdNum(Value: WideString);
    procedure SetIdPeriod(Value: WideString);
    procedure SetIdPeriodSum(Value: WideString);
    procedure SetIdSdiPFR(Value: WideString);
    procedure SetIdSubjName(Value: WideString);
    procedure SetIdSubjType(Value: WideString);
    procedure SetIdTypeName(Value: WideString);
    procedure SetIpActDateEnd(Value: WideString);
    procedure SetIpActDateStart(Value: WideString);
    procedure SetIpId(Value: WideString);
    procedure SetIpNum(Value: WideString);
    procedure SetIpRestDebtSum(Value: WideString);
    procedure SetIpRiseDate(Value: WideString);
    procedure SetMessage(Value: WideString);
    procedure SetMessageCode(Value: WideString);
    procedure SetMetaObjectName(Value: WideString);
    procedure SetMsg(Value: WideString);
    procedure SetMsgCode(Value: WideString);
    procedure SetMsgSize(Value: WideString);
    procedure SetMsgType(Value: WideString);
    procedure SetOrgan(Value: WideString);
    procedure SetOrganAddr(Value: WideString);
    procedure SetOrganCode(Value: WideString);
    procedure SetOrganSignFio(Value: WideString);
    procedure SetOrganSignPost(Value: WideString);
    procedure SetPackDate(Value: WideString);
    procedure SetPackId(Value: WideString);
    procedure SetPackNumber(Value: WideString);
    procedure SetPaymentPurpose(Value: WideString);
    procedure SetPaymentPAccount(Value: WideString);
    procedure SetPaymentPCAccount(Value: WideString);
    procedure SetPaymentPBankName(Value: WideString);
    procedure SetPaymentPBankBic(Value: WideString);
    procedure SetPaymentPenaltyDate(Value: WideString);
    procedure SetSourceBarcode(Value: WideString);
    procedure SetSpiId(Value: WideString);
    procedure SetSpiFio(Value: WideString);
    procedure SetSpiPhone(Value: WideString);
    procedure SetSpiTypeCode(Value: WideString);
    { Methods & Properties }
    function Add: IXMLExtInformationType;
    function Insert(const Index: Integer): IXMLExtInformationType;
    property AgentDeptName: WideString read GetAgentDeptName write SetAgentDeptName;
    property AgentName: WideString read GetAgentName write SetAgentName;
    property AgreementName: WideString read GetAgreementName write SetAgreementName;
    property CodeArticle: WideString read GetCodeArticle write SetCodeArticle;
    property CodePart: WideString read GetCodePart write SetCodePart;
    property CodePoint: WideString read GetCodePoint write SetCodePoint;
    property CodeSubPoint: WideString read GetCodeSubPoint write SetCodeSubPoint;
    property ClaimerAddress: WideString read GetClaimerAddress write SetClaimerAddress;
    property ClaimerName: WideString read GetClaimerName write SetClaimerName;
    property ClaimerType: WideString read GetClaimerType write SetClaimerType;
    property DocCopy: WideString read GetDocCopy write SetDocCopy;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property DocDateExport: WideString read GetDocDateExport write SetDocDateExport;
    property DocId: WideString read GetDocId write SetDocId;
    property DocNum: WideString read GetDocNum write SetDocNum;
    property DocOutgoingNum: WideString read GetDocOutgoingNum write SetDocOutgoingNum;
    property DocRepeat: WideString read GetDocRepeat write SetDocRepeat;
    property DocSum: WideString read GetDocSum write SetDocSum;
    property DocType: WideString read GetDocType write SetDocType;
    property EntityAddr: WideString read GetEntityAddr write SetEntityAddr;
    property EntityBirthDate: WideString read GetEntityBirthDate write SetEntityBirthDate;
    property EntityBirthPlace: WideString read GetEntityBirthPlace write SetEntityBirthPlace;
    property EntityBirthYear: WideString read GetEntityBirthYear write SetEntityBirthYear;
    property EntityDocument: WideString read GetEntityDocument write SetEntityDocument;
    property EntityFio: WideString read GetEntityFio write SetEntityFio;
    property EntityFullName: WideString read GetEntityFullName write SetEntityFullName;
    property EntityInn: WideString read GetEntityInn write SetEntityInn;
    property EntityKpp: WideString read GetEntityKpp write SetEntityKpp;
    property EntityName: WideString read GetEntityName write SetEntityName;
    property EntityNoAccount: WideString read GetEntityNoAccount write SetEntityNoAccount;
    property EntityNumber: WideString read GetEntityNumber write SetEntityNumber;
    property EntityOgrn: WideString read GetEntityOgrn write SetEntityOgrn;
    property EntityPatronymic: WideString read GetEntityPatronymic write SetEntityPatronymic;
    property EntitySurname: WideString read GetEntitySurname write SetEntitySurname;
    property EntityType: WideString read GetEntityType write SetEntityType;
    property EntityWorkPl: WideString read GetEntityWorkPl write SetEntityWorkPl;
    property ExternalKey: WideString read GetExternalKey write SetExternalKey;
    property IdActDate: WideString read GetIdActDate write SetIdActDate;
    property IdDate: WideString read GetIdDate write SetIdDate;
    property IdDeloDate: WideString read GetIdDeloDate write SetIdDeloDate;
    property IdDeloNum: WideString read GetIdDeloNum write SetIdDeloNum;
    property IdNum: WideString read GetIdNum write SetIdNum;
    property IdPeriod: WideString read GetIdPeriod write SetIdPeriod;
    property IdPeriodSum: WideString read GetIdPeriodSum write SetIdPeriodSum;
    property IdSdiPFR: WideString read GetIdSdiPFR write SetIdSdiPFR;
    property IdSubjName: WideString read GetIdSubjName write SetIdSubjName;
    property IdSubjType: WideString read GetIdSubjType write SetIdSubjType;
    property IdTypeName: WideString read GetIdTypeName write SetIdTypeName;
    property IpActDateEnd: WideString read GetIpActDateEnd write SetIpActDateEnd;
    property IpActDateStart: WideString read GetIpActDateStart write SetIpActDateStart;
    property IpId: WideString read GetIpId write SetIpId;
    property IpNum: WideString read GetIpNum write SetIpNum;
    property IpRestDebtSum: WideString read GetIpRestDebtSum write SetIpRestDebtSum;
    property IpRiseDate: WideString read GetIpRiseDate write SetIpRiseDate;
    property aMessage: WideString read GetMessage write SetMessage;
    property MessageCode: WideString read GetMessageCode write SetMessageCode;
    property MetaObjectName: WideString read GetMetaObjectName write SetMetaObjectName;
    property Msg: WideString read GetMsg write SetMsg;
    property MsgCode: WideString read GetMsgCode write SetMsgCode;
    property MsgSize: WideString read GetMsgSize write SetMsgSize;
    property MsgType: WideString read GetMsgType write SetMsgType;
    property Organ: WideString read GetOrgan write SetOrgan;
    property OrganAddr: WideString read GetOrganAddr write SetOrganAddr;
    property OrganCode: WideString read GetOrganCode write SetOrganCode;
    property OrganSignFio: WideString read GetOrganSignFio write SetOrganSignFio;
    property OrganSignPost: WideString read GetOrganSignPost write SetOrganSignPost;
    property PackDate: WideString read GetPackDate write SetPackDate;
    property PackId: WideString read GetPackId write SetPackId;
    property PackNumber: WideString read GetPackNumber write SetPackNumber;
    property PaymentPurpose: WideString read GetPaymentPurpose write SetPaymentPurpose;
    property PaymentPAccount: WideString read GetPaymentPAccount write SetPaymentPAccount;
    property PaymentPCAccount: WideString read GetPaymentPCAccount write SetPaymentPCAccount;
    property PaymentPBankName: WideString read GetPaymentPBankName write SetPaymentPBankName;
    property PaymentPBankBic: WideString read GetPaymentPBankBic write SetPaymentPBankBic;
    property PaymentPenaltyDate: WideString read GetPaymentPenaltyDate write SetPaymentPenaltyDate;
    property SourceBarcode: WideString read GetSourceBarcode write SetSourceBarcode;
    property SpiId: WideString read GetSpiId write SetSpiId;
    property SpiFio: WideString read GetSpiFio write SetSpiFio;
    property SpiPhone: WideString read GetSpiPhone write SetSpiPhone;
    property SpiTypeCode: WideString read GetSpiTypeCode write SetSpiTypeCode;
    property ExtInformation[Index: Integer]: IXMLExtInformationType read GetExtInformation; default;
  end;

{ IXMLDocumentTypeList }

  IXMLDocumentTypeList = interface(IXMLNodeCollection)
    ['{FE2FFCA4-BCB1-4A6E-8E84-8685D489A251}']
    { Methods & Properties }
    function Add: IXMLDocumentType;
    function Insert(const Index: Integer): IXMLDocumentType;
    function GetItem(Index: Integer): IXMLDocumentType;
    property Items[Index: Integer]: IXMLDocumentType read GetItem; default;
  end;

{ IXMLExtInformationType }

  IXMLExtInformationType = interface(IXMLNode)
    ['{3A19A71E-FFD1-48FF-BB95-72E55AC36418}']
    { Property Accessors }
    function GetAccNum: WideString;
    function GetActDate: WideString;
    function GetAddress: WideString;
    function GetBankName: WideString;
    function GetBicBank: WideString;
    function GetCurrencyCode: WideString;
    function GetDataSum: WideString;
    function GetDate: WideString;
    function GetDeptCode: WideString;
    function GetExtKey: WideString;
    function GetFloor: WideString;
    function GetFloorNum: WideString;
    function GetInn: WideString;
    function GetInvNum: WideString;
    function GetLegalAddr: WideString;
    function GetLetter: WideString;
    function GetKindDataType: WideString;
    function GetKpp: WideString;
    function GetMetaObjectName: WideString;
    function GetName: WideString;
    function GetNum: WideString;
    function GetOrgName: WideString;
    function GetPhoneNum: WideString;
    function GetSum: WideString;
    function GetTransportColor: WideString;
    function GetTransportEngine: WideString;
    function GetTransportModel: WideString;
    function GetTransportVin: WideString;
    function GetTypeData: WideString;
    function GetSer: WideString;
    function GetSquare: WideString;
    function GetStatus: WideString;
    procedure SetAccNum(Value: WideString);
    procedure SetActDate(Value: WideString);
    procedure SetAddress(Value: WideString);
    procedure SetBankName(Value: WideString);
    procedure SetBicBank(Value: WideString);
    procedure SetCurrencyCode(Value: WideString);
    procedure SetDataSum(Value: WideString);
    procedure SetDate(Value: WideString);
    procedure SetDeptCode(Value: WideString);
    procedure SetExtKey(Value: WideString);
    procedure SetFloor(Value: WideString);
    procedure SetFloorNum(Value: WideString);
    procedure SetInn(Value: WideString);
    procedure SetInvNum(Value: WideString);
    procedure SetLegalAddr(Value: WideString);
    procedure SetLetter(Value: WideString);
    procedure SetKindDataType(Value: WideString);
    procedure SetKpp(Value: WideString);
    procedure SetMetaObjectName(Value: WideString);
    procedure SetName(Value: WideString);
    procedure SetNum(Value: WideString);
    procedure SetOrgName(Value: WideString);
    procedure SetPhoneNum(Value: WideString);
    procedure SetSum(Value: WideString);
    procedure SetTransportColor(Value: WideString);
    procedure SetTransportEngine(Value: WideString);
    procedure SetTransportModel(Value: WideString);
    procedure SetTransportVin(Value: WideString);
    procedure SetTypeData(Value: WideString);
    procedure SetSer(Value: WideString);
    procedure SetSquare(Value: WideString);
    procedure SetStatus(Value: WideString);
    { Methods & Properties }
    property AccNum: WideString read GetAccNum write SetAccNum;
    property ActDate: WideString read GetActDate write SetActDate;
    property Address: WideString read GetAddress write SetAddress;
    property BankName: WideString read GetBankName write SetBankName;
    property BicBank: WideString read GetBicBank write SetBicBank;
    property CurrencyCode: WideString read GetCurrencyCode write SetCurrencyCode;
    property DataSum: WideString read GetDataSum write SetDataSum;
    property Date: WideString read GetDate write SetDate;
    property DeptCode: WideString read GetDeptCode write SetDeptCode;
    property ExtKey: WideString read GetExtKey write SetExtKey;
    property Floor: WideString read GetFloor write SetFloor;
    property FloorNum: WideString read GetFloorNum write SetFloorNum;
    property Inn: WideString read GetInn write SetInn;
    property InvNum: WideString read GetInvNum write SetInvNum;
    property LegalAddr: WideString read GetLegalAddr write SetLegalAddr;
    property Letter: WideString read GetLetter write SetLetter;
    property KindDataType: WideString read GetKindDataType write SetKindDataType;
    property Kpp: WideString read GetKpp write SetKpp;
    property MetaObjectName: WideString read GetMetaObjectName write SetMetaObjectName;
    property Name: WideString read GetName write SetName;
    property Num: WideString read GetNum write SetNum;
    property OrgName: WideString read GetOrgName write SetOrgName;
    property PhoneNum: WideString read GetPhoneNum write SetPhoneNum;
    property Sum: WideString read GetSum write SetSum;
    property TransportColor: WideString read GetTransportColor write SetTransportColor;
    property TransportEngine: WideString read GetTransportEngine write SetTransportEngine;
    property TransportModel: WideString read GetTransportModel write SetTransportModel;
    property TransportVin: WideString read GetTransportVin write SetTransportVin;
    property TypeData: WideString read GetTypeData write SetTypeData;
    property Ser: WideString read GetSer write SetSer;
    property Square: WideString read GetSquare write SetSquare;
    property Status: WideString read GetStatus write SetStatus;
  end;

{ IXMLExtInformationTypeList }

  IXMLExtInformationTypeList = interface(IXMLNodeCollection)
    ['{C329A7E7-B256-4362-BEB5-AB1B5BF7EEEC}']
    { Methods & Properties }
    function Add: IXMLExtInformationType;
    function Insert(const Index: Integer): IXMLExtInformationType;
    function GetItem(Index: Integer): IXMLExtInformationType;
    property Items[Index: Integer]: IXMLExtInformationType read GetItem; default;
  end;

{ Forward Decls }

  TXMLDATAType = class;
  TXMLDocumentType = class;
  TXMLDocumentTypeList = class;
  TXMLExtInformationType = class;
  TXMLExtInformationTypeList = class;

{ TXMLDATAType }

  TXMLDATAType = class(TXMLNodeCollection, IXMLDATAType)
  protected
    { IXMLDATAType }
    function GetAgentCode: WideString;
    function GetAgentDeptCode: WideString;
    function GetAgentAgreementCode: WideString;
    function GetOspNum: WideString;
    function GetToNum: WideString;
    function GetSigned: WideString;
    function GetDocument(Index: Integer): IXMLDocumentType;
    procedure SetAgentCode(Value: WideString);
    procedure SetAgentDeptCode(Value: WideString);
    procedure SetAgentAgreementCode(Value: WideString);
    procedure SetOspNum(Value: WideString);
    procedure SetToNum(Value: WideString);
    procedure SetSigned(Value: WideString);
    function Add: IXMLDocumentType;
    function Insert(const Index: Integer): IXMLDocumentType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDocumentType }

  TXMLDocumentType = class(TXMLNodeCollection, IXMLDocumentType)
  protected
    { IXMLDocumentType }
    function GetAgentDeptName: WideString;
    function GetAgentName: WideString;
    function GetAgreementName: WideString;
    function GetCodeArticle: WideString;
    function GetCodePart: WideString;
    function GetCodePoint: WideString;
    function GetCodeSubPoint: WideString;
    function GetClaimerAddress: WideString;
    function GetClaimerName: WideString;
    function GetClaimerType: WideString;
    function GetDocCopy: WideString;
    function GetDocDate: WideString;
    function GetDocDateExport: WideString;
    function GetDocId: WideString;
    function GetDocNum: WideString;
    function GetDocOutgoingNum: WideString;
    function GetDocRepeat: WideString;
    function GetDocSum: WideString;
    function GetDocType: WideString;
    function GetEntityAddr: WideString;
    function GetEntityBirthDate: WideString;
    function GetEntityBirthPlace: WideString;
    function GetEntityBirthYear: WideString;
    function GetEntityDocument: WideString;
    function GetEntityFio: WideString;
    function GetEntityFullName: WideString;
    function GetEntityInn: WideString;
    function GetEntityKpp: WideString;
    function GetEntityName: WideString;
    function GetEntityNoAccount: WideString;
    function GetEntityNumber: WideString;
    function GetEntityOgrn: WideString;
    function GetEntityPatronymic: WideString;
    function GetEntitySurname: WideString;
    function GetEntityType: WideString;
    function GetEntityWorkPl: WideString;
    function GetExternalKey: WideString;
    function GetIdActDate: WideString;
    function GetIdDate: WideString;
    function GetIdDeloDate: WideString;
    function GetIdDeloNum: WideString;
    function GetIdNum: WideString;
    function GetIdPeriod: WideString;
    function GetIdPeriodSum: WideString;
    function GetIdSdiPFR: WideString;
    function GetIdSubjName: WideString;
    function GetIdSubjType: WideString;
    function GetIdTypeName: WideString;
    function GetIpActDateEnd: WideString;
    function GetIpActDateStart: WideString;
    function GetIpId: WideString;
    function GetIpNum: WideString;
    function GetIpRestDebtSum: WideString;
    function GetIpRiseDate: WideString;
    function GetMessage: WideString;
    function GetMessageCode: WideString;
    function GetMetaObjectName: WideString;
    function GetMsg: WideString;
    function GetMsgCode: WideString;
    function GetMsgSize: WideString;
    function GetMsgType: WideString;
    function GetOrgan: WideString;
    function GetOrganAddr: WideString;
    function GetOrganCode: WideString;
    function GetOrganSignFio: WideString;
    function GetOrganSignPost: WideString;
    function GetPackDate: WideString;
    function GetPackId: WideString;
    function GetPackNumber: WideString;
    function GetPaymentPurpose: WideString;
    function GetPaymentPAccount: WideString;
    function GetPaymentPCAccount: WideString;
    function GetPaymentPBankName: WideString;
    function GetPaymentPBankBic: WideString;
    function GetPaymentPenaltyDate: WideString;
    function GetSourceBarcode: WideString;
    function GetSpiId: WideString;
    function GetSpiFio: WideString;
    function GetSpiPhone: WideString;
    function GetSpiTypeCode: WideString;
    function GetExtInformation(Index: Integer): IXMLExtInformationType;
    procedure SetAgentDeptName(Value: WideString);
    procedure SetAgentName(Value: WideString);
    procedure SetAgreementName(Value: WideString);
    procedure SetCodeArticle(Value: WideString);
    procedure SetCodePart(Value: WideString);
    procedure SetCodePoint(Value: WideString);
    procedure SetCodeSubPoint(Value: WideString);
    procedure SetClaimerAddress(Value: WideString);
    procedure SetClaimerName(Value: WideString);
    procedure SetClaimerType(Value: WideString);
    procedure SetDocCopy(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetDocDateExport(Value: WideString);
    procedure SetDocId(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetDocOutgoingNum(Value: WideString);
    procedure SetDocRepeat(Value: WideString);
    procedure SetDocSum(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetEntityAddr(Value: WideString);
    procedure SetEntityBirthDate(Value: WideString);
    procedure SetEntityBirthPlace(Value: WideString);
    procedure SetEntityBirthYear(Value: WideString);
    procedure SetEntityDocument(Value: WideString);
    procedure SetEntityFio(Value: WideString);
    procedure SetEntityFullName(Value: WideString);
    procedure SetEntityInn(Value: WideString);
    procedure SetEntityKpp(Value: WideString);
    procedure SetEntityName(Value: WideString);
    procedure SetEntityNoAccount(Value: WideString);
    procedure SetEntityNumber(Value: WideString);
    procedure SetEntityOgrn(Value: WideString);
    procedure SetEntityPatronymic(Value: WideString);
    procedure SetEntitySurname(Value: WideString);
    procedure SetEntityType(Value: WideString);
    procedure SetEntityWorkPl(Value: WideString);
    procedure SetExternalKey(Value: WideString);
    procedure SetIdActDate(Value: WideString);
    procedure SetIdDate(Value: WideString);
    procedure SetIdDeloDate(Value: WideString);
    procedure SetIdDeloNum(Value: WideString);
    procedure SetIdNum(Value: WideString);
    procedure SetIdPeriod(Value: WideString);
    procedure SetIdPeriodSum(Value: WideString);
    procedure SetIdSdiPFR(Value: WideString);
    procedure SetIdSubjName(Value: WideString);
    procedure SetIdSubjType(Value: WideString);
    procedure SetIdTypeName(Value: WideString);
    procedure SetIpActDateEnd(Value: WideString);
    procedure SetIpActDateStart(Value: WideString);
    procedure SetIpId(Value: WideString);
    procedure SetIpNum(Value: WideString);
    procedure SetIpRestDebtSum(Value: WideString);
    procedure SetIpRiseDate(Value: WideString);
    procedure SetMessage(Value: WideString);
    procedure SetMessageCode(Value: WideString);
    procedure SetMetaObjectName(Value: WideString);
    procedure SetMsg(Value: WideString);
    procedure SetMsgCode(Value: WideString);
    procedure SetMsgSize(Value: WideString);
    procedure SetMsgType(Value: WideString);
    procedure SetOrgan(Value: WideString);
    procedure SetOrganAddr(Value: WideString);
    procedure SetOrganCode(Value: WideString);
    procedure SetOrganSignFio(Value: WideString);
    procedure SetOrganSignPost(Value: WideString);
    procedure SetPackDate(Value: WideString);
    procedure SetPackId(Value: WideString);
    procedure SetPackNumber(Value: WideString);
    procedure SetPaymentPurpose(Value: WideString);
    procedure SetPaymentPAccount(Value: WideString);
    procedure SetPaymentPCAccount(Value: WideString);
    procedure SetPaymentPBankName(Value: WideString);
    procedure SetPaymentPBankBic(Value: WideString);
    procedure SetPaymentPenaltyDate(Value: WideString);
    procedure SetSourceBarcode(Value: WideString);
    procedure SetSpiId(Value: WideString);
    procedure SetSpiFio(Value: WideString);
    procedure SetSpiPhone(Value: WideString);
    procedure SetSpiTypeCode(Value: WideString);
    function Add: IXMLExtInformationType;
    function Insert(const Index: Integer): IXMLExtInformationType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDocumentTypeList }

  TXMLDocumentTypeList = class(TXMLNodeCollection, IXMLDocumentTypeList)
  protected
    { IXMLDocumentTypeList }
    function Add: IXMLDocumentType;
    function Insert(const Index: Integer): IXMLDocumentType;
    function GetItem(Index: Integer): IXMLDocumentType;
  end;

{ TXMLExtInformationType }

  TXMLExtInformationType = class(TXMLNode, IXMLExtInformationType)
  protected
    { IXMLExtInformationType }
    function GetAccNum: WideString;
    function GetActDate: WideString;
    function GetAddress: WideString;
    function GetBankName: WideString;
    function GetBicBank: WideString;
    function GetCurrencyCode: WideString;
    function GetDataSum: WideString;
    function GetDate: WideString;
    function GetDeptCode: WideString;
    function GetExtKey: WideString;
    function GetFloor: WideString;
    function GetFloorNum: WideString;
    function GetInn: WideString;
    function GetInvNum: WideString;
    function GetLegalAddr: WideString;
    function GetLetter: WideString;
    function GetKindDataType: WideString;
    function GetKpp: WideString;
    function GetMetaObjectName: WideString;
    function GetName: WideString;
    function GetNum: WideString;
    function GetOrgName: WideString;
    function GetPhoneNum: WideString;
    function GetSum: WideString;
    function GetTransportColor: WideString;
    function GetTransportEngine: WideString;
    function GetTransportModel: WideString;
    function GetTransportVin: WideString;
    function GetTypeData: WideString;
    function GetSer: WideString;
    function GetSquare: WideString;
    function GetStatus: WideString;
    procedure SetAccNum(Value: WideString);
    procedure SetActDate(Value: WideString);
    procedure SetAddress(Value: WideString);
    procedure SetBankName(Value: WideString);
    procedure SetBicBank(Value: WideString);
    procedure SetCurrencyCode(Value: WideString);
    procedure SetDataSum(Value: WideString);
    procedure SetDate(Value: WideString);
    procedure SetDeptCode(Value: WideString);
    procedure SetExtKey(Value: WideString);
    procedure SetFloor(Value: WideString);
    procedure SetFloorNum(Value: WideString);
    procedure SetInn(Value: WideString);
    procedure SetInvNum(Value: WideString);
    procedure SetLegalAddr(Value: WideString);
    procedure SetLetter(Value: WideString);
    procedure SetKindDataType(Value: WideString);
    procedure SetKpp(Value: WideString);
    procedure SetMetaObjectName(Value: WideString);
    procedure SetName(Value: WideString);
    procedure SetNum(Value: WideString);
    procedure SetOrgName(Value: WideString);
    procedure SetPhoneNum(Value: WideString);
    procedure SetSum(Value: WideString);
    procedure SetTransportColor(Value: WideString);
    procedure SetTransportEngine(Value: WideString);
    procedure SetTransportModel(Value: WideString);
    procedure SetTransportVin(Value: WideString);
    procedure SetTypeData(Value: WideString);
    procedure SetSer(Value: WideString);
    procedure SetSquare(Value: WideString);
    procedure SetStatus(Value: WideString);
  end;

{ TXMLExtInformationTypeList }

  TXMLExtInformationTypeList = class(TXMLNodeCollection, IXMLExtInformationTypeList)
  protected
    { IXMLExtInformationTypeList }
    function Add: IXMLExtInformationType;
    function Insert(const Index: Integer): IXMLExtInformationType;
    function GetItem(Index: Integer): IXMLExtInformationType;
  end;

{ Global Functions }

function GetDATA(Doc: IXMLDocument): IXMLDATAType;
function LoadDATA(const FileName: WideString): IXMLDATAType;
function NewDATA: IXMLDATAType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetDATA(Doc: IXMLDocument): IXMLDATAType;
begin
  Result := Doc.GetDocBinding('DATA', TXMLDATAType, TargetNamespace) as IXMLDATAType;
end;

function LoadDATA(const FileName: WideString): IXMLDATAType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('DATA', TXMLDATAType, TargetNamespace) as IXMLDATAType;
end;

function NewDATA: IXMLDATAType;
begin
  Result := NewXMLDocument.GetDocBinding('DATA', TXMLDATAType, TargetNamespace) as IXMLDATAType;
end;

{ TXMLDATAType }

procedure TXMLDATAType.AfterConstruction;
begin
  RegisterChildNode('document', TXMLDocumentType);
  ItemTag := 'document';
  ItemInterface := IXMLDocumentType;
  inherited;
end;

function TXMLDATAType.GetAgentCode: WideString;
begin
  Result := AttributeNodes['agentCode'].Text;
end;

procedure TXMLDATAType.SetAgentCode(Value: WideString);
begin
  SetAttribute('agentCode', Value);
end;

function TXMLDATAType.GetAgentDeptCode: WideString;
begin
  Result := AttributeNodes['agentDeptCode'].Text;
end;

procedure TXMLDATAType.SetAgentDeptCode(Value: WideString);
begin
  SetAttribute('agentDeptCode', Value);
end;

function TXMLDATAType.GetAgentAgreementCode: WideString;
begin
  Result := AttributeNodes['agentAgreementCode'].Text;
end;

procedure TXMLDATAType.SetAgentAgreementCode(Value: WideString);
begin
  SetAttribute('agentAgreementCode', Value);
end;

function TXMLDATAType.GetOspNum: WideString;
begin
  Result := AttributeNodes['ospNum'].Text;
end;

procedure TXMLDATAType.SetOspNum(Value: WideString);
begin
  SetAttribute('ospNum', Value);
end;

function TXMLDATAType.GetToNum: WideString;
begin
  Result := AttributeNodes['toNum'].Text;
end;

procedure TXMLDATAType.SetToNum(Value: WideString);
begin
  SetAttribute('toNum', Value);
end;

function TXMLDATAType.GetSigned: WideString;
begin
  Result := AttributeNodes['Signed'].Text;
end;

procedure TXMLDATAType.SetSigned(Value: WideString);
begin
  SetAttribute('Signed', Value);
end;

function TXMLDATAType.GetDocument(Index: Integer): IXMLDocumentType;
begin
  Result := List[Index] as IXMLDocumentType;
end;

function TXMLDATAType.Add: IXMLDocumentType;
begin
  Result := AddItem(-1) as IXMLDocumentType;
end;

function TXMLDATAType.Insert(const Index: Integer): IXMLDocumentType;
begin
  Result := AddItem(Index) as IXMLDocumentType;
end;

{ TXMLDocumentType }

procedure TXMLDocumentType.AfterConstruction;
begin
  RegisterChildNode('extInformation', TXMLExtInformationType);
  ItemTag := 'extInformation';
  ItemInterface := IXMLExtInformationType;
  inherited;
end;

function TXMLDocumentType.GetAgentDeptName: WideString;
begin
  Result := AttributeNodes['agentDeptName'].Text;
end;

procedure TXMLDocumentType.SetAgentDeptName(Value: WideString);
begin
  SetAttribute('agentDeptName', Value);
end;

function TXMLDocumentType.GetAgentName: WideString;
begin
  Result := AttributeNodes['agentName'].Text;
end;

procedure TXMLDocumentType.SetAgentName(Value: WideString);
begin
  SetAttribute('agentName', Value);
end;

function TXMLDocumentType.GetAgreementName: WideString;
begin
  Result := AttributeNodes['agreementName'].Text;
end;

procedure TXMLDocumentType.SetAgreementName(Value: WideString);
begin
  SetAttribute('agreementName', Value);
end;

function TXMLDocumentType.GetCodeArticle: WideString;
begin
  Result := AttributeNodes['codeArticle'].Text;
end;

procedure TXMLDocumentType.SetCodeArticle(Value: WideString);
begin
  SetAttribute('codeArticle', Value);
end;

function TXMLDocumentType.GetCodePart: WideString;
begin
  Result := AttributeNodes['codePart'].Text;
end;

procedure TXMLDocumentType.SetCodePart(Value: WideString);
begin
  SetAttribute('codePart', Value);
end;

function TXMLDocumentType.GetCodePoint: WideString;
begin
  Result := AttributeNodes['codePoint'].Text;
end;

procedure TXMLDocumentType.SetCodePoint(Value: WideString);
begin
  SetAttribute('codePoint', Value);
end;

function TXMLDocumentType.GetCodeSubPoint: WideString;
begin
  Result := AttributeNodes['codeSubPoint'].Text;
end;

procedure TXMLDocumentType.SetCodeSubPoint(Value: WideString);
begin
  SetAttribute('codeSubPoint', Value);
end;

function TXMLDocumentType.GetClaimerAddress: WideString;
begin
  Result := AttributeNodes['claimerAddress'].Text;
end;

procedure TXMLDocumentType.SetClaimerAddress(Value: WideString);
begin
  SetAttribute('claimerAddress', Value);
end;

function TXMLDocumentType.GetClaimerName: WideString;
begin
  Result := AttributeNodes['claimerName'].Text;
end;

procedure TXMLDocumentType.SetClaimerName(Value: WideString);
begin
  SetAttribute('claimerName', Value);
end;

function TXMLDocumentType.GetClaimerType: WideString;
begin
  Result := AttributeNodes['claimerType'].Text;
end;

procedure TXMLDocumentType.SetClaimerType(Value: WideString);
begin
  SetAttribute('claimerType', Value);
end;

function TXMLDocumentType.GetDocCopy: WideString;
begin
  Result := AttributeNodes['docCopy'].Text;
end;

procedure TXMLDocumentType.SetDocCopy(Value: WideString);
begin
  SetAttribute('docCopy', Value);
end;

function TXMLDocumentType.GetDocDate: WideString;
begin
  Result := AttributeNodes['docDate'].Text;
end;

procedure TXMLDocumentType.SetDocDate(Value: WideString);
begin
  SetAttribute('docDate', Value);
end;

function TXMLDocumentType.GetDocDateExport: WideString;
begin
  Result := AttributeNodes['docDateExport'].Text;
end;

procedure TXMLDocumentType.SetDocDateExport(Value: WideString);
begin
  SetAttribute('docDateExport', Value);
end;

function TXMLDocumentType.GetDocId: WideString;
begin
  Result := AttributeNodes['docId'].Text;
end;

procedure TXMLDocumentType.SetDocId(Value: WideString);
begin
  SetAttribute('docId', Value);
end;

function TXMLDocumentType.GetDocNum: WideString;
begin
  Result := AttributeNodes['docNum'].Text;
end;

procedure TXMLDocumentType.SetDocNum(Value: WideString);
begin
  SetAttribute('docNum', Value);
end;

function TXMLDocumentType.GetDocOutgoingNum: WideString;
begin
  Result := AttributeNodes['docOutgoingNum'].Text;
end;

procedure TXMLDocumentType.SetDocOutgoingNum(Value: WideString);
begin
  SetAttribute('docOutgoingNum', Value);
end;

function TXMLDocumentType.GetDocRepeat: WideString;
begin
  Result := AttributeNodes['docRepeat'].Text;
end;

procedure TXMLDocumentType.SetDocRepeat(Value: WideString);
begin
  SetAttribute('docRepeat', Value);
end;

function TXMLDocumentType.GetDocSum: WideString;
begin
  Result := AttributeNodes['docSum'].Text;
end;

procedure TXMLDocumentType.SetDocSum(Value: WideString);
begin
  SetAttribute('docSum', Value);
end;

function TXMLDocumentType.GetDocType: WideString;
begin
  Result := AttributeNodes['docType'].Text;
end;

procedure TXMLDocumentType.SetDocType(Value: WideString);
begin
  SetAttribute('docType', Value);
end;

function TXMLDocumentType.GetEntityAddr: WideString;
begin
  Result := AttributeNodes['entityAddr'].Text;
end;

procedure TXMLDocumentType.SetEntityAddr(Value: WideString);
begin
  SetAttribute('entityAddr', Value);
end;

function TXMLDocumentType.GetEntityBirthDate: WideString;
begin
  Result := AttributeNodes['entityBirthDate'].Text;
end;

procedure TXMLDocumentType.SetEntityBirthDate(Value: WideString);
begin
  SetAttribute('entityBirthDate', Value);
end;

function TXMLDocumentType.GetEntityBirthPlace: WideString;
begin
  Result := AttributeNodes['entityBirthPlace'].Text;
end;

procedure TXMLDocumentType.SetEntityBirthPlace(Value: WideString);
begin
  SetAttribute('entityBirthPlace', Value);
end;

function TXMLDocumentType.GetEntityBirthYear: WideString;
begin
  Result := AttributeNodes['entityBirthYear'].Text;
end;

procedure TXMLDocumentType.SetEntityBirthYear(Value: WideString);
begin
  SetAttribute('entityBirthYear', Value);
end;

function TXMLDocumentType.GetEntityDocument: WideString;
begin
  Result := AttributeNodes['entityDocument'].Text;
end;

procedure TXMLDocumentType.SetEntityDocument(Value: WideString);
begin
  SetAttribute('entityDocument', Value);
end;

function TXMLDocumentType.GetEntityFio: WideString;
begin
  Result := AttributeNodes['entityFio'].Text;
end;

procedure TXMLDocumentType.SetEntityFio(Value: WideString);
begin
  SetAttribute('entityFio', Value);
end;

function TXMLDocumentType.GetEntityFullName: WideString;
begin
  Result := AttributeNodes['entityFullName'].Text;
end;

procedure TXMLDocumentType.SetEntityFullName(Value: WideString);
begin
  SetAttribute('entityFullName', Value);
end;

function TXMLDocumentType.GetEntityInn: WideString;
begin
  Result := AttributeNodes['entityInn'].Text;
end;

procedure TXMLDocumentType.SetEntityInn(Value: WideString);
begin
  SetAttribute('entityInn', Value);
end;

function TXMLDocumentType.GetEntityKpp: WideString;
begin
  Result := AttributeNodes['entityKpp'].Text;
end;

procedure TXMLDocumentType.SetEntityKpp(Value: WideString);
begin
  SetAttribute('entityKpp', Value);
end;

function TXMLDocumentType.GetEntityName: WideString;
begin
  Result := AttributeNodes['entityName'].Text;
end;

procedure TXMLDocumentType.SetEntityName(Value: WideString);
begin
  SetAttribute('entityName', Value);
end;

function TXMLDocumentType.GetEntityNoAccount: WideString;
begin
  Result := AttributeNodes['entityNoAccount'].Text;
end;

procedure TXMLDocumentType.SetEntityNoAccount(Value: WideString);
begin
  SetAttribute('entityNoAccount', Value);
end;

function TXMLDocumentType.GetEntityNumber: WideString;
begin
  Result := AttributeNodes['entityNumber'].Text;
end;

procedure TXMLDocumentType.SetEntityNumber(Value: WideString);
begin
  SetAttribute('entityNumber', Value);
end;

function TXMLDocumentType.GetEntityOgrn: WideString;
begin
  Result := AttributeNodes['entityOgrn'].Text;
end;

procedure TXMLDocumentType.SetEntityOgrn(Value: WideString);
begin
  SetAttribute('entityOgrn', Value);
end;

function TXMLDocumentType.GetEntityPatronymic: WideString;
begin
  Result := AttributeNodes['entityPatronymic'].Text;
end;

procedure TXMLDocumentType.SetEntityPatronymic(Value: WideString);
begin
  SetAttribute('entityPatronymic', Value);
end;

function TXMLDocumentType.GetEntitySurname: WideString;
begin
  Result := AttributeNodes['entitySurname'].Text;
end;

procedure TXMLDocumentType.SetEntitySurname(Value: WideString);
begin
  SetAttribute('entitySurname', Value);
end;

function TXMLDocumentType.GetEntityType: WideString;
begin
  Result := AttributeNodes['entityType'].Text;
end;

procedure TXMLDocumentType.SetEntityType(Value: WideString);
begin
  SetAttribute('entityType', Value);
end;

function TXMLDocumentType.GetEntityWorkPl: WideString;
begin
  Result := AttributeNodes['entityWorkPl'].Text;
end;

procedure TXMLDocumentType.SetEntityWorkPl(Value: WideString);
begin
  SetAttribute('entityWorkPl', Value);
end;

function TXMLDocumentType.GetExternalKey: WideString;
begin
  Result := AttributeNodes['externalKey'].Text;
end;

procedure TXMLDocumentType.SetExternalKey(Value: WideString);
begin
  SetAttribute('externalKey', Value);
end;

function TXMLDocumentType.GetIdActDate: WideString;
begin
  Result := AttributeNodes['idActDate'].Text;
end;

procedure TXMLDocumentType.SetIdActDate(Value: WideString);
begin
  SetAttribute('idActDate', Value);
end;

function TXMLDocumentType.GetIdDate: WideString;
begin
  Result := AttributeNodes['idDate'].Text;
end;

procedure TXMLDocumentType.SetIdDate(Value: WideString);
begin
  SetAttribute('idDate', Value);
end;

function TXMLDocumentType.GetIdDeloDate: WideString;
begin
  Result := AttributeNodes['idDeloDate'].Text;
end;

procedure TXMLDocumentType.SetIdDeloDate(Value: WideString);
begin
  SetAttribute('idDeloDate', Value);
end;

function TXMLDocumentType.GetIdDeloNum: WideString;
begin
  Result := AttributeNodes['idDeloNum'].Text;
end;

procedure TXMLDocumentType.SetIdDeloNum(Value: WideString);
begin
  SetAttribute('idDeloNum', Value);
end;

function TXMLDocumentType.GetIdNum: WideString;
begin
  Result := AttributeNodes['idNum'].Text;
end;

procedure TXMLDocumentType.SetIdNum(Value: WideString);
begin
  SetAttribute('idNum', Value);
end;

function TXMLDocumentType.GetIdPeriod: WideString;
begin
  Result := AttributeNodes['idPeriod'].Text;
end;

procedure TXMLDocumentType.SetIdPeriod(Value: WideString);
begin
  SetAttribute('idPeriod', Value);
end;

function TXMLDocumentType.GetIdPeriodSum: WideString;
begin
  Result := AttributeNodes['idPeriodSum'].Text;
end;

procedure TXMLDocumentType.SetIdPeriodSum(Value: WideString);
begin
  SetAttribute('idPeriodSum', Value);
end;

function TXMLDocumentType.GetIdSdiPFR: WideString;
begin
  Result := AttributeNodes['idSdiPFR'].Text;
end;

procedure TXMLDocumentType.SetIdSdiPFR(Value: WideString);
begin
  SetAttribute('idSdiPFR', Value);
end;

function TXMLDocumentType.GetIdSubjName: WideString;
begin
  Result := AttributeNodes['idSubjName'].Text;
end;

procedure TXMLDocumentType.SetIdSubjName(Value: WideString);
begin
  SetAttribute('idSubjName', Value);
end;

function TXMLDocumentType.GetIdSubjType: WideString;
begin
  Result := AttributeNodes['idSubjType'].Text;
end;

procedure TXMLDocumentType.SetIdSubjType(Value: WideString);
begin
  SetAttribute('idSubjType', Value);
end;

function TXMLDocumentType.GetIdTypeName: WideString;
begin
  Result := AttributeNodes['idTypeName'].Text;
end;

procedure TXMLDocumentType.SetIdTypeName(Value: WideString);
begin
  SetAttribute('idTypeName', Value);
end;

function TXMLDocumentType.GetIpActDateEnd: WideString;
begin
  Result := AttributeNodes['ipActDateEnd'].Text;
end;

procedure TXMLDocumentType.SetIpActDateEnd(Value: WideString);
begin
  SetAttribute('ipActDateEnd', Value);
end;

function TXMLDocumentType.GetIpActDateStart: WideString;
begin
  Result := AttributeNodes['ipActDateStart'].Text;
end;

procedure TXMLDocumentType.SetIpActDateStart(Value: WideString);
begin
  SetAttribute('ipActDateStart', Value);
end;

function TXMLDocumentType.GetIpId: WideString;
begin
  Result := AttributeNodes['ipId'].Text;
end;

procedure TXMLDocumentType.SetIpId(Value: WideString);
begin
  SetAttribute('ipId', Value);
end;

function TXMLDocumentType.GetIpNum: WideString;
begin
  Result := AttributeNodes['ipNum'].Text;
end;

procedure TXMLDocumentType.SetIpNum(Value: WideString);
begin
  SetAttribute('ipNum', Value);
end;

function TXMLDocumentType.GetIpRestDebtSum: WideString;
begin
  Result := AttributeNodes['ipRestDebtSum'].Text;
end;

procedure TXMLDocumentType.SetIpRestDebtSum(Value: WideString);
begin
  SetAttribute('ipRestDebtSum', Value);
end;

function TXMLDocumentType.GetIpRiseDate: WideString;
begin
  Result := AttributeNodes['ipRiseDate'].Text;
end;

procedure TXMLDocumentType.SetIpRiseDate(Value: WideString);
begin
  SetAttribute('ipRiseDate', Value);
end;

function TXMLDocumentType.GetMessage: WideString;
begin
  Result := AttributeNodes['message'].Text;
end;

procedure TXMLDocumentType.SetMessage(Value: WideString);
begin
  SetAttribute('message', Value);
end;

function TXMLDocumentType.GetMessageCode: WideString;
begin
  Result := AttributeNodes['messageCode'].Text;
end;

procedure TXMLDocumentType.SetMessageCode(Value: WideString);
begin
  SetAttribute('messageCode', Value);
end;

function TXMLDocumentType.GetMetaObjectName: WideString;
begin
  Result := AttributeNodes['metaObjectName'].Text;
end;

procedure TXMLDocumentType.SetMetaObjectName(Value: WideString);
begin
  SetAttribute('metaObjectName', Value);
end;

function TXMLDocumentType.GetMsg: WideString;
begin
  Result := AttributeNodes['msg'].Text;
end;

procedure TXMLDocumentType.SetMsg(Value: WideString);
begin
  SetAttribute('msg', Value);
end;

function TXMLDocumentType.GetMsgCode: WideString;
begin
  Result := AttributeNodes['msgCode'].Text;
end;

procedure TXMLDocumentType.SetMsgCode(Value: WideString);
begin
  SetAttribute('msgCode', Value);
end;

function TXMLDocumentType.GetMsgSize: WideString;
begin
  Result := AttributeNodes['msgSize'].Text;
end;

procedure TXMLDocumentType.SetMsgSize(Value: WideString);
begin
  SetAttribute('msgSize', Value);
end;

function TXMLDocumentType.GetMsgType: WideString;
begin
  Result := AttributeNodes['msgType'].Text;
end;

procedure TXMLDocumentType.SetMsgType(Value: WideString);
begin
  SetAttribute('msgType', Value);
end;

function TXMLDocumentType.GetOrgan: WideString;
begin
  Result := AttributeNodes['organ'].Text;
end;

procedure TXMLDocumentType.SetOrgan(Value: WideString);
begin
  SetAttribute('organ', Value);
end;

function TXMLDocumentType.GetOrganAddr: WideString;
begin
  Result := AttributeNodes['organAddr'].Text;
end;

procedure TXMLDocumentType.SetOrganAddr(Value: WideString);
begin
  SetAttribute('organAddr', Value);
end;

function TXMLDocumentType.GetOrganCode: WideString;
begin
  Result := AttributeNodes['organCode'].Text;
end;

procedure TXMLDocumentType.SetOrganCode(Value: WideString);
begin
  SetAttribute('organCode', Value);
end;

function TXMLDocumentType.GetOrganSignFio: WideString;
begin
  Result := AttributeNodes['organSignFio'].Text;
end;

procedure TXMLDocumentType.SetOrganSignFio(Value: WideString);
begin
  SetAttribute('organSignFio', Value);
end;

function TXMLDocumentType.GetOrganSignPost: WideString;
begin
  Result := AttributeNodes['organSignPost'].Text;
end;

procedure TXMLDocumentType.SetOrganSignPost(Value: WideString);
begin
  SetAttribute('organSignPost', Value);
end;

function TXMLDocumentType.GetPackDate: WideString;
begin
  Result := AttributeNodes['packDate'].Text;
end;

procedure TXMLDocumentType.SetPackDate(Value: WideString);
begin
  SetAttribute('packDate', Value);
end;

function TXMLDocumentType.GetPackId: WideString;
begin
  Result := AttributeNodes['packId'].Text;
end;

procedure TXMLDocumentType.SetPackId(Value: WideString);
begin
  SetAttribute('packId', Value);
end;

function TXMLDocumentType.GetPackNumber: WideString;
begin
  Result := AttributeNodes['packNumber'].Text;
end;

procedure TXMLDocumentType.SetPackNumber(Value: WideString);
begin
  SetAttribute('packNumber', Value);
end;

function TXMLDocumentType.GetPaymentPurpose: WideString;
begin
  Result := AttributeNodes['paymentPurpose'].Text;
end;

procedure TXMLDocumentType.SetPaymentPurpose(Value: WideString);
begin
  SetAttribute('paymentPurpose', Value);
end;

function TXMLDocumentType.GetPaymentPAccount: WideString;
begin
  Result := AttributeNodes['paymentPAccount'].Text;
end;

procedure TXMLDocumentType.SetPaymentPAccount(Value: WideString);
begin
  SetAttribute('paymentPAccount', Value);
end;

function TXMLDocumentType.GetPaymentPCAccount: WideString;
begin
  Result := AttributeNodes['paymentPCAccount'].Text;
end;

procedure TXMLDocumentType.SetPaymentPCAccount(Value: WideString);
begin
  SetAttribute('paymentPCAccount', Value);
end;

function TXMLDocumentType.GetPaymentPBankName: WideString;
begin
  Result := AttributeNodes['paymentPBankName'].Text;
end;

procedure TXMLDocumentType.SetPaymentPBankName(Value: WideString);
begin
  SetAttribute('paymentPBankName', Value);
end;

function TXMLDocumentType.GetPaymentPBankBic: WideString;
begin
  Result := AttributeNodes['paymentPBankBic'].Text;
end;

procedure TXMLDocumentType.SetPaymentPBankBic(Value: WideString);
begin
  SetAttribute('paymentPBankBic', Value);
end;

function TXMLDocumentType.GetPaymentPenaltyDate: WideString;
begin
  Result := AttributeNodes['paymentPenaltyDate'].Text;
end;

procedure TXMLDocumentType.SetPaymentPenaltyDate(Value: WideString);
begin
  SetAttribute('paymentPenaltyDate', Value);
end;

function TXMLDocumentType.GetSourceBarcode: WideString;
begin
  Result := AttributeNodes['sourceBarcode'].Text;
end;

procedure TXMLDocumentType.SetSourceBarcode(Value: WideString);
begin
  SetAttribute('sourceBarcode', Value);
end;

function TXMLDocumentType.GetSpiId: WideString;
begin
  Result := AttributeNodes['spiId'].Text;
end;

procedure TXMLDocumentType.SetSpiId(Value: WideString);
begin
  SetAttribute('spiId', Value);
end;

function TXMLDocumentType.GetSpiFio: WideString;
begin
  Result := AttributeNodes['spiFio'].Text;
end;

procedure TXMLDocumentType.SetSpiFio(Value: WideString);
begin
  SetAttribute('spiFio', Value);
end;

function TXMLDocumentType.GetSpiPhone: WideString;
begin
  Result := AttributeNodes['spiPhone'].Text;
end;

procedure TXMLDocumentType.SetSpiPhone(Value: WideString);
begin
  SetAttribute('spiPhone', Value);
end;

function TXMLDocumentType.GetSpiTypeCode: WideString;
begin
  Result := AttributeNodes['spiTypeCode'].Text;
end;

procedure TXMLDocumentType.SetSpiTypeCode(Value: WideString);
begin
  SetAttribute('spiTypeCode', Value);
end;

function TXMLDocumentType.GetExtInformation(Index: Integer): IXMLExtInformationType;
begin
  Result := List[Index] as IXMLExtInformationType;
end;

function TXMLDocumentType.Add: IXMLExtInformationType;
begin
  Result := AddItem(-1) as IXMLExtInformationType;
end;

function TXMLDocumentType.Insert(const Index: Integer): IXMLExtInformationType;
begin
  Result := AddItem(Index) as IXMLExtInformationType;
end;

{ TXMLDocumentTypeList }

function TXMLDocumentTypeList.Add: IXMLDocumentType;
begin
  Result := AddItem(-1) as IXMLDocumentType;
end;

function TXMLDocumentTypeList.Insert(const Index: Integer): IXMLDocumentType;
begin
  Result := AddItem(Index) as IXMLDocumentType;
end;
function TXMLDocumentTypeList.GetItem(Index: Integer): IXMLDocumentType;
begin
  Result := List[Index] as IXMLDocumentType;
end;

{ TXMLExtInformationType }

function TXMLExtInformationType.GetAccNum: WideString;
begin
  Result := AttributeNodes['accNum'].Text;
end;

procedure TXMLExtInformationType.SetAccNum(Value: WideString);
begin
  SetAttribute('accNum', Value);
end;

function TXMLExtInformationType.GetActDate: WideString;
begin
  Result := AttributeNodes['actDate'].Text;
end;

procedure TXMLExtInformationType.SetActDate(Value: WideString);
begin
  SetAttribute('actDate', Value);
end;

function TXMLExtInformationType.GetAddress: WideString;
begin
  Result := AttributeNodes['address'].Text;
end;

procedure TXMLExtInformationType.SetAddress(Value: WideString);
begin
  SetAttribute('address', Value);
end;

function TXMLExtInformationType.GetBankName: WideString;
begin
  Result := AttributeNodes['bankName'].Text;
end;

procedure TXMLExtInformationType.SetBankName(Value: WideString);
begin
  SetAttribute('bankName', Value);
end;

function TXMLExtInformationType.GetBicBank: WideString;
begin
  Result := AttributeNodes['bicBank'].Text;
end;

procedure TXMLExtInformationType.SetBicBank(Value: WideString);
begin
  SetAttribute('bicBank', Value);
end;

function TXMLExtInformationType.GetCurrencyCode: WideString;
begin
  Result := AttributeNodes['currencyCode'].Text;
end;

procedure TXMLExtInformationType.SetCurrencyCode(Value: WideString);
begin
  SetAttribute('currencyCode', Value);
end;

function TXMLExtInformationType.GetDataSum: WideString;
begin
  Result := AttributeNodes['dataSum'].Text;
end;

procedure TXMLExtInformationType.SetDataSum(Value: WideString);
begin
  SetAttribute('dataSum', Value);
end;

function TXMLExtInformationType.GetDate: WideString;
begin
  Result := AttributeNodes['date'].Text;
end;

procedure TXMLExtInformationType.SetDate(Value: WideString);
begin
  SetAttribute('date', Value);
end;

function TXMLExtInformationType.GetDeptCode: WideString;
begin
  Result := AttributeNodes['deptCode'].Text;
end;

procedure TXMLExtInformationType.SetDeptCode(Value: WideString);
begin
  SetAttribute('deptCode', Value);
end;

function TXMLExtInformationType.GetExtKey: WideString;
begin
  Result := AttributeNodes['extKey'].Text;
end;

procedure TXMLExtInformationType.SetExtKey(Value: WideString);
begin
  SetAttribute('extKey', Value);
end;

function TXMLExtInformationType.GetFloor: WideString;
begin
  Result := AttributeNodes['floor'].Text;
end;

procedure TXMLExtInformationType.SetFloor(Value: WideString);
begin
  SetAttribute('floor', Value);
end;

function TXMLExtInformationType.GetFloorNum: WideString;
begin
  Result := AttributeNodes['floorNum'].Text;
end;

procedure TXMLExtInformationType.SetFloorNum(Value: WideString);
begin
  SetAttribute('floorNum', Value);
end;

function TXMLExtInformationType.GetInn: WideString;
begin
  Result := AttributeNodes['inn'].Text;
end;

procedure TXMLExtInformationType.SetInn(Value: WideString);
begin
  SetAttribute('inn', Value);
end;

function TXMLExtInformationType.GetInvNum: WideString;
begin
  Result := AttributeNodes['invNum'].Text;
end;

procedure TXMLExtInformationType.SetInvNum(Value: WideString);
begin
  SetAttribute('invNum', Value);
end;

function TXMLExtInformationType.GetLegalAddr: WideString;
begin
  Result := AttributeNodes['legalAddr'].Text;
end;

procedure TXMLExtInformationType.SetLegalAddr(Value: WideString);
begin
  SetAttribute('legalAddr', Value);
end;

function TXMLExtInformationType.GetLetter: WideString;
begin
  Result := AttributeNodes['letter'].Text;
end;

procedure TXMLExtInformationType.SetLetter(Value: WideString);
begin
  SetAttribute('letter', Value);
end;

function TXMLExtInformationType.GetKindDataType: WideString;
begin
  Result := AttributeNodes['kindDataType'].Text;
end;

procedure TXMLExtInformationType.SetKindDataType(Value: WideString);
begin
  SetAttribute('kindDataType', Value);
end;

function TXMLExtInformationType.GetKpp: WideString;
begin
  Result := AttributeNodes['kpp'].Text;
end;

procedure TXMLExtInformationType.SetKpp(Value: WideString);
begin
  SetAttribute('kpp', Value);
end;

function TXMLExtInformationType.GetMetaObjectName: WideString;
begin
  Result := AttributeNodes['metaObjectName'].Text;
end;

procedure TXMLExtInformationType.SetMetaObjectName(Value: WideString);
begin
  SetAttribute('metaObjectName', Value);
end;

function TXMLExtInformationType.GetName: WideString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLExtInformationType.SetName(Value: WideString);
begin
  SetAttribute('name', Value);
end;

function TXMLExtInformationType.GetNum: WideString;
begin
  Result := AttributeNodes['num'].Text;
end;

procedure TXMLExtInformationType.SetNum(Value: WideString);
begin
  SetAttribute('num', Value);
end;

function TXMLExtInformationType.GetOrgName: WideString;
begin
  Result := AttributeNodes['orgName'].Text;
end;

procedure TXMLExtInformationType.SetOrgName(Value: WideString);
begin
  SetAttribute('orgName', Value);
end;

function TXMLExtInformationType.GetPhoneNum: WideString;
begin
  Result := AttributeNodes['phoneNum'].Text;
end;

procedure TXMLExtInformationType.SetPhoneNum(Value: WideString);
begin
  SetAttribute('phoneNum', Value);
end;

function TXMLExtInformationType.GetSum: WideString;
begin
  Result := AttributeNodes['sum'].Text;
end;

procedure TXMLExtInformationType.SetSum(Value: WideString);
begin
  SetAttribute('sum', Value);
end;

function TXMLExtInformationType.GetTransportColor: WideString;
begin
  Result := AttributeNodes['transportColor'].Text;
end;

procedure TXMLExtInformationType.SetTransportColor(Value: WideString);
begin
  SetAttribute('transportColor', Value);
end;

function TXMLExtInformationType.GetTransportEngine: WideString;
begin
  Result := AttributeNodes['transportEngine'].Text;
end;

procedure TXMLExtInformationType.SetTransportEngine(Value: WideString);
begin
  SetAttribute('transportEngine', Value);
end;

function TXMLExtInformationType.GetTransportModel: WideString;
begin
  Result := AttributeNodes['transportModel'].Text;
end;

procedure TXMLExtInformationType.SetTransportModel(Value: WideString);
begin
  SetAttribute('transportModel', Value);
end;

function TXMLExtInformationType.GetTransportVin: WideString;
begin
  Result := AttributeNodes['transportVin'].Text;
end;

procedure TXMLExtInformationType.SetTransportVin(Value: WideString);
begin
  SetAttribute('transportVin', Value);
end;

function TXMLExtInformationType.GetTypeData: WideString;
begin
  Result := AttributeNodes['typeData'].Text;
end;

procedure TXMLExtInformationType.SetTypeData(Value: WideString);
begin
  SetAttribute('typeData', Value);
end;

function TXMLExtInformationType.GetSer: WideString;
begin
  Result := AttributeNodes['ser'].Text;
end;

procedure TXMLExtInformationType.SetSer(Value: WideString);
begin
  SetAttribute('ser', Value);
end;

function TXMLExtInformationType.GetSquare: WideString;
begin
  Result := AttributeNodes['square'].Text;
end;

procedure TXMLExtInformationType.SetSquare(Value: WideString);
begin
  SetAttribute('square', Value);
end;

function TXMLExtInformationType.GetStatus: WideString;
begin
  Result := AttributeNodes['status'].Text;
end;

procedure TXMLExtInformationType.SetStatus(Value: WideString);
begin
  SetAttribute('status', Value);
end;

{ TXMLExtInformationTypeList }

function TXMLExtInformationTypeList.Add: IXMLExtInformationType;
begin
  Result := AddItem(-1) as IXMLExtInformationType;
end;

function TXMLExtInformationTypeList.Insert(const Index: Integer): IXMLExtInformationType;
begin
  Result := AddItem(Index) as IXMLExtInformationType;
end;
function TXMLExtInformationTypeList.GetItem(Index: Integer): IXMLExtInformationType;
begin
  Result := List[Index] as IXMLExtInformationType;
end;

end. 