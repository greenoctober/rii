
{*****************************************************************************}
{                                                                             }
{                              XML Data Binding                               }
{                                                                             }
{         Generated on: 19.02.2014 1:01:53                                    }
{       Generated from: F:\prog\GitHub\regmvv-win\template.document.pfr.xml   }
{   Settings stored in: F:\prog\GitHub\regmvv-win\template.document.pfr.xdb   }
{                                                                             }
{*****************************************************************************}

unit UXmlRIIPFRDoc;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLDataBlockType = interface;
  IXMLQueryType = interface;
  IXMLQueryTypeList = interface;
  IXMLIPType = interface;
  IXMLDataType = interface;
  IXMLDataTypeList = interface;
  IXMLIdentificationType = interface;
  IXMLAddressType = interface;
  IXMLSvedRabType = interface;
  IXMLSvedRucType = interface;
  IXMLSvedDoxodType = interface;
  IXMLDebtorStateType = interface;
  IXMLExtAnswerType = interface;
  IXMLExtAnswerTypeList = interface;
  IXMLRestrictnType = interface;
  IXMLRestrictnTypeList = interface;
  IXMLReportType = interface;
  IXMLReportTypeList = interface;
  IXMLExtDocType = interface;
  IXMLExtDocTypeList = interface;
  IXMLPayRekvType = interface;
  IXMLPayRekvTypeList = interface;
  IXMLProcDocType = interface;
  IXMLProcDocTypeList = interface;
  IXMLExtQueryType = interface;
  IXMLExtQueryTypeList = interface;
  IXMLAnswerType = interface;
  IXMLAnswerTypeList = interface;
  IXMLAnswerDocType = interface;
  IXMLAnswerSumType = interface;
  IXMLExtDebtFixType = interface;
  IXMLExtDebtFixTypeList = interface;
  IXMLRecallDocType = interface;
  IXMLRecallDocTypeList = interface;
  IXMLTMessageType = interface;
  IXMLTMessageTypeList = interface;

{ IXMLDataBlockType }

  IXMLDataBlockType = interface(IXMLNode)
    ['{BA6A58E8-8EEC-4493-AF56-A18BF2D9BF9D}']
    { Property Accessors }
    function GetKey: WideString;
    function GetFsspTo: WideString;
    function GetFsspOsp: WideString;
    function GetOrgAMD: WideString;
    function GetDivAMD: WideString;
    function GetSigned: WideString;
    function GetQuery: IXMLQueryTypeList;
    function GetExtAnswer: IXMLExtAnswerTypeList;
    function GetRestrictn: IXMLRestrictnTypeList;
    function GetReport: IXMLReportTypeList;
    function GetExtDoc: IXMLExtDocTypeList;
    function GetProcDoc: IXMLProcDocTypeList;
    function GetExtQuery: IXMLExtQueryTypeList;
    function GetAnswer: IXMLAnswerTypeList;
    function GetExtDebtFix: IXMLExtDebtFixTypeList;
    function GetRecallDoc: IXMLRecallDocTypeList;
    function GetTMessage: IXMLTMessageTypeList;
    procedure SetKey(Value: WideString);
    procedure SetFsspTo(Value: WideString);
    procedure SetFsspOsp(Value: WideString);
    procedure SetOrgAMD(Value: WideString);
    procedure SetDivAMD(Value: WideString);
    procedure SetSigned(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property FsspTo: WideString read GetFsspTo write SetFsspTo;
    property FsspOsp: WideString read GetFsspOsp write SetFsspOsp;
    property OrgAMD: WideString read GetOrgAMD write SetOrgAMD;
    property DivAMD: WideString read GetDivAMD write SetDivAMD;
    property Signed: WideString read GetSigned write SetSigned;
    property Query: IXMLQueryTypeList read GetQuery;
    property ExtAnswer: IXMLExtAnswerTypeList read GetExtAnswer;
    property Restrictn: IXMLRestrictnTypeList read GetRestrictn;
    property Report: IXMLReportTypeList read GetReport;
    property ExtDoc: IXMLExtDocTypeList read GetExtDoc;
    property ProcDoc: IXMLProcDocTypeList read GetProcDoc;
    property ExtQuery: IXMLExtQueryTypeList read GetExtQuery;
    property Answer: IXMLAnswerTypeList read GetAnswer;
    property ExtDebtFix: IXMLExtDebtFixTypeList read GetExtDebtFix;
    property RecallDoc: IXMLRecallDocTypeList read GetRecallDoc;
    property TMessage: IXMLTMessageTypeList read GetTMessage;
  end;

{ IXMLQueryType }

  IXMLQueryType = interface(IXMLNode)
    ['{2CA3C01E-67B5-4C03-83A5-89AD543B31DC}']
    { Property Accessors }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetChSPIFio: WideString;
    function GetChSPIPost: WideString;
    function GetAnsDate: WideString;
    function GetSearchRegion: WideString;
    function GetIP: IXMLIPType;
    function GetData: IXMLDataTypeList;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetChSPIFio(Value: WideString);
    procedure SetChSPIPost(Value: WideString);
    procedure SetAnsDate(Value: WideString);
    procedure SetSearchRegion(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property SPI: WideString read GetSPI write SetSPI;
    property SPIFio: WideString read GetSPIFio write SetSPIFio;
    property SPIPost: WideString read GetSPIPost write SetSPIPost;
    property ChSPIFio: WideString read GetChSPIFio write SetChSPIFio;
    property ChSPIPost: WideString read GetChSPIPost write SetChSPIPost;
    property AnsDate: WideString read GetAnsDate write SetAnsDate;
    property SearchRegion: WideString read GetSearchRegion write SetSearchRegion;
    property IP: IXMLIPType read GetIP;
    property Data: IXMLDataTypeList read GetData;
  end;

{ IXMLQueryTypeList }

  IXMLQueryTypeList = interface(IXMLNodeCollection)
    ['{12EF1E60-8702-4947-A0A5-1FE85A521F66}']
    { Methods & Properties }
    function Add: IXMLQueryType;
    function Insert(const Index: Integer): IXMLQueryType;
    function GetItem(Index: Integer): IXMLQueryType;
    property Items[Index: Integer]: IXMLQueryType read GetItem; default;
  end;

{ IXMLIPType }

  IXMLIPType = interface(IXMLNode)
    ['{AA16D938-6728-4982-937E-2ABE3BCE0ABB}']
    { Property Accessors }
    function GetKey: WideString;
    function GetIPNum: WideString;
    function GetIPDate: WideString;
    function GetIPName: WideString;
    function GetIDType: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetIDSubj: WideString;
    function GetIDSubjName: WideString;
    function GetIDSum: WideString;
    function GetIPDebt: WideString;
    function GetDebtorType: WideString;
    function GetDebtorName: WideString;
    function GetDebtorAdr: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorOGRN: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorBirthYear: WideString;
    function GetDebtorBirthPlace: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIPNum(Value: WideString);
    procedure SetIPDate(Value: WideString);
    procedure SetIPName(Value: WideString);
    procedure SetIDType(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetIDSubj(Value: WideString);
    procedure SetIDSubjName(Value: WideString);
    procedure SetIDSum(Value: WideString);
    procedure SetIPDebt(Value: WideString);
    procedure SetDebtorType(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorOGRN(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorBirthYear(Value: WideString);
    procedure SetDebtorBirthPlace(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property IPNum: WideString read GetIPNum write SetIPNum;
    property IPDate: WideString read GetIPDate write SetIPDate;
    property IPName: WideString read GetIPName write SetIPName;
    property IDType: WideString read GetIDType write SetIDType;
    property IDNum: WideString read GetIDNum write SetIDNum;
    property IDDate: WideString read GetIDDate write SetIDDate;
    property IDSubj: WideString read GetIDSubj write SetIDSubj;
    property IDSubjName: WideString read GetIDSubjName write SetIDSubjName;
    property IDSum: WideString read GetIDSum write SetIDSum;
    property IPDebt: WideString read GetIPDebt write SetIPDebt;
    property DebtorType: WideString read GetDebtorType write SetDebtorType;
    property DebtorName: WideString read GetDebtorName write SetDebtorName;
    property DebtorAdr: WideString read GetDebtorAdr write SetDebtorAdr;
    property DebtorINN: WideString read GetDebtorINN write SetDebtorINN;
    property DebtorKPP: WideString read GetDebtorKPP write SetDebtorKPP;
    property DebtorOGRN: WideString read GetDebtorOGRN write SetDebtorOGRN;
    property DebtorBirthDate: WideString read GetDebtorBirthDate write SetDebtorBirthDate;
    property DebtorBirthYear: WideString read GetDebtorBirthYear write SetDebtorBirthYear;
    property DebtorBirthPlace: WideString read GetDebtorBirthPlace write SetDebtorBirthPlace;
    property SPI: WideString read GetSPI write SetSPI;
    property SPIFio: WideString read GetSPIFio write SetSPIFio;
  end;

{ IXMLDataType }

  IXMLDataType = interface(IXMLNode)
    ['{49DEB571-801A-4502-B86F-7572E8585039}']
    { Property Accessors }
    function GetKey: WideString;
    function GetActDate: WideString;
    function GetDebtorName: WideString;
    function GetKindData: WideString;
    function GetIdentification: IXMLIdentificationType;
    function GetAddress: IXMLAddressType;
    function GetSvedRab: IXMLSvedRabType;
    function GetSvedRuc: IXMLSvedRucType;
    function GetSvedDoxod: IXMLSvedDoxodType;
    function GetDebtorState: IXMLDebtorStateType;
    procedure SetKey(Value: WideString);
    procedure SetActDate(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetKindData(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property ActDate: WideString read GetActDate write SetActDate;
    property DebtorName: WideString read GetDebtorName write SetDebtorName;
    property KindData: WideString read GetKindData write SetKindData;
    property Identification: IXMLIdentificationType read GetIdentification;
    property Address: IXMLAddressType read GetAddress;
    property SvedRab: IXMLSvedRabType read GetSvedRab;
    property SvedRuc: IXMLSvedRucType read GetSvedRuc;
    property SvedDoxod: IXMLSvedDoxodType read GetSvedDoxod;
    property DebtorState: IXMLDebtorStateType read GetDebtorState;
  end;

{ IXMLDataTypeList }

  IXMLDataTypeList = interface(IXMLNodeCollection)
    ['{D8A4168C-6712-48EF-B83C-AF5AE0A7B723}']
    { Methods & Properties }
    function Add: IXMLDataType;
    function Insert(const Index: Integer): IXMLDataType;
    function GetItem(Index: Integer): IXMLDataType;
    property Items[Index: Integer]: IXMLDataType read GetItem; default;
  end;

{ IXMLIdentificationType }

  IXMLIdentificationType = interface(IXMLNode)
    ['{1013D127-F531-4273-A55A-7BDA0A09686E}']
    { Property Accessors }
    function GetTypeDoc: WideString;
    function GetSerDoc: WideString;
    function GetNumDoc: WideString;
    function GetIssuedDoc: WideString;
    function GetDateDoc: WideString;
    function GetCodeDep: WideString;
    function GetFIODoc: WideString;
    procedure SetTypeDoc(Value: WideString);
    procedure SetSerDoc(Value: WideString);
    procedure SetNumDoc(Value: WideString);
    procedure SetIssuedDoc(Value: WideString);
    procedure SetDateDoc(Value: WideString);
    procedure SetCodeDep(Value: WideString);
    procedure SetFIODoc(Value: WideString);
    { Methods & Properties }
    property TypeDoc: WideString read GetTypeDoc write SetTypeDoc;
    property SerDoc: WideString read GetSerDoc write SetSerDoc;
    property NumDoc: WideString read GetNumDoc write SetNumDoc;
    property IssuedDoc: WideString read GetIssuedDoc write SetIssuedDoc;
    property DateDoc: WideString read GetDateDoc write SetDateDoc;
    property CodeDep: WideString read GetCodeDep write SetCodeDep;
    property FIODoc: WideString read GetFIODoc write SetFIODoc;
  end;

{ IXMLAddressType }

  IXMLAddressType = interface(IXMLNode)
    ['{5F8F4078-40D0-4BB2-9C1A-110222661BBB}']
    { Property Accessors }
    function GetStrAddr: WideString;
    procedure SetStrAddr(Value: WideString);
    { Methods & Properties }
    property StrAddr: WideString read GetStrAddr write SetStrAddr;
  end;

{ IXMLSvedRabType }

  IXMLSvedRabType = interface(IXMLNode)
    ['{230E10AF-3434-481B-9915-1F065157D151}']
    { Property Accessors }
    function GetNaimOrg: WideString;
    function GetAdresJ: WideString;
    function GetAdresF: WideString;
    procedure SetNaimOrg(Value: WideString);
    procedure SetAdresJ(Value: WideString);
    procedure SetAdresF(Value: WideString);
    { Methods & Properties }
    property NaimOrg: WideString read GetNaimOrg write SetNaimOrg;
    property AdresJ: WideString read GetAdresJ write SetAdresJ;
    property AdresF: WideString read GetAdresF write SetAdresF;
  end;

{ IXMLSvedRucType }

  IXMLSvedRucType = interface(IXMLNode)
    ['{7A8E042A-1129-45B5-AD5D-3854FE8F817C}']
    { Property Accessors }
    function GetNameRuc: WideString;
    function GetAddressRuc: WideString;
    function GetTelRuc: WideString;
    function GetNameBux: WideString;
    function GetAddressBux: WideString;
    function GetTelBux: WideString;
    procedure SetNameRuc(Value: WideString);
    procedure SetAddressRuc(Value: WideString);
    procedure SetTelRuc(Value: WideString);
    procedure SetNameBux(Value: WideString);
    procedure SetAddressBux(Value: WideString);
    procedure SetTelBux(Value: WideString);
    { Methods & Properties }
    property NameRuc: WideString read GetNameRuc write SetNameRuc;
    property AddressRuc: WideString read GetAddressRuc write SetAddressRuc;
    property TelRuc: WideString read GetTelRuc write SetTelRuc;
    property NameBux: WideString read GetNameBux write SetNameBux;
    property AddressBux: WideString read GetAddressBux write SetAddressBux;
    property TelBux: WideString read GetTelBux write SetTelBux;
  end;

{ IXMLSvedDoxodType }

  IXMLSvedDoxodType = interface(IXMLNode)
    ['{7ED6BB26-A730-4863-9B89-6CE1360A42FD}']
    { Property Accessors }
    function GetDataDox: WideString;
    function GetSumDox: WideString;
    procedure SetDataDox(Value: WideString);
    procedure SetSumDox(Value: WideString);
    { Methods & Properties }
    property DataDox: WideString read GetDataDox write SetDataDox;
    property SumDox: WideString read GetSumDox write SetSumDox;
  end;

{ IXMLDebtorStateType }

  IXMLDebtorStateType = interface(IXMLNode)
    ['{C5851C20-2AE3-416D-ABEF-DDD61712A049}']
    { Property Accessors }
    function GetState: WideString;
    procedure SetState(Value: WideString);
    { Methods & Properties }
    property State: WideString read GetState write SetState;
  end;

{ IXMLExtAnswerType }

  IXMLExtAnswerType = interface(IXMLNodeCollection)
    ['{BC10245B-0287-44E5-A924-3AB95AAECF94}']
    { Property Accessors }
    function GetKey: WideString;
    function GetAnswerType: WideString;
    function GetQueryKey: WideString;
    function GetIPkey: WideString;
    function GetData(Index: Integer): IXMLDataType;
    procedure SetKey(Value: WideString);
    procedure SetAnswerType(Value: WideString);
    procedure SetQueryKey(Value: WideString);
    procedure SetIPkey(Value: WideString);
    { Methods & Properties }
    function Add: IXMLDataType;
    function Insert(const Index: Integer): IXMLDataType;
    property Key: WideString read GetKey write SetKey;
    property AnswerType: WideString read GetAnswerType write SetAnswerType;
    property QueryKey: WideString read GetQueryKey write SetQueryKey;
    property IPkey: WideString read GetIPkey write SetIPkey;
    property Data[Index: Integer]: IXMLDataType read GetData; default;
  end;

{ IXMLExtAnswerTypeList }

  IXMLExtAnswerTypeList = interface(IXMLNodeCollection)
    ['{37BC4376-8EB1-440A-91A7-8CE2F52FEF42}']
    { Methods & Properties }
    function Add: IXMLExtAnswerType;
    function Insert(const Index: Integer): IXMLExtAnswerType;
    function GetItem(Index: Integer): IXMLExtAnswerType;
    property Items[Index: Integer]: IXMLExtAnswerType read GetItem; default;
  end;

{ IXMLRestrictnType }

  IXMLRestrictnType = interface(IXMLNode)
    ['{86D6E3CB-9510-4667-8591-4AC0C8F47ABC}']
    { Property Accessors }
    function GetKey: WideString;
    function GetRestrictnKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetDocNum: WideString;
    function GetAppOrder: WideString;
    function GetReason: WideString;
    function GetArticle: WideString;
    function GetPart: WideString;
    function GetIP: IXMLIPType;
    function GetData: IXMLDataTypeList;
    procedure SetKey(Value: WideString);
    procedure SetRestrictnKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetAppOrder(Value: WideString);
    procedure SetReason(Value: WideString);
    procedure SetArticle(Value: WideString);
    procedure SetPart(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property RestrictnKey: WideString read GetRestrictnKey write SetRestrictnKey;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property SPI: WideString read GetSPI write SetSPI;
    property SPIFio: WideString read GetSPIFio write SetSPIFio;
    property SPIPost: WideString read GetSPIPost write SetSPIPost;
    property DocNum: WideString read GetDocNum write SetDocNum;
    property AppOrder: WideString read GetAppOrder write SetAppOrder;
    property Reason: WideString read GetReason write SetReason;
    property Article: WideString read GetArticle write SetArticle;
    property Part: WideString read GetPart write SetPart;
    property IP: IXMLIPType read GetIP;
    property Data: IXMLDataTypeList read GetData;
  end;

{ IXMLRestrictnTypeList }

  IXMLRestrictnTypeList = interface(IXMLNodeCollection)
    ['{563DCDB9-7CA9-4A46-B4D1-C4BE1AB4A60A}']
    { Methods & Properties }
    function Add: IXMLRestrictnType;
    function Insert(const Index: Integer): IXMLRestrictnType;
    function GetItem(Index: Integer): IXMLRestrictnType;
    property Items[Index: Integer]: IXMLRestrictnType read GetItem; default;
  end;

{ IXMLReportType }

  IXMLReportType = interface(IXMLNode)
    ['{E05EA7AF-DA20-484C-B238-88842715F3E5}']
    { Property Accessors }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetRestrictnKey: WideString;
    function GetIPKey: WideString;
    function GetAnswerType: WideString;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetRestrictnKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetAnswerType(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property RestrictnKey: WideString read GetRestrictnKey write SetRestrictnKey;
    property IPKey: WideString read GetIPKey write SetIPKey;
    property AnswerType: WideString read GetAnswerType write SetAnswerType;
  end;

{ IXMLReportTypeList }

  IXMLReportTypeList = interface(IXMLNodeCollection)
    ['{36BA0DDE-DE93-4759-A1F9-AD8373D4A5E1}']
    { Methods & Properties }
    function Add: IXMLReportType;
    function Insert(const Index: Integer): IXMLReportType;
    function GetItem(Index: Integer): IXMLReportType;
    property Items[Index: Integer]: IXMLReportType read GetItem; default;
  end;

{ IXMLExtDocType }

  IXMLExtDocType = interface(IXMLNode)
    ['{35865507-F763-496B-B11E-9662BE60931A}']
    { Property Accessors }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetBarCode: WideString;
    function GetIDType: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetIDCopy: WideString;
    function GetDeloNum: WideString;
    function GetDeloDate: WideString;
    function GetOrgan: WideString;
    function GetOrganAdr: WideString;
    function GetOrganSignPost: WideString;
    function GetOrganSignFio: WideString;
    function GetClaimerType: WideString;
    function GetClaimerName: WideString;
    function GetAktDate: WideString;
    function GetDebtorType: WideString;
    function GetDebtorName: WideString;
    function GetDebtorAdr: WideString;
    function GetDebtorWorkPl: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorBirthPlace: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorNo: WideString;
    function GetSrokDobrPFR: WideString;
    function GetClaimerAdr: WideString;
    function GetIDSubj: WideString;
    function GetSubj: WideString;
    function GetIDSum: WideString;
    function GetPeriod: WideString;
    function GetPeriodSum: WideString;
    function GetRepeat: WideString;
    function GetNoAccount: WideString;
    function GetData: IXMLDataTypeList;
    function GetPayRekv: IXMLPayRekvTypeList;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetBarCode(Value: WideString);
    procedure SetIDType(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetIDCopy(Value: WideString);
    procedure SetDeloNum(Value: WideString);
    procedure SetDeloDate(Value: WideString);
    procedure SetOrgan(Value: WideString);
    procedure SetOrganAdr(Value: WideString);
    procedure SetOrganSignPost(Value: WideString);
    procedure SetOrganSignFio(Value: WideString);
    procedure SetClaimerType(Value: WideString);
    procedure SetClaimerName(Value: WideString);
    procedure SetAktDate(Value: WideString);
    procedure SetDebtorType(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetDebtorWorkPl(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorBirthPlace(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorNo(Value: WideString);
    procedure SetSrokDobrPFR(Value: WideString);
    procedure SetClaimerAdr(Value: WideString);
    procedure SetIDSubj(Value: WideString);
    procedure SetSubj(Value: WideString);
    procedure SetIDSum(Value: WideString);
    procedure SetPeriod(Value: WideString);
    procedure SetPeriodSum(Value: WideString);
    procedure SetRepeat(Value: WideString);
    procedure SetNoAccount(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property BarCode: WideString read GetBarCode write SetBarCode;
    property IDType: WideString read GetIDType write SetIDType;
    property IDNum: WideString read GetIDNum write SetIDNum;
    property IDDate: WideString read GetIDDate write SetIDDate;
    property IDCopy: WideString read GetIDCopy write SetIDCopy;
    property DeloNum: WideString read GetDeloNum write SetDeloNum;
    property DeloDate: WideString read GetDeloDate write SetDeloDate;
    property Organ: WideString read GetOrgan write SetOrgan;
    property OrganAdr: WideString read GetOrganAdr write SetOrganAdr;
    property OrganSignPost: WideString read GetOrganSignPost write SetOrganSignPost;
    property OrganSignFio: WideString read GetOrganSignFio write SetOrganSignFio;
    property ClaimerType: WideString read GetClaimerType write SetClaimerType;
    property ClaimerName: WideString read GetClaimerName write SetClaimerName;
    property AktDate: WideString read GetAktDate write SetAktDate;
    property DebtorType: WideString read GetDebtorType write SetDebtorType;
    property DebtorName: WideString read GetDebtorName write SetDebtorName;
    property DebtorAdr: WideString read GetDebtorAdr write SetDebtorAdr;
    property DebtorWorkPl: WideString read GetDebtorWorkPl write SetDebtorWorkPl;
    property DebtorBirthDate: WideString read GetDebtorBirthDate write SetDebtorBirthDate;
    property DebtorBirthPlace: WideString read GetDebtorBirthPlace write SetDebtorBirthPlace;
    property DebtorINN: WideString read GetDebtorINN write SetDebtorINN;
    property DebtorKPP: WideString read GetDebtorKPP write SetDebtorKPP;
    property DebtorNo: WideString read GetDebtorNo write SetDebtorNo;
    property SrokDobrPFR: WideString read GetSrokDobrPFR write SetSrokDobrPFR;
    property ClaimerAdr: WideString read GetClaimerAdr write SetClaimerAdr;
    property IDSubj: WideString read GetIDSubj write SetIDSubj;
    property Subj: WideString read GetSubj write SetSubj;
    property IDSum: WideString read GetIDSum write SetIDSum;
    property Period: WideString read GetPeriod write SetPeriod;
    property PeriodSum: WideString read GetPeriodSum write SetPeriodSum;
    property aRepeat: WideString read GetRepeat write SetRepeat;
    property NoAccount: WideString read GetNoAccount write SetNoAccount;
    property Data: IXMLDataTypeList read GetData;
    property PayRekv: IXMLPayRekvTypeList read GetPayRekv;
  end;

{ IXMLExtDocTypeList }

  IXMLExtDocTypeList = interface(IXMLNodeCollection)
    ['{C02603F2-8E18-47B8-A04D-A40A4C83A6EC}']
    { Methods & Properties }
    function Add: IXMLExtDocType;
    function Insert(const Index: Integer): IXMLExtDocType;
    function GetItem(Index: Integer): IXMLExtDocType;
    property Items[Index: Integer]: IXMLExtDocType read GetItem; default;
  end;

{ IXMLPayRekvType }

  IXMLPayRekvType = interface(IXMLNode)
    ['{75729917-948E-4B48-A9B9-2CB0A7CFA57F}']
    { Property Accessors }
    function GetRecpName: WideString;
    function GetRecpBank: WideString;
    function GetRecpBIK: WideString;
    function GetRecpCnt: WideString;
    function GetRecpINN: WideString;
    function GetRecpKPP: WideString;
    function GetOKATO: WideString;
    function GetKBK: WideString;
    function GetPokPl: WideString;
    function GetRekvSum: WideString;
    procedure SetRecpName(Value: WideString);
    procedure SetRecpBank(Value: WideString);
    procedure SetRecpBIK(Value: WideString);
    procedure SetRecpCnt(Value: WideString);
    procedure SetRecpINN(Value: WideString);
    procedure SetRecpKPP(Value: WideString);
    procedure SetOKATO(Value: WideString);
    procedure SetKBK(Value: WideString);
    procedure SetPokPl(Value: WideString);
    procedure SetRekvSum(Value: WideString);
    { Methods & Properties }
    property RecpName: WideString read GetRecpName write SetRecpName;
    property RecpBank: WideString read GetRecpBank write SetRecpBank;
    property RecpBIK: WideString read GetRecpBIK write SetRecpBIK;
    property RecpCnt: WideString read GetRecpCnt write SetRecpCnt;
    property RecpINN: WideString read GetRecpINN write SetRecpINN;
    property RecpKPP: WideString read GetRecpKPP write SetRecpKPP;
    property OKATO: WideString read GetOKATO write SetOKATO;
    property KBK: WideString read GetKBK write SetKBK;
    property PokPl: WideString read GetPokPl write SetPokPl;
    property RekvSum: WideString read GetRekvSum write SetRekvSum;
  end;

{ IXMLPayRekvTypeList }

  IXMLPayRekvTypeList = interface(IXMLNodeCollection)
    ['{F970A537-82D7-4763-A917-D1101D0185F3}']
    { Methods & Properties }
    function Add: IXMLPayRekvType;
    function Insert(const Index: Integer): IXMLPayRekvType;
    function GetItem(Index: Integer): IXMLPayRekvType;
    property Items[Index: Integer]: IXMLPayRekvType read GetItem; default;
  end;

{ IXMLProcDocType }

  IXMLProcDocType = interface(IXMLNode)
    ['{C6EEC366-BFED-401F-9BE0-576285EB3770}']
    { Property Accessors }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetDocNum: WideString;
    function GetDocType: WideString;
    function GetSum: WideString;
    function GetReason: WideString;
    function GetArtical: WideString;
    function GetPart: WideString;
    function GetBeginDate: WideString;
    function GetEndDate: WideString;
    function GetIP: IXMLIPType;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetSum(Value: WideString);
    procedure SetReason(Value: WideString);
    procedure SetArtical(Value: WideString);
    procedure SetPart(Value: WideString);
    procedure SetBeginDate(Value: WideString);
    procedure SetEndDate(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property SPI: WideString read GetSPI write SetSPI;
    property SPIFio: WideString read GetSPIFio write SetSPIFio;
    property SPIPost: WideString read GetSPIPost write SetSPIPost;
    property DocNum: WideString read GetDocNum write SetDocNum;
    property DocType: WideString read GetDocType write SetDocType;
    property Sum: WideString read GetSum write SetSum;
    property Reason: WideString read GetReason write SetReason;
    property Artical: WideString read GetArtical write SetArtical;
    property Part: WideString read GetPart write SetPart;
    property BeginDate: WideString read GetBeginDate write SetBeginDate;
    property EndDate: WideString read GetEndDate write SetEndDate;
    property IP: IXMLIPType read GetIP;
  end;

{ IXMLProcDocTypeList }

  IXMLProcDocTypeList = interface(IXMLNodeCollection)
    ['{EF2F79DA-4893-4BAB-B8C6-5FB987E5D51F}']
    { Methods & Properties }
    function Add: IXMLProcDocType;
    function Insert(const Index: Integer): IXMLProcDocType;
    function GetItem(Index: Integer): IXMLProcDocType;
    property Items[Index: Integer]: IXMLProcDocType read GetItem; default;
  end;

{ IXMLExtQueryType }

  IXMLExtQueryType = interface(IXMLNode)
    ['{3A2DE3D7-1D97-498E-BC9D-DC726074FD3C}']
    { Property Accessors }
    function GetKey: WideString;
    function GetIPKey: WideString;
    function GetIDKey: WideString;
    function GetIPNum: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetIDKey(Value: WideString);
    procedure SetIPNum(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property IPKey: WideString read GetIPKey write SetIPKey;
    property IDKey: WideString read GetIDKey write SetIDKey;
    property IPNum: WideString read GetIPNum write SetIPNum;
  end;

{ IXMLExtQueryTypeList }

  IXMLExtQueryTypeList = interface(IXMLNodeCollection)
    ['{015FB3A5-62B2-467E-A514-4FA1C428427E}']
    { Methods & Properties }
    function Add: IXMLExtQueryType;
    function Insert(const Index: Integer): IXMLExtQueryType;
    function GetItem(Index: Integer): IXMLExtQueryType;
    property Items[Index: Integer]: IXMLExtQueryType read GetItem; default;
  end;

{ IXMLAnswerType }

  IXMLAnswerType = interface(IXMLNode)
    ['{445BB5E8-1BAE-469B-8B3A-78263FA7C25A}']
    { Property Accessors }
    function GetKey: WideString;
    function GetIPKey: WideString;
    function GetAnswerDoc: IXMLAnswerDocType;
    function GetAnswerSum: IXMLAnswerSumType;
    procedure SetKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property IPKey: WideString read GetIPKey write SetIPKey;
    property AnswerDoc: IXMLAnswerDocType read GetAnswerDoc;
    property AnswerSum: IXMLAnswerSumType read GetAnswerSum;
  end;

{ IXMLAnswerTypeList }

  IXMLAnswerTypeList = interface(IXMLNodeCollection)
    ['{4D69BAED-E70C-4CEC-9136-550E4BAF6108}']
    { Methods & Properties }
    function Add: IXMLAnswerType;
    function Insert(const Index: Integer): IXMLAnswerType;
    function GetItem(Index: Integer): IXMLAnswerType;
    property Items[Index: Integer]: IXMLAnswerType read GetItem; default;
  end;

{ IXMLAnswerDocType }

  IXMLAnswerDocType = interface(IXMLNode)
    ['{C0F9060A-0E3C-41C6-8324-5B637DB00832}']
    { Property Accessors }
    function GetDocKey: WideString;
    function GetIPKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetDocNum: WideString;
    function GetDocType: WideString;
    function GetCounterpart: WideString;
    function GetReason: WideString;
    function GetArtical: WideString;
    function GetPart: WideString;
    procedure SetDocKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetCounterpart(Value: WideString);
    procedure SetReason(Value: WideString);
    procedure SetArtical(Value: WideString);
    procedure SetPart(Value: WideString);
    { Methods & Properties }
    property DocKey: WideString read GetDocKey write SetDocKey;
    property IPKey: WideString read GetIPKey write SetIPKey;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property SPI: WideString read GetSPI write SetSPI;
    property SPIFio: WideString read GetSPIFio write SetSPIFio;
    property SPIPost: WideString read GetSPIPost write SetSPIPost;
    property DocNum: WideString read GetDocNum write SetDocNum;
    property DocType: WideString read GetDocType write SetDocType;
    property Counterpart: WideString read GetCounterpart write SetCounterpart;
    property Reason: WideString read GetReason write SetReason;
    property Artical: WideString read GetArtical write SetArtical;
    property Part: WideString read GetPart write SetPart;
  end;

{ IXMLAnswerSumType }

  IXMLAnswerSumType = interface(IXMLNode)
    ['{4A42F28B-957A-4C4B-B084-36C09493FB6C}']
    { Property Accessors }
    function GetKey: WideString;
    function GetIPKey: WideString;
    function GetAccDate: WideString;
    function GetDocType: WideString;
    function GetDocDate: WideString;
    function GetDocNum: WideString;
    function GetRegType: WideString;
    function GetDestType: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetAccDate(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetRegType(Value: WideString);
    procedure SetDestType(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property IPKey: WideString read GetIPKey write SetIPKey;
    property AccDate: WideString read GetAccDate write SetAccDate;
    property DocType: WideString read GetDocType write SetDocType;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property DocNum: WideString read GetDocNum write SetDocNum;
    property RegType: WideString read GetRegType write SetRegType;
    property DestType: WideString read GetDestType write SetDestType;
  end;

{ IXMLExtDebtFixType }

  IXMLExtDebtFixType = interface(IXMLNode)
    ['{310A517E-4BD1-4B1C-A3DB-B634059C341B}']
    { Property Accessors }
    function GetKey: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorAdr: WideString;
    function GetPaySum: WideString;
    function GetPDDate: WideString;
    function GetPDNum: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetPaySum(Value: WideString);
    procedure SetPDDate(Value: WideString);
    procedure SetPDNum(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property IDNum: WideString read GetIDNum write SetIDNum;
    property IDDate: WideString read GetIDDate write SetIDDate;
    property DebtorBirthDate: WideString read GetDebtorBirthDate write SetDebtorBirthDate;
    property DebtorINN: WideString read GetDebtorINN write SetDebtorINN;
    property DebtorKPP: WideString read GetDebtorKPP write SetDebtorKPP;
    property DebtorAdr: WideString read GetDebtorAdr write SetDebtorAdr;
    property PaySum: WideString read GetPaySum write SetPaySum;
    property PDDate: WideString read GetPDDate write SetPDDate;
    property PDNum: WideString read GetPDNum write SetPDNum;
  end;

{ IXMLExtDebtFixTypeList }

  IXMLExtDebtFixTypeList = interface(IXMLNodeCollection)
    ['{B854389D-A6C1-4F2C-8117-4B9813EF8F0B}']
    { Methods & Properties }
    function Add: IXMLExtDebtFixType;
    function Insert(const Index: Integer): IXMLExtDebtFixType;
    function GetItem(Index: Integer): IXMLExtDebtFixType;
    property Items[Index: Integer]: IXMLExtDebtFixType read GetItem; default;
  end;

{ IXMLRecallDocType }

  IXMLRecallDocType = interface(IXMLNode)
    ['{828A7ED0-A5A9-46EE-B34C-65C08933C886}']
    { Property Accessors }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetClaimerType: WideString;
    function GetClaimerName: WideString;
    function GetOrganSignPost: WideString;
    function GetOrganSignFIO: WideString;
    function GetIDType: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetDebtorType: WideString;
    function GetDebtorName: WideString;
    function GetDebtorAdr: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorBirthPlace: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorNo: WideString;
    function GetSubj: WideString;
    function GetIDRecall: WideString;
    function GetData: IXMLDataType;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetClaimerType(Value: WideString);
    procedure SetClaimerName(Value: WideString);
    procedure SetOrganSignPost(Value: WideString);
    procedure SetOrganSignFIO(Value: WideString);
    procedure SetIDType(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetDebtorType(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorBirthPlace(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorNo(Value: WideString);
    procedure SetSubj(Value: WideString);
    procedure SetIDRecall(Value: WideString);
    { Methods & Properties }
    property Key: WideString read GetKey write SetKey;
    property DocDate: WideString read GetDocDate write SetDocDate;
    property SPI: WideString read GetSPI write SetSPI;
    property SPIFio: WideString read GetSPIFio write SetSPIFio;
    property SPIPost: WideString read GetSPIPost write SetSPIPost;
    property ClaimerType: WideString read GetClaimerType write SetClaimerType;
    property ClaimerName: WideString read GetClaimerName write SetClaimerName;
    property OrganSignPost: WideString read GetOrganSignPost write SetOrganSignPost;
    property OrganSignFIO: WideString read GetOrganSignFIO write SetOrganSignFIO;
    property IDType: WideString read GetIDType write SetIDType;
    property IDNum: WideString read GetIDNum write SetIDNum;
    property IDDate: WideString read GetIDDate write SetIDDate;
    property DebtorType: WideString read GetDebtorType write SetDebtorType;
    property DebtorName: WideString read GetDebtorName write SetDebtorName;
    property DebtorAdr: WideString read GetDebtorAdr write SetDebtorAdr;
    property DebtorBirthDate: WideString read GetDebtorBirthDate write SetDebtorBirthDate;
    property DebtorBirthPlace: WideString read GetDebtorBirthPlace write SetDebtorBirthPlace;
    property DebtorINN: WideString read GetDebtorINN write SetDebtorINN;
    property DebtorKPP: WideString read GetDebtorKPP write SetDebtorKPP;
    property DebtorNo: WideString read GetDebtorNo write SetDebtorNo;
    property Subj: WideString read GetSubj write SetSubj;
    property IDRecall: WideString read GetIDRecall write SetIDRecall;
    property Data: IXMLDataType read GetData;
  end;

{ IXMLRecallDocTypeList }

  IXMLRecallDocTypeList = interface(IXMLNodeCollection)
    ['{BCCD8FA7-6309-4E67-9858-AD1C2DADB1AB}']
    { Methods & Properties }
    function Add: IXMLRecallDocType;
    function Insert(const Index: Integer): IXMLRecallDocType;
    function GetItem(Index: Integer): IXMLRecallDocType;
    property Items[Index: Integer]: IXMLRecallDocType read GetItem; default;
  end;

{ IXMLTMessageType }

  IXMLTMessageType = interface(IXMLNode)
    ['{0DF2E88B-64A2-414D-96F0-F982E493945B}']
    { Property Accessors }
    function GetKeyMess: WideString;
    function GetTypeDoc: WideString;
    function GetKeyDoc: WideString;
    function GetSpecStr: WideString;
    function GetDateMess: WideString;
    function GetMessCod: WideString;
    procedure SetKeyMess(Value: WideString);
    procedure SetTypeDoc(Value: WideString);
    procedure SetKeyDoc(Value: WideString);
    procedure SetSpecStr(Value: WideString);
    procedure SetDateMess(Value: WideString);
    procedure SetMessCod(Value: WideString);
    { Methods & Properties }
    property KeyMess: WideString read GetKeyMess write SetKeyMess;
    property TypeDoc: WideString read GetTypeDoc write SetTypeDoc;
    property KeyDoc: WideString read GetKeyDoc write SetKeyDoc;
    property SpecStr: WideString read GetSpecStr write SetSpecStr;
    property DateMess: WideString read GetDateMess write SetDateMess;
    property MessCod: WideString read GetMessCod write SetMessCod;
  end;

{ IXMLTMessageTypeList }

  IXMLTMessageTypeList = interface(IXMLNodeCollection)
    ['{2DCC6EC8-38C1-4B25-A5A0-427574027CED}']
    { Methods & Properties }
    function Add: IXMLTMessageType;
    function Insert(const Index: Integer): IXMLTMessageType;
    function GetItem(Index: Integer): IXMLTMessageType;
    property Items[Index: Integer]: IXMLTMessageType read GetItem; default;
  end;

{ Forward Decls }

  TXMLDataBlockType = class;
  TXMLQueryType = class;
  TXMLQueryTypeList = class;
  TXMLIPType = class;
  TXMLDataType = class;
  TXMLDataTypeList = class;
  TXMLIdentificationType = class;
  TXMLAddressType = class;
  TXMLSvedRabType = class;
  TXMLSvedRucType = class;
  TXMLSvedDoxodType = class;
  TXMLDebtorStateType = class;
  TXMLExtAnswerType = class;
  TXMLExtAnswerTypeList = class;
  TXMLRestrictnType = class;
  TXMLRestrictnTypeList = class;
  TXMLReportType = class;
  TXMLReportTypeList = class;
  TXMLExtDocType = class;
  TXMLExtDocTypeList = class;
  TXMLPayRekvType = class;
  TXMLPayRekvTypeList = class;
  TXMLProcDocType = class;
  TXMLProcDocTypeList = class;
  TXMLExtQueryType = class;
  TXMLExtQueryTypeList = class;
  TXMLAnswerType = class;
  TXMLAnswerTypeList = class;
  TXMLAnswerDocType = class;
  TXMLAnswerSumType = class;
  TXMLExtDebtFixType = class;
  TXMLExtDebtFixTypeList = class;
  TXMLRecallDocType = class;
  TXMLRecallDocTypeList = class;
  TXMLTMessageType = class;
  TXMLTMessageTypeList = class;

{ TXMLDataBlockType }

  TXMLDataBlockType = class(TXMLNode, IXMLDataBlockType)
  private
    FQuery: IXMLQueryTypeList;
    FExtAnswer: IXMLExtAnswerTypeList;
    FRestrictn: IXMLRestrictnTypeList;
    FReport: IXMLReportTypeList;
    FExtDoc: IXMLExtDocTypeList;
    FProcDoc: IXMLProcDocTypeList;
    FExtQuery: IXMLExtQueryTypeList;
    FAnswer: IXMLAnswerTypeList;
    FExtDebtFix: IXMLExtDebtFixTypeList;
    FRecallDoc: IXMLRecallDocTypeList;
    FTMessage: IXMLTMessageTypeList;
  protected
    { IXMLDataBlockType }
    function GetKey: WideString;
    function GetFsspTo: WideString;
    function GetFsspOsp: WideString;
    function GetOrgAMD: WideString;
    function GetDivAMD: WideString;
    function GetSigned: WideString;
    function GetQuery: IXMLQueryTypeList;
    function GetExtAnswer: IXMLExtAnswerTypeList;
    function GetRestrictn: IXMLRestrictnTypeList;
    function GetReport: IXMLReportTypeList;
    function GetExtDoc: IXMLExtDocTypeList;
    function GetProcDoc: IXMLProcDocTypeList;
    function GetExtQuery: IXMLExtQueryTypeList;
    function GetAnswer: IXMLAnswerTypeList;
    function GetExtDebtFix: IXMLExtDebtFixTypeList;
    function GetRecallDoc: IXMLRecallDocTypeList;
    function GetTMessage: IXMLTMessageTypeList;
    procedure SetKey(Value: WideString);
    procedure SetFsspTo(Value: WideString);
    procedure SetFsspOsp(Value: WideString);
    procedure SetOrgAMD(Value: WideString);
    procedure SetDivAMD(Value: WideString);
    procedure SetSigned(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLQueryType }

  TXMLQueryType = class(TXMLNode, IXMLQueryType)
  private
    FData: IXMLDataTypeList;
  protected
    { IXMLQueryType }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetChSPIFio: WideString;
    function GetChSPIPost: WideString;
    function GetAnsDate: WideString;
    function GetSearchRegion: WideString;
    function GetIP: IXMLIPType;
    function GetData: IXMLDataTypeList;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetChSPIFio(Value: WideString);
    procedure SetChSPIPost(Value: WideString);
    procedure SetAnsDate(Value: WideString);
    procedure SetSearchRegion(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLQueryTypeList }

  TXMLQueryTypeList = class(TXMLNodeCollection, IXMLQueryTypeList)
  protected
    { IXMLQueryTypeList }
    function Add: IXMLQueryType;
    function Insert(const Index: Integer): IXMLQueryType;
    function GetItem(Index: Integer): IXMLQueryType;
  end;

{ TXMLIPType }

  TXMLIPType = class(TXMLNode, IXMLIPType)
  protected
    { IXMLIPType }
    function GetKey: WideString;
    function GetIPNum: WideString;
    function GetIPDate: WideString;
    function GetIPName: WideString;
    function GetIDType: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetIDSubj: WideString;
    function GetIDSubjName: WideString;
    function GetIDSum: WideString;
    function GetIPDebt: WideString;
    function GetDebtorType: WideString;
    function GetDebtorName: WideString;
    function GetDebtorAdr: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorOGRN: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorBirthYear: WideString;
    function GetDebtorBirthPlace: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIPNum(Value: WideString);
    procedure SetIPDate(Value: WideString);
    procedure SetIPName(Value: WideString);
    procedure SetIDType(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetIDSubj(Value: WideString);
    procedure SetIDSubjName(Value: WideString);
    procedure SetIDSum(Value: WideString);
    procedure SetIPDebt(Value: WideString);
    procedure SetDebtorType(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorOGRN(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorBirthYear(Value: WideString);
    procedure SetDebtorBirthPlace(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
  end;

{ TXMLDataType }

  TXMLDataType = class(TXMLNode, IXMLDataType)
  protected
    { IXMLDataType }
    function GetKey: WideString;
    function GetActDate: WideString;
    function GetDebtorName: WideString;
    function GetKindData: WideString;
    function GetIdentification: IXMLIdentificationType;
    function GetAddress: IXMLAddressType;
    function GetSvedRab: IXMLSvedRabType;
    function GetSvedRuc: IXMLSvedRucType;
    function GetSvedDoxod: IXMLSvedDoxodType;
    function GetDebtorState: IXMLDebtorStateType;
    procedure SetKey(Value: WideString);
    procedure SetActDate(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetKindData(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDataTypeList }

  TXMLDataTypeList = class(TXMLNodeCollection, IXMLDataTypeList)
  protected
    { IXMLDataTypeList }
    function Add: IXMLDataType;
    function Insert(const Index: Integer): IXMLDataType;
    function GetItem(Index: Integer): IXMLDataType;
  end;

{ TXMLIdentificationType }

  TXMLIdentificationType = class(TXMLNode, IXMLIdentificationType)
  protected
    { IXMLIdentificationType }
    function GetTypeDoc: WideString;
    function GetSerDoc: WideString;
    function GetNumDoc: WideString;
    function GetIssuedDoc: WideString;
    function GetDateDoc: WideString;
    function GetCodeDep: WideString;
    function GetFIODoc: WideString;
    procedure SetTypeDoc(Value: WideString);
    procedure SetSerDoc(Value: WideString);
    procedure SetNumDoc(Value: WideString);
    procedure SetIssuedDoc(Value: WideString);
    procedure SetDateDoc(Value: WideString);
    procedure SetCodeDep(Value: WideString);
    procedure SetFIODoc(Value: WideString);
  end;

{ TXMLAddressType }

  TXMLAddressType = class(TXMLNode, IXMLAddressType)
  protected
    { IXMLAddressType }
    function GetStrAddr: WideString;
    procedure SetStrAddr(Value: WideString);
  end;

{ TXMLSvedRabType }

  TXMLSvedRabType = class(TXMLNode, IXMLSvedRabType)
  protected
    { IXMLSvedRabType }
    function GetNaimOrg: WideString;
    function GetAdresJ: WideString;
    function GetAdresF: WideString;
    procedure SetNaimOrg(Value: WideString);
    procedure SetAdresJ(Value: WideString);
    procedure SetAdresF(Value: WideString);
  end;

{ TXMLSvedRucType }

  TXMLSvedRucType = class(TXMLNode, IXMLSvedRucType)
  protected
    { IXMLSvedRucType }
    function GetNameRuc: WideString;
    function GetAddressRuc: WideString;
    function GetTelRuc: WideString;
    function GetNameBux: WideString;
    function GetAddressBux: WideString;
    function GetTelBux: WideString;
    procedure SetNameRuc(Value: WideString);
    procedure SetAddressRuc(Value: WideString);
    procedure SetTelRuc(Value: WideString);
    procedure SetNameBux(Value: WideString);
    procedure SetAddressBux(Value: WideString);
    procedure SetTelBux(Value: WideString);
  end;

{ TXMLSvedDoxodType }

  TXMLSvedDoxodType = class(TXMLNode, IXMLSvedDoxodType)
  protected
    { IXMLSvedDoxodType }
    function GetDataDox: WideString;
    function GetSumDox: WideString;
    procedure SetDataDox(Value: WideString);
    procedure SetSumDox(Value: WideString);
  end;

{ TXMLDebtorStateType }

  TXMLDebtorStateType = class(TXMLNode, IXMLDebtorStateType)
  protected
    { IXMLDebtorStateType }
    function GetState: WideString;
    procedure SetState(Value: WideString);
  end;

{ TXMLExtAnswerType }

  TXMLExtAnswerType = class(TXMLNodeCollection, IXMLExtAnswerType)
  protected
    { IXMLExtAnswerType }
    function GetKey: WideString;
    function GetAnswerType: WideString;
    function GetQueryKey: WideString;
    function GetIPkey: WideString;
    function GetData(Index: Integer): IXMLDataType;
    procedure SetKey(Value: WideString);
    procedure SetAnswerType(Value: WideString);
    procedure SetQueryKey(Value: WideString);
    procedure SetIPkey(Value: WideString);
    function Add: IXMLDataType;
    function Insert(const Index: Integer): IXMLDataType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLExtAnswerTypeList }

  TXMLExtAnswerTypeList = class(TXMLNodeCollection, IXMLExtAnswerTypeList)
  protected
    { IXMLExtAnswerTypeList }
    function Add: IXMLExtAnswerType;
    function Insert(const Index: Integer): IXMLExtAnswerType;
    function GetItem(Index: Integer): IXMLExtAnswerType;
  end;

{ TXMLRestrictnType }

  TXMLRestrictnType = class(TXMLNode, IXMLRestrictnType)
  private
    FData: IXMLDataTypeList;
  protected
    { IXMLRestrictnType }
    function GetKey: WideString;
    function GetRestrictnKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetDocNum: WideString;
    function GetAppOrder: WideString;
    function GetReason: WideString;
    function GetArticle: WideString;
    function GetPart: WideString;
    function GetIP: IXMLIPType;
    function GetData: IXMLDataTypeList;
    procedure SetKey(Value: WideString);
    procedure SetRestrictnKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetAppOrder(Value: WideString);
    procedure SetReason(Value: WideString);
    procedure SetArticle(Value: WideString);
    procedure SetPart(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRestrictnTypeList }

  TXMLRestrictnTypeList = class(TXMLNodeCollection, IXMLRestrictnTypeList)
  protected
    { IXMLRestrictnTypeList }
    function Add: IXMLRestrictnType;
    function Insert(const Index: Integer): IXMLRestrictnType;
    function GetItem(Index: Integer): IXMLRestrictnType;
  end;

{ TXMLReportType }

  TXMLReportType = class(TXMLNode, IXMLReportType)
  protected
    { IXMLReportType }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetRestrictnKey: WideString;
    function GetIPKey: WideString;
    function GetAnswerType: WideString;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetRestrictnKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetAnswerType(Value: WideString);
  end;

{ TXMLReportTypeList }

  TXMLReportTypeList = class(TXMLNodeCollection, IXMLReportTypeList)
  protected
    { IXMLReportTypeList }
    function Add: IXMLReportType;
    function Insert(const Index: Integer): IXMLReportType;
    function GetItem(Index: Integer): IXMLReportType;
  end;

{ TXMLExtDocType }

  TXMLExtDocType = class(TXMLNode, IXMLExtDocType)
  private
    FData: IXMLDataTypeList;
    FPayRekv: IXMLPayRekvTypeList;
  protected
    { IXMLExtDocType }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetBarCode: WideString;
    function GetIDType: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetIDCopy: WideString;
    function GetDeloNum: WideString;
    function GetDeloDate: WideString;
    function GetOrgan: WideString;
    function GetOrganAdr: WideString;
    function GetOrganSignPost: WideString;
    function GetOrganSignFio: WideString;
    function GetClaimerType: WideString;
    function GetClaimerName: WideString;
    function GetAktDate: WideString;
    function GetDebtorType: WideString;
    function GetDebtorName: WideString;
    function GetDebtorAdr: WideString;
    function GetDebtorWorkPl: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorBirthPlace: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorNo: WideString;
    function GetSrokDobrPFR: WideString;
    function GetClaimerAdr: WideString;
    function GetIDSubj: WideString;
    function GetSubj: WideString;
    function GetIDSum: WideString;
    function GetPeriod: WideString;
    function GetPeriodSum: WideString;
    function GetRepeat: WideString;
    function GetNoAccount: WideString;
    function GetData: IXMLDataTypeList;
    function GetPayRekv: IXMLPayRekvTypeList;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetBarCode(Value: WideString);
    procedure SetIDType(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetIDCopy(Value: WideString);
    procedure SetDeloNum(Value: WideString);
    procedure SetDeloDate(Value: WideString);
    procedure SetOrgan(Value: WideString);
    procedure SetOrganAdr(Value: WideString);
    procedure SetOrganSignPost(Value: WideString);
    procedure SetOrganSignFio(Value: WideString);
    procedure SetClaimerType(Value: WideString);
    procedure SetClaimerName(Value: WideString);
    procedure SetAktDate(Value: WideString);
    procedure SetDebtorType(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetDebtorWorkPl(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorBirthPlace(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorNo(Value: WideString);
    procedure SetSrokDobrPFR(Value: WideString);
    procedure SetClaimerAdr(Value: WideString);
    procedure SetIDSubj(Value: WideString);
    procedure SetSubj(Value: WideString);
    procedure SetIDSum(Value: WideString);
    procedure SetPeriod(Value: WideString);
    procedure SetPeriodSum(Value: WideString);
    procedure SetRepeat(Value: WideString);
    procedure SetNoAccount(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLExtDocTypeList }

  TXMLExtDocTypeList = class(TXMLNodeCollection, IXMLExtDocTypeList)
  protected
    { IXMLExtDocTypeList }
    function Add: IXMLExtDocType;
    function Insert(const Index: Integer): IXMLExtDocType;
    function GetItem(Index: Integer): IXMLExtDocType;
  end;

{ TXMLPayRekvType }

  TXMLPayRekvType = class(TXMLNode, IXMLPayRekvType)
  protected
    { IXMLPayRekvType }
    function GetRecpName: WideString;
    function GetRecpBank: WideString;
    function GetRecpBIK: WideString;
    function GetRecpCnt: WideString;
    function GetRecpINN: WideString;
    function GetRecpKPP: WideString;
    function GetOKATO: WideString;
    function GetKBK: WideString;
    function GetPokPl: WideString;
    function GetRekvSum: WideString;
    procedure SetRecpName(Value: WideString);
    procedure SetRecpBank(Value: WideString);
    procedure SetRecpBIK(Value: WideString);
    procedure SetRecpCnt(Value: WideString);
    procedure SetRecpINN(Value: WideString);
    procedure SetRecpKPP(Value: WideString);
    procedure SetOKATO(Value: WideString);
    procedure SetKBK(Value: WideString);
    procedure SetPokPl(Value: WideString);
    procedure SetRekvSum(Value: WideString);
  end;

{ TXMLPayRekvTypeList }

  TXMLPayRekvTypeList = class(TXMLNodeCollection, IXMLPayRekvTypeList)
  protected
    { IXMLPayRekvTypeList }
    function Add: IXMLPayRekvType;
    function Insert(const Index: Integer): IXMLPayRekvType;
    function GetItem(Index: Integer): IXMLPayRekvType;
  end;

{ TXMLProcDocType }

  TXMLProcDocType = class(TXMLNode, IXMLProcDocType)
  protected
    { IXMLProcDocType }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetDocNum: WideString;
    function GetDocType: WideString;
    function GetSum: WideString;
    function GetReason: WideString;
    function GetArtical: WideString;
    function GetPart: WideString;
    function GetBeginDate: WideString;
    function GetEndDate: WideString;
    function GetIP: IXMLIPType;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetSum(Value: WideString);
    procedure SetReason(Value: WideString);
    procedure SetArtical(Value: WideString);
    procedure SetPart(Value: WideString);
    procedure SetBeginDate(Value: WideString);
    procedure SetEndDate(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProcDocTypeList }

  TXMLProcDocTypeList = class(TXMLNodeCollection, IXMLProcDocTypeList)
  protected
    { IXMLProcDocTypeList }
    function Add: IXMLProcDocType;
    function Insert(const Index: Integer): IXMLProcDocType;
    function GetItem(Index: Integer): IXMLProcDocType;
  end;

{ TXMLExtQueryType }

  TXMLExtQueryType = class(TXMLNode, IXMLExtQueryType)
  protected
    { IXMLExtQueryType }
    function GetKey: WideString;
    function GetIPKey: WideString;
    function GetIDKey: WideString;
    function GetIPNum: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetIDKey(Value: WideString);
    procedure SetIPNum(Value: WideString);
  end;

{ TXMLExtQueryTypeList }

  TXMLExtQueryTypeList = class(TXMLNodeCollection, IXMLExtQueryTypeList)
  protected
    { IXMLExtQueryTypeList }
    function Add: IXMLExtQueryType;
    function Insert(const Index: Integer): IXMLExtQueryType;
    function GetItem(Index: Integer): IXMLExtQueryType;
  end;

{ TXMLAnswerType }

  TXMLAnswerType = class(TXMLNode, IXMLAnswerType)
  protected
    { IXMLAnswerType }
    function GetKey: WideString;
    function GetIPKey: WideString;
    function GetAnswerDoc: IXMLAnswerDocType;
    function GetAnswerSum: IXMLAnswerSumType;
    procedure SetKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAnswerTypeList }

  TXMLAnswerTypeList = class(TXMLNodeCollection, IXMLAnswerTypeList)
  protected
    { IXMLAnswerTypeList }
    function Add: IXMLAnswerType;
    function Insert(const Index: Integer): IXMLAnswerType;
    function GetItem(Index: Integer): IXMLAnswerType;
  end;

{ TXMLAnswerDocType }

  TXMLAnswerDocType = class(TXMLNode, IXMLAnswerDocType)
  protected
    { IXMLAnswerDocType }
    function GetDocKey: WideString;
    function GetIPKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetDocNum: WideString;
    function GetDocType: WideString;
    function GetCounterpart: WideString;
    function GetReason: WideString;
    function GetArtical: WideString;
    function GetPart: WideString;
    procedure SetDocKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetCounterpart(Value: WideString);
    procedure SetReason(Value: WideString);
    procedure SetArtical(Value: WideString);
    procedure SetPart(Value: WideString);
  end;

{ TXMLAnswerSumType }

  TXMLAnswerSumType = class(TXMLNode, IXMLAnswerSumType)
  protected
    { IXMLAnswerSumType }
    function GetKey: WideString;
    function GetIPKey: WideString;
    function GetAccDate: WideString;
    function GetDocType: WideString;
    function GetDocDate: WideString;
    function GetDocNum: WideString;
    function GetRegType: WideString;
    function GetDestType: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIPKey(Value: WideString);
    procedure SetAccDate(Value: WideString);
    procedure SetDocType(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetDocNum(Value: WideString);
    procedure SetRegType(Value: WideString);
    procedure SetDestType(Value: WideString);
  end;

{ TXMLExtDebtFixType }

  TXMLExtDebtFixType = class(TXMLNode, IXMLExtDebtFixType)
  protected
    { IXMLExtDebtFixType }
    function GetKey: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorAdr: WideString;
    function GetPaySum: WideString;
    function GetPDDate: WideString;
    function GetPDNum: WideString;
    procedure SetKey(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetPaySum(Value: WideString);
    procedure SetPDDate(Value: WideString);
    procedure SetPDNum(Value: WideString);
  end;

{ TXMLExtDebtFixTypeList }

  TXMLExtDebtFixTypeList = class(TXMLNodeCollection, IXMLExtDebtFixTypeList)
  protected
    { IXMLExtDebtFixTypeList }
    function Add: IXMLExtDebtFixType;
    function Insert(const Index: Integer): IXMLExtDebtFixType;
    function GetItem(Index: Integer): IXMLExtDebtFixType;
  end;

{ TXMLRecallDocType }

  TXMLRecallDocType = class(TXMLNode, IXMLRecallDocType)
  protected
    { IXMLRecallDocType }
    function GetKey: WideString;
    function GetDocDate: WideString;
    function GetSPI: WideString;
    function GetSPIFio: WideString;
    function GetSPIPost: WideString;
    function GetClaimerType: WideString;
    function GetClaimerName: WideString;
    function GetOrganSignPost: WideString;
    function GetOrganSignFIO: WideString;
    function GetIDType: WideString;
    function GetIDNum: WideString;
    function GetIDDate: WideString;
    function GetDebtorType: WideString;
    function GetDebtorName: WideString;
    function GetDebtorAdr: WideString;
    function GetDebtorBirthDate: WideString;
    function GetDebtorBirthPlace: WideString;
    function GetDebtorINN: WideString;
    function GetDebtorKPP: WideString;
    function GetDebtorNo: WideString;
    function GetSubj: WideString;
    function GetIDRecall: WideString;
    function GetData: IXMLDataType;
    procedure SetKey(Value: WideString);
    procedure SetDocDate(Value: WideString);
    procedure SetSPI(Value: WideString);
    procedure SetSPIFio(Value: WideString);
    procedure SetSPIPost(Value: WideString);
    procedure SetClaimerType(Value: WideString);
    procedure SetClaimerName(Value: WideString);
    procedure SetOrganSignPost(Value: WideString);
    procedure SetOrganSignFIO(Value: WideString);
    procedure SetIDType(Value: WideString);
    procedure SetIDNum(Value: WideString);
    procedure SetIDDate(Value: WideString);
    procedure SetDebtorType(Value: WideString);
    procedure SetDebtorName(Value: WideString);
    procedure SetDebtorAdr(Value: WideString);
    procedure SetDebtorBirthDate(Value: WideString);
    procedure SetDebtorBirthPlace(Value: WideString);
    procedure SetDebtorINN(Value: WideString);
    procedure SetDebtorKPP(Value: WideString);
    procedure SetDebtorNo(Value: WideString);
    procedure SetSubj(Value: WideString);
    procedure SetIDRecall(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRecallDocTypeList }

  TXMLRecallDocTypeList = class(TXMLNodeCollection, IXMLRecallDocTypeList)
  protected
    { IXMLRecallDocTypeList }
    function Add: IXMLRecallDocType;
    function Insert(const Index: Integer): IXMLRecallDocType;
    function GetItem(Index: Integer): IXMLRecallDocType;
  end;

{ TXMLTMessageType }

  TXMLTMessageType = class(TXMLNode, IXMLTMessageType)
  protected
    { IXMLTMessageType }
    function GetKeyMess: WideString;
    function GetTypeDoc: WideString;
    function GetKeyDoc: WideString;
    function GetSpecStr: WideString;
    function GetDateMess: WideString;
    function GetMessCod: WideString;
    procedure SetKeyMess(Value: WideString);
    procedure SetTypeDoc(Value: WideString);
    procedure SetKeyDoc(Value: WideString);
    procedure SetSpecStr(Value: WideString);
    procedure SetDateMess(Value: WideString);
    procedure SetMessCod(Value: WideString);
  end;

{ TXMLTMessageTypeList }

  TXMLTMessageTypeList = class(TXMLNodeCollection, IXMLTMessageTypeList)
  protected
    { IXMLTMessageTypeList }
    function Add: IXMLTMessageType;
    function Insert(const Index: Integer): IXMLTMessageType;
    function GetItem(Index: Integer): IXMLTMessageType;
  end;

{ Global Functions }

function GetDataBlock(Doc: IXMLDocument): IXMLDataBlockType;
function LoadDataBlock(const FileName: WideString): IXMLDataBlockType;
function NewDataBlock: IXMLDataBlockType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetDataBlock(Doc: IXMLDocument): IXMLDataBlockType;
begin
  Result := Doc.GetDocBinding('DataBlock', TXMLDataBlockType, TargetNamespace) as IXMLDataBlockType;
end;

function LoadDataBlock(const FileName: WideString): IXMLDataBlockType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('DataBlock', TXMLDataBlockType, TargetNamespace) as IXMLDataBlockType;
end;

function NewDataBlock: IXMLDataBlockType;
begin
  Result := NewXMLDocument.GetDocBinding('DataBlock', TXMLDataBlockType, TargetNamespace) as IXMLDataBlockType;
end;

{ TXMLDataBlockType }

procedure TXMLDataBlockType.AfterConstruction;
begin
  RegisterChildNode('Query', TXMLQueryType);
  RegisterChildNode('ExtAnswer', TXMLExtAnswerType);
  RegisterChildNode('Restrictn', TXMLRestrictnType);
  RegisterChildNode('Report', TXMLReportType);
  RegisterChildNode('ExtDoc', TXMLExtDocType);
  RegisterChildNode('ProcDoc', TXMLProcDocType);
  RegisterChildNode('ExtQuery', TXMLExtQueryType);
  RegisterChildNode('Answer', TXMLAnswerType);
  RegisterChildNode('ExtDebtFix', TXMLExtDebtFixType);
  RegisterChildNode('RecallDoc', TXMLRecallDocType);
  RegisterChildNode('TMessage', TXMLTMessageType);
  FQuery := CreateCollection(TXMLQueryTypeList, IXMLQueryType, 'Query') as IXMLQueryTypeList;
  FExtAnswer := CreateCollection(TXMLExtAnswerTypeList, IXMLExtAnswerType, 'ExtAnswer') as IXMLExtAnswerTypeList;
  FRestrictn := CreateCollection(TXMLRestrictnTypeList, IXMLRestrictnType, 'Restrictn') as IXMLRestrictnTypeList;
  FReport := CreateCollection(TXMLReportTypeList, IXMLReportType, 'Report') as IXMLReportTypeList;
  FExtDoc := CreateCollection(TXMLExtDocTypeList, IXMLExtDocType, 'ExtDoc') as IXMLExtDocTypeList;
  FProcDoc := CreateCollection(TXMLProcDocTypeList, IXMLProcDocType, 'ProcDoc') as IXMLProcDocTypeList;
  FExtQuery := CreateCollection(TXMLExtQueryTypeList, IXMLExtQueryType, 'ExtQuery') as IXMLExtQueryTypeList;
  FAnswer := CreateCollection(TXMLAnswerTypeList, IXMLAnswerType, 'Answer') as IXMLAnswerTypeList;
  FExtDebtFix := CreateCollection(TXMLExtDebtFixTypeList, IXMLExtDebtFixType, 'ExtDebtFix') as IXMLExtDebtFixTypeList;
  FRecallDoc := CreateCollection(TXMLRecallDocTypeList, IXMLRecallDocType, 'RecallDoc') as IXMLRecallDocTypeList;
  FTMessage := CreateCollection(TXMLTMessageTypeList, IXMLTMessageType, 'TMessage') as IXMLTMessageTypeList;
  inherited;
end;

function TXMLDataBlockType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLDataBlockType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLDataBlockType.GetFsspTo: WideString;
begin
  Result := AttributeNodes['FsspTo'].Text;
end;

procedure TXMLDataBlockType.SetFsspTo(Value: WideString);
begin
  SetAttribute('FsspTo', Value);
end;

function TXMLDataBlockType.GetFsspOsp: WideString;
begin
  Result := AttributeNodes['FsspOsp'].Text;
end;

procedure TXMLDataBlockType.SetFsspOsp(Value: WideString);
begin
  SetAttribute('FsspOsp', Value);
end;

function TXMLDataBlockType.GetOrgAMD: WideString;
begin
  Result := AttributeNodes['OrgAMD'].Text;
end;

procedure TXMLDataBlockType.SetOrgAMD(Value: WideString);
begin
  SetAttribute('OrgAMD', Value);
end;

function TXMLDataBlockType.GetDivAMD: WideString;
begin
  Result := AttributeNodes['DivAMD'].Text;
end;

procedure TXMLDataBlockType.SetDivAMD(Value: WideString);
begin
  SetAttribute('DivAMD', Value);
end;

function TXMLDataBlockType.GetSigned: WideString;
begin
  Result := AttributeNodes['Signed'].Text;
end;

procedure TXMLDataBlockType.SetSigned(Value: WideString);
begin
  SetAttribute('Signed', Value);
end;

function TXMLDataBlockType.GetQuery: IXMLQueryTypeList;
begin
  Result := FQuery;
end;

function TXMLDataBlockType.GetExtAnswer: IXMLExtAnswerTypeList;
begin
  Result := FExtAnswer;
end;

function TXMLDataBlockType.GetRestrictn: IXMLRestrictnTypeList;
begin
  Result := FRestrictn;
end;

function TXMLDataBlockType.GetReport: IXMLReportTypeList;
begin
  Result := FReport;
end;

function TXMLDataBlockType.GetExtDoc: IXMLExtDocTypeList;
begin
  Result := FExtDoc;
end;

function TXMLDataBlockType.GetProcDoc: IXMLProcDocTypeList;
begin
  Result := FProcDoc;
end;

function TXMLDataBlockType.GetExtQuery: IXMLExtQueryTypeList;
begin
  Result := FExtQuery;
end;

function TXMLDataBlockType.GetAnswer: IXMLAnswerTypeList;
begin
  Result := FAnswer;
end;

function TXMLDataBlockType.GetExtDebtFix: IXMLExtDebtFixTypeList;
begin
  Result := FExtDebtFix;
end;

function TXMLDataBlockType.GetRecallDoc: IXMLRecallDocTypeList;
begin
  Result := FRecallDoc;
end;

function TXMLDataBlockType.GetTMessage: IXMLTMessageTypeList;
begin
  Result := FTMessage;
end;

{ TXMLQueryType }

procedure TXMLQueryType.AfterConstruction;
begin
  RegisterChildNode('IP', TXMLIPType);
  RegisterChildNode('Data', TXMLDataType);
  FData := CreateCollection(TXMLDataTypeList, IXMLDataType, 'Data') as IXMLDataTypeList;
  inherited;
end;

function TXMLQueryType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLQueryType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLQueryType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLQueryType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLQueryType.GetSPI: WideString;
begin
  Result := AttributeNodes['SPI'].Text;
end;

procedure TXMLQueryType.SetSPI(Value: WideString);
begin
  SetAttribute('SPI', Value);
end;

function TXMLQueryType.GetSPIFio: WideString;
begin
  Result := AttributeNodes['SPIFio'].Text;
end;

procedure TXMLQueryType.SetSPIFio(Value: WideString);
begin
  SetAttribute('SPIFio', Value);
end;

function TXMLQueryType.GetSPIPost: WideString;
begin
  Result := AttributeNodes['SPIPost'].Text;
end;

procedure TXMLQueryType.SetSPIPost(Value: WideString);
begin
  SetAttribute('SPIPost', Value);
end;

function TXMLQueryType.GetChSPIFio: WideString;
begin
  Result := AttributeNodes['ChSPIFio'].Text;
end;

procedure TXMLQueryType.SetChSPIFio(Value: WideString);
begin
  SetAttribute('ChSPIFio', Value);
end;

function TXMLQueryType.GetChSPIPost: WideString;
begin
  Result := AttributeNodes['ChSPIPost'].Text;
end;

procedure TXMLQueryType.SetChSPIPost(Value: WideString);
begin
  SetAttribute('ChSPIPost', Value);
end;

function TXMLQueryType.GetAnsDate: WideString;
begin
  Result := AttributeNodes['AnsDate'].Text;
end;

procedure TXMLQueryType.SetAnsDate(Value: WideString);
begin
  SetAttribute('AnsDate', Value);
end;

function TXMLQueryType.GetSearchRegion: WideString;
begin
  Result := AttributeNodes['SearchRegion'].Text;
end;

procedure TXMLQueryType.SetSearchRegion(Value: WideString);
begin
  SetAttribute('SearchRegion', Value);
end;

function TXMLQueryType.GetIP: IXMLIPType;
begin
  Result := ChildNodes['IP'] as IXMLIPType;
end;

function TXMLQueryType.GetData: IXMLDataTypeList;
begin
  Result := FData;
end;

{ TXMLQueryTypeList }

function TXMLQueryTypeList.Add: IXMLQueryType;
begin
  Result := AddItem(-1) as IXMLQueryType;
end;

function TXMLQueryTypeList.Insert(const Index: Integer): IXMLQueryType;
begin
  Result := AddItem(Index) as IXMLQueryType;
end;
function TXMLQueryTypeList.GetItem(Index: Integer): IXMLQueryType;
begin
  Result := List[Index] as IXMLQueryType;
end;

{ TXMLIPType }

function TXMLIPType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLIPType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLIPType.GetIPNum: WideString;
begin
  Result := AttributeNodes['IPNum'].Text;
end;

procedure TXMLIPType.SetIPNum(Value: WideString);
begin
  SetAttribute('IPNum', Value);
end;

function TXMLIPType.GetIPDate: WideString;
begin
  Result := AttributeNodes['IPDate'].Text;
end;

procedure TXMLIPType.SetIPDate(Value: WideString);
begin
  SetAttribute('IPDate', Value);
end;

function TXMLIPType.GetIPName: WideString;
begin
  Result := AttributeNodes['IPName'].Text;
end;

procedure TXMLIPType.SetIPName(Value: WideString);
begin
  SetAttribute('IPName', Value);
end;

function TXMLIPType.GetIDType: WideString;
begin
  Result := AttributeNodes['IDType'].Text;
end;

procedure TXMLIPType.SetIDType(Value: WideString);
begin
  SetAttribute('IDType', Value);
end;

function TXMLIPType.GetIDNum: WideString;
begin
  Result := AttributeNodes['IDNum'].Text;
end;

procedure TXMLIPType.SetIDNum(Value: WideString);
begin
  SetAttribute('IDNum', Value);
end;

function TXMLIPType.GetIDDate: WideString;
begin
  Result := AttributeNodes['IDDate'].Text;
end;

procedure TXMLIPType.SetIDDate(Value: WideString);
begin
  SetAttribute('IDDate', Value);
end;

function TXMLIPType.GetIDSubj: WideString;
begin
  Result := AttributeNodes['IDSubj'].Text;
end;

procedure TXMLIPType.SetIDSubj(Value: WideString);
begin
  SetAttribute('IDSubj', Value);
end;

function TXMLIPType.GetIDSubjName: WideString;
begin
  Result := AttributeNodes['IDSubjName'].Text;
end;

procedure TXMLIPType.SetIDSubjName(Value: WideString);
begin
  SetAttribute('IDSubjName', Value);
end;

function TXMLIPType.GetIDSum: WideString;
begin
  Result := AttributeNodes['IDSum'].Text;
end;

procedure TXMLIPType.SetIDSum(Value: WideString);
begin
  SetAttribute('IDSum', Value);
end;

function TXMLIPType.GetIPDebt: WideString;
begin
  Result := AttributeNodes['IPDebt'].Text;
end;

procedure TXMLIPType.SetIPDebt(Value: WideString);
begin
  SetAttribute('IPDebt', Value);
end;

function TXMLIPType.GetDebtorType: WideString;
begin
  Result := AttributeNodes['DebtorType'].Text;
end;

procedure TXMLIPType.SetDebtorType(Value: WideString);
begin
  SetAttribute('DebtorType', Value);
end;

function TXMLIPType.GetDebtorName: WideString;
begin
  Result := AttributeNodes['DebtorName'].Text;
end;

procedure TXMLIPType.SetDebtorName(Value: WideString);
begin
  SetAttribute('DebtorName', Value);
end;

function TXMLIPType.GetDebtorAdr: WideString;
begin
  Result := AttributeNodes['DebtorAdr'].Text;
end;

procedure TXMLIPType.SetDebtorAdr(Value: WideString);
begin
  SetAttribute('DebtorAdr', Value);
end;

function TXMLIPType.GetDebtorINN: WideString;
begin
  Result := AttributeNodes['DebtorINN'].Text;
end;

procedure TXMLIPType.SetDebtorINN(Value: WideString);
begin
  SetAttribute('DebtorINN', Value);
end;

function TXMLIPType.GetDebtorKPP: WideString;
begin
  Result := AttributeNodes['DebtorKPP'].Text;
end;

procedure TXMLIPType.SetDebtorKPP(Value: WideString);
begin
  SetAttribute('DebtorKPP', Value);
end;

function TXMLIPType.GetDebtorOGRN: WideString;
begin
  Result := AttributeNodes['DebtorOGRN'].Text;
end;

procedure TXMLIPType.SetDebtorOGRN(Value: WideString);
begin
  SetAttribute('DebtorOGRN', Value);
end;

function TXMLIPType.GetDebtorBirthDate: WideString;
begin
  Result := AttributeNodes['DebtorBirthDate'].Text;
end;

procedure TXMLIPType.SetDebtorBirthDate(Value: WideString);
begin
  SetAttribute('DebtorBirthDate', Value);
end;

function TXMLIPType.GetDebtorBirthYear: WideString;
begin
  Result := AttributeNodes['DebtorBirthYear'].Text;
end;

procedure TXMLIPType.SetDebtorBirthYear(Value: WideString);
begin
  SetAttribute('DebtorBirthYear', Value);
end;

function TXMLIPType.GetDebtorBirthPlace: WideString;
begin
  Result := AttributeNodes['DebtorBirthPlace'].Text;
end;

procedure TXMLIPType.SetDebtorBirthPlace(Value: WideString);
begin
  SetAttribute('DebtorBirthPlace', Value);
end;

function TXMLIPType.GetSPI: WideString;
begin
  Result := AttributeNodes['SPI'].Text;
end;

procedure TXMLIPType.SetSPI(Value: WideString);
begin
  SetAttribute('SPI', Value);
end;

function TXMLIPType.GetSPIFio: WideString;
begin
  Result := AttributeNodes['SPIFio'].Text;
end;

procedure TXMLIPType.SetSPIFio(Value: WideString);
begin
  SetAttribute('SPIFio', Value);
end;

{ TXMLDataType }

procedure TXMLDataType.AfterConstruction;
begin
  RegisterChildNode('Identification', TXMLIdentificationType);
  RegisterChildNode('Address', TXMLAddressType);
  RegisterChildNode('SvedRab', TXMLSvedRabType);
  RegisterChildNode('SvedRuc', TXMLSvedRucType);
  RegisterChildNode('SvedDoxod', TXMLSvedDoxodType);
  RegisterChildNode('DebtorState', TXMLDebtorStateType);
  inherited;
end;

function TXMLDataType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLDataType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLDataType.GetActDate: WideString;
begin
  Result := AttributeNodes['ActDate'].Text;
end;

procedure TXMLDataType.SetActDate(Value: WideString);
begin
  SetAttribute('ActDate', Value);
end;

function TXMLDataType.GetDebtorName: WideString;
begin
  Result := AttributeNodes['DebtorName'].Text;
end;

procedure TXMLDataType.SetDebtorName(Value: WideString);
begin
  SetAttribute('DebtorName', Value);
end;

function TXMLDATAType.GetKindData: WideString;
begin
  Result := AttributeNodes['KindData'].Text;
end;

procedure TXMLDATAType.SetKindData(Value: WideString);
begin
  SetAttribute('KindData', Value);
end;

function TXMLDataType.GetIdentification: IXMLIdentificationType;
begin
  Result := ChildNodes['Identification'] as IXMLIdentificationType;
end;

function TXMLDataType.GetAddress: IXMLAddressType;
begin
  Result := ChildNodes['Address'] as IXMLAddressType;
end;

function TXMLDataType.GetSvedRab: IXMLSvedRabType;
begin
  Result := ChildNodes['SvedRab'] as IXMLSvedRabType;
end;

function TXMLDataType.GetSvedRuc: IXMLSvedRucType;
begin
  Result := ChildNodes['SvedRuc'] as IXMLSvedRucType;
end;

function TXMLDataType.GetSvedDoxod: IXMLSvedDoxodType;
begin
  Result := ChildNodes['SvedDoxod'] as IXMLSvedDoxodType;
end;

function TXMLDataType.GetDebtorState: IXMLDebtorStateType;
begin
  Result := ChildNodes['DebtorState'] as IXMLDebtorStateType;
end;

{ TXMLDataTypeList }

function TXMLDataTypeList.Add: IXMLDataType;
begin
  Result := AddItem(-1) as IXMLDataType;
end;

function TXMLDataTypeList.Insert(const Index: Integer): IXMLDataType;
begin
  Result := AddItem(Index) as IXMLDataType;
end;
function TXMLDataTypeList.GetItem(Index: Integer): IXMLDataType;
begin
  Result := List[Index] as IXMLDataType;
end;

{ TXMLIdentificationType }

function TXMLIdentificationType.GetTypeDoc: WideString;
begin
  Result := AttributeNodes['TypeDoc'].Text;
end;

procedure TXMLIdentificationType.SetTypeDoc(Value: WideString);
begin
  SetAttribute('TypeDoc', Value);
end;

function TXMLIdentificationType.GetSerDoc: WideString;
begin
  Result := AttributeNodes['SerDoc'].Text;
end;

procedure TXMLIdentificationType.SetSerDoc(Value: WideString);
begin
  SetAttribute('SerDoc', Value);
end;

function TXMLIdentificationType.GetNumDoc: WideString;
begin
  Result := AttributeNodes['NumDoc'].Text;
end;

procedure TXMLIdentificationType.SetNumDoc(Value: WideString);
begin
  SetAttribute('NumDoc', Value);
end;

function TXMLIdentificationType.GetIssuedDoc: WideString;
begin
  Result := AttributeNodes['IssuedDoc'].Text;
end;

procedure TXMLIdentificationType.SetIssuedDoc(Value: WideString);
begin
  SetAttribute('IssuedDoc', Value);
end;

function TXMLIdentificationType.GetDateDoc: WideString;
begin
  Result := AttributeNodes['DateDoc'].Text;
end;

procedure TXMLIdentificationType.SetDateDoc(Value: WideString);
begin
  SetAttribute('DateDoc', Value);
end;

function TXMLIdentificationType.GetCodeDep: WideString;
begin
  Result := AttributeNodes['CodeDep'].Text;
end;

procedure TXMLIdentificationType.SetCodeDep(Value: WideString);
begin
  SetAttribute('CodeDep', Value);
end;

function TXMLIdentificationType.GetFIODoc: WideString;
begin
  Result := AttributeNodes['FIODoc'].Text;
end;

procedure TXMLIdentificationType.SetFIODoc(Value: WideString);
begin
  SetAttribute('FIODoc', Value);
end;

{ TXMLAddressType }

function TXMLAddressType.GetStrAddr: WideString;
begin
  Result := AttributeNodes['StrAddr'].Text;
end;

procedure TXMLAddressType.SetStrAddr(Value: WideString);
begin
  SetAttribute('StrAddr', Value);
end;

{ TXMLSvedRabType }

function TXMLSvedRabType.GetNaimOrg: WideString;
begin
  Result := AttributeNodes['NaimOrg'].Text;
end;

procedure TXMLSvedRabType.SetNaimOrg(Value: WideString);
begin
  SetAttribute('NaimOrg', Value);
end;

function TXMLSvedRabType.GetAdresJ: WideString;
begin
  Result := AttributeNodes['AdresJ'].Text;
end;

procedure TXMLSvedRabType.SetAdresJ(Value: WideString);
begin
  SetAttribute('AdresJ', Value);
end;

function TXMLSvedRabType.GetAdresF: WideString;
begin
  Result := AttributeNodes['AdresF'].Text;
end;

procedure TXMLSvedRabType.SetAdresF(Value: WideString);
begin
  SetAttribute('AdresF', Value);
end;

{ TXMLSvedRucType }

function TXMLSvedRucType.GetNameRuc: WideString;
begin
  Result := AttributeNodes['NameRuc'].Text;
end;

procedure TXMLSvedRucType.SetNameRuc(Value: WideString);
begin
  SetAttribute('NameRuc', Value);
end;

function TXMLSvedRucType.GetAddressRuc: WideString;
begin
  Result := AttributeNodes['AddressRuc'].Text;
end;

procedure TXMLSvedRucType.SetAddressRuc(Value: WideString);
begin
  SetAttribute('AddressRuc', Value);
end;

function TXMLSvedRucType.GetTelRuc: WideString;
begin
  Result := AttributeNodes['TelRuc'].Text;
end;

procedure TXMLSvedRucType.SetTelRuc(Value: WideString);
begin
  SetAttribute('TelRuc', Value);
end;

function TXMLSvedRucType.GetNameBux: WideString;
begin
  Result := AttributeNodes['NameBux'].Text;
end;

procedure TXMLSvedRucType.SetNameBux(Value: WideString);
begin
  SetAttribute('NameBux', Value);
end;

function TXMLSvedRucType.GetAddressBux: WideString;
begin
  Result := AttributeNodes['AddressBux'].Text;
end;

procedure TXMLSvedRucType.SetAddressBux(Value: WideString);
begin
  SetAttribute('AddressBux', Value);
end;

function TXMLSvedRucType.GetTelBux: WideString;
begin
  Result := AttributeNodes['TelBux'].Text;
end;

procedure TXMLSvedRucType.SetTelBux(Value: WideString);
begin
  SetAttribute('TelBux', Value);
end;

{ TXMLSvedDoxodType }

function TXMLSvedDoxodType.GetDataDox: WideString;
begin
  Result := AttributeNodes['DataDox'].Text;
end;

procedure TXMLSvedDoxodType.SetDataDox(Value: WideString);
begin
  SetAttribute('DataDox', Value);
end;

function TXMLSvedDoxodType.GetSumDox: WideString;
begin
  Result := AttributeNodes['SumDox'].Text;
end;

procedure TXMLSvedDoxodType.SetSumDox(Value: WideString);
begin
  SetAttribute('SumDox', Value);
end;

{ TXMLDebtorStateType }

function TXMLDebtorStateType.GetState: WideString;
begin
  Result := AttributeNodes['State'].Text;
end;

procedure TXMLDebtorStateType.SetState(Value: WideString);
begin
  SetAttribute('State', Value);
end;

{ TXMLExtAnswerType }

procedure TXMLExtAnswerType.AfterConstruction;
begin
  RegisterChildNode('Data', TXMLDataType);
  ItemTag := 'Data';
  ItemInterface := IXMLDataType;
  inherited;
end;

function TXMLExtAnswerType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLExtAnswerType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLExtAnswerType.GetAnswerType: WideString;
begin
  Result := AttributeNodes['AnswerType'].Text;
end;

procedure TXMLExtAnswerType.SetAnswerType(Value: WideString);
begin
  SetAttribute('AnswerType', Value);
end;

function TXMLExtAnswerType.GetQueryKey: WideString;
begin
  Result := AttributeNodes['QueryKey'].Text;
end;

procedure TXMLExtAnswerType.SetQueryKey(Value: WideString);
begin
  SetAttribute('QueryKey', Value);
end;

function TXMLExtAnswerType.GetIPkey: WideString;
begin
  Result := AttributeNodes['IPKey'].Text;
end;

procedure TXMLExtAnswerType.SetIPKey(Value: WideString);
begin
  SetAttribute('IPKey', Value);
end;

function TXMLExtAnswerType.GetData(Index: Integer): IXMLDataType;
begin
  Result := List[Index] as IXMLDataType;
end;

function TXMLExtAnswerType.Add: IXMLDataType;
begin
  Result := AddItem(-1) as IXMLDataType;
end;

function TXMLExtAnswerType.Insert(const Index: Integer): IXMLDataType;
begin
  Result := AddItem(Index) as IXMLDataType;
end;

{ TXMLExtAnswerTypeList }

function TXMLExtAnswerTypeList.Add: IXMLExtAnswerType;
begin
  Result := AddItem(-1) as IXMLExtAnswerType;
end;

function TXMLExtAnswerTypeList.Insert(const Index: Integer): IXMLExtAnswerType;
begin
  Result := AddItem(Index) as IXMLExtAnswerType;
end;
function TXMLExtAnswerTypeList.GetItem(Index: Integer): IXMLExtAnswerType;
begin
  Result := List[Index] as IXMLExtAnswerType;
end;

{ TXMLRestrictnType }

procedure TXMLRestrictnType.AfterConstruction;
begin
  RegisterChildNode('IP', TXMLIPType);
  RegisterChildNode('Data', TXMLDataType);
  FData := CreateCollection(TXMLDataTypeList, IXMLDataType, 'Data') as IXMLDataTypeList;
  inherited;
end;

function TXMLRestrictnType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLRestrictnType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLRestrictnType.GetRestrictnKey: WideString;
begin
  Result := AttributeNodes['RestrictnKey'].Text;
end;

procedure TXMLRestrictnType.SetRestrictnKey(Value: WideString);
begin
  SetAttribute('RestrictnKey', Value);
end;

function TXMLRestrictnType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLRestrictnType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLRestrictnType.GetSPI: WideString;
begin
  Result := AttributeNodes['SPI'].Text;
end;

procedure TXMLRestrictnType.SetSPI(Value: WideString);
begin
  SetAttribute('SPI', Value);
end;

function TXMLRestrictnType.GetSPIFio: WideString;
begin
  Result := AttributeNodes['SPIFio'].Text;
end;

procedure TXMLRestrictnType.SetSPIFio(Value: WideString);
begin
  SetAttribute('SPIFio', Value);
end;

function TXMLRestrictnType.GetSPIPost: WideString;
begin
  Result := AttributeNodes['SPIPost'].Text;
end;

procedure TXMLRestrictnType.SetSPIPost(Value: WideString);
begin
  SetAttribute('SPIPost', Value);
end;

function TXMLRestrictnType.GetDocNum: WideString;
begin
  Result := AttributeNodes['DocNum'].Text;
end;

procedure TXMLRestrictnType.SetDocNum(Value: WideString);
begin
  SetAttribute('DocNum', Value);
end;

function TXMLRestrictnType.GetAppOrder: WideString;
begin
  Result := AttributeNodes['AppOrder'].Text;
end;

procedure TXMLRestrictnType.SetAppOrder(Value: WideString);
begin
  SetAttribute('AppOrder', Value);
end;

function TXMLRestrictnType.GetReason: WideString;
begin
  Result := AttributeNodes['Reason'].Text;
end;

procedure TXMLRestrictnType.SetReason(Value: WideString);
begin
  SetAttribute('Reason', Value);
end;

function TXMLRestrictnType.GetArticle: WideString;
begin
  Result := AttributeNodes['Article'].Text;
end;

procedure TXMLRestrictnType.SetArticle(Value: WideString);
begin
  SetAttribute('Article', Value);
end;

function TXMLRestrictnType.GetPart: WideString;
begin
  Result := AttributeNodes['Part'].Text;
end;

procedure TXMLRestrictnType.SetPart(Value: WideString);
begin
  SetAttribute('Part', Value);
end;

function TXMLRestrictnType.GetIP: IXMLIPType;
begin
  Result := ChildNodes['IP'] as IXMLIPType;
end;

function TXMLRestrictnType.GetData: IXMLDataTypeList;
begin
  Result := FData;
end;

{ TXMLRestrictnTypeList }

function TXMLRestrictnTypeList.Add: IXMLRestrictnType;
begin
  Result := AddItem(-1) as IXMLRestrictnType;
end;

function TXMLRestrictnTypeList.Insert(const Index: Integer): IXMLRestrictnType;
begin
  Result := AddItem(Index) as IXMLRestrictnType;
end;
function TXMLRestrictnTypeList.GetItem(Index: Integer): IXMLRestrictnType;
begin
  Result := List[Index] as IXMLRestrictnType;
end;

{ TXMLReportType }

function TXMLReportType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLReportType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLReportType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLReportType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLReportType.GetRestrictnKey: WideString;
begin
  Result := AttributeNodes['RestrictnKey'].Text;
end;

procedure TXMLReportType.SetRestrictnKey(Value: WideString);
begin
  SetAttribute('RestrictnKey', Value);
end;

function TXMLReportType.GetIPKey: WideString;
begin
  Result := AttributeNodes['IPKey'].Text;
end;

procedure TXMLReportType.SetIPKey(Value: WideString);
begin
  SetAttribute('IPKey', Value);
end;

function TXMLReportType.GetAnswerType: WideString;
begin
  Result := AttributeNodes['AnswerType'].Text;
end;

procedure TXMLReportType.SetAnswerType(Value: WideString);
begin
  SetAttribute('AnswerType', Value);
end;

{ TXMLReportTypeList }

function TXMLReportTypeList.Add: IXMLReportType;
begin
  Result := AddItem(-1) as IXMLReportType;
end;

function TXMLReportTypeList.Insert(const Index: Integer): IXMLReportType;
begin
  Result := AddItem(Index) as IXMLReportType;
end;
function TXMLReportTypeList.GetItem(Index: Integer): IXMLReportType;
begin
  Result := List[Index] as IXMLReportType;
end;

{ TXMLExtDocType }

procedure TXMLExtDocType.AfterConstruction;
begin
  RegisterChildNode('Data', TXMLDataType);
  RegisterChildNode('PayRekv', TXMLPayRekvType);
  FData := CreateCollection(TXMLDataTypeList, IXMLDataType, 'Data') as IXMLDataTypeList;
  FPayRekv := CreateCollection(TXMLPayRekvTypeList, IXMLPayRekvType, 'PayRekv') as IXMLPayRekvTypeList;
  inherited;
end;

function TXMLExtDocType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLExtDocType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLExtDocType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLExtDocType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLExtDocType.GetBarCode: WideString;
begin
  Result := AttributeNodes['BarCode'].Text;
end;

procedure TXMLExtDocType.SetBarCode(Value: WideString);
begin
  SetAttribute('BarCode', Value);
end;

function TXMLExtDocType.GetIDType: WideString;
begin
  Result := AttributeNodes['IDType'].Text;
end;

procedure TXMLExtDocType.SetIDType(Value: WideString);
begin
  SetAttribute('IDType', Value);
end;

function TXMLExtDocType.GetIDNum: WideString;
begin
  Result := AttributeNodes['IDNum'].Text;
end;

procedure TXMLExtDocType.SetIDNum(Value: WideString);
begin
  SetAttribute('IDNum', Value);
end;

function TXMLExtDocType.GetIDDate: WideString;
begin
  Result := AttributeNodes['IDDate'].Text;
end;

procedure TXMLExtDocType.SetIDDate(Value: WideString);
begin
  SetAttribute('IDDate', Value);
end;

function TXMLExtDocType.GetIDCopy: WideString;
begin
  Result := AttributeNodes['IDCopy'].Text;
end;

procedure TXMLExtDocType.SetIDCopy(Value: WideString);
begin
  SetAttribute('IDCopy', Value);
end;

function TXMLExtDocType.GetDeloNum: WideString;
begin
  Result := AttributeNodes['DeloNum'].Text;
end;

procedure TXMLExtDocType.SetDeloNum(Value: WideString);
begin
  SetAttribute('DeloNum', Value);
end;

function TXMLExtDocType.GetDeloDate: WideString;
begin
  Result := AttributeNodes['DeloDate'].Text;
end;

procedure TXMLExtDocType.SetDeloDate(Value: WideString);
begin
  SetAttribute('DeloDate', Value);
end;

function TXMLExtDocType.GetOrgan: WideString;
begin
  Result := AttributeNodes['Organ'].Text;
end;

procedure TXMLExtDocType.SetOrgan(Value: WideString);
begin
  SetAttribute('Organ', Value);
end;

function TXMLExtDocType.GetOrganAdr: WideString;
begin
  Result := AttributeNodes['OrganAdr'].Text;
end;

procedure TXMLExtDocType.SetOrganAdr(Value: WideString);
begin
  SetAttribute('OrganAdr', Value);
end;

function TXMLExtDocType.GetOrganSignPost: WideString;
begin
  Result := AttributeNodes['OrganSignPost'].Text;
end;

procedure TXMLExtDocType.SetOrganSignPost(Value: WideString);
begin
  SetAttribute('OrganSignPost', Value);
end;

function TXMLExtDocType.GetOrganSignFio: WideString;
begin
  Result := AttributeNodes['OrganSignFio'].Text;
end;

procedure TXMLExtDocType.SetOrganSignFio(Value: WideString);
begin
  SetAttribute('OrganSignFio', Value);
end;

function TXMLExtDocType.GetClaimerType: WideString;
begin
  Result := AttributeNodes['ClaimerType'].Text;
end;

procedure TXMLExtDocType.SetClaimerType(Value: WideString);
begin
  SetAttribute('ClaimerType', Value);
end;

function TXMLExtDocType.GetClaimerName: WideString;
begin
  Result := AttributeNodes['ClaimerName'].Text;
end;

procedure TXMLExtDocType.SetClaimerName(Value: WideString);
begin
  SetAttribute('ClaimerName', Value);
end;

function TXMLExtDocType.GetAktDate: WideString;
begin
  Result := AttributeNodes['AktDate'].Text;
end;

procedure TXMLExtDocType.SetAktDate(Value: WideString);
begin
  SetAttribute('AktDate', Value);
end;

function TXMLExtDocType.GetDebtorType: WideString;
begin
  Result := AttributeNodes['DebtorType'].Text;
end;

procedure TXMLExtDocType.SetDebtorType(Value: WideString);
begin
  SetAttribute('DebtorType', Value);
end;

function TXMLExtDocType.GetDebtorName: WideString;
begin
  Result := AttributeNodes['DebtorName'].Text;
end;

procedure TXMLExtDocType.SetDebtorName(Value: WideString);
begin
  SetAttribute('DebtorName', Value);
end;

function TXMLExtDocType.GetDebtorAdr: WideString;
begin
  Result := AttributeNodes['DebtorAdr'].Text;
end;

procedure TXMLExtDocType.SetDebtorAdr(Value: WideString);
begin
  SetAttribute('DebtorAdr', Value);
end;

function TXMLExtDocType.GetDebtorWorkPl: WideString;
begin
  Result := AttributeNodes['DebtorWorkPl'].Text;
end;

procedure TXMLExtDocType.SetDebtorWorkPl(Value: WideString);
begin
  SetAttribute('DebtorWorkPl', Value);
end;

function TXMLExtDocType.GetDebtorBirthDate: WideString;
begin
  Result := AttributeNodes['DebtorBirthDate'].Text;
end;

procedure TXMLExtDocType.SetDebtorBirthDate(Value: WideString);
begin
  SetAttribute('DebtorBirthDate', Value);
end;

function TXMLExtDocType.GetDebtorBirthPlace: WideString;
begin
  Result := AttributeNodes['DebtorBirthPlace'].Text;
end;

procedure TXMLExtDocType.SetDebtorBirthPlace(Value: WideString);
begin
  SetAttribute('DebtorBirthPlace', Value);
end;

function TXMLExtDocType.GetDebtorINN: WideString;
begin
  Result := AttributeNodes['DebtorINN'].Text;
end;

procedure TXMLExtDocType.SetDebtorINN(Value: WideString);
begin
  SetAttribute('DebtorINN', Value);
end;

function TXMLExtDocType.GetDebtorKPP: WideString;
begin
  Result := AttributeNodes['DebtorKPP'].Text;
end;

procedure TXMLExtDocType.SetDebtorKPP(Value: WideString);
begin
  SetAttribute('DebtorKPP', Value);
end;

function TXMLExtDocType.GetDebtorNo: WideString;
begin
  Result := AttributeNodes['DebtorNo'].Text;
end;

procedure TXMLExtDocType.SetDebtorNo(Value: WideString);
begin
  SetAttribute('DebtorNo', Value);
end;

function TXMLExtDocType.GetSrokDobrPFR: WideString;
begin
  Result := AttributeNodes['SrokDobrPFR'].Text;
end;

procedure TXMLExtDocType.SetSrokDobrPFR(Value: WideString);
begin
  SetAttribute('SrokDobrPFR', Value);
end;

function TXMLExtDocType.GetClaimerAdr: WideString;
begin
  Result := AttributeNodes['ClaimerAdr'].Text;
end;

procedure TXMLExtDocType.SetClaimerAdr(Value: WideString);
begin
  SetAttribute('ClaimerAdr', Value);
end;

function TXMLExtDocType.GetIDSubj: WideString;
begin
  Result := AttributeNodes['IDSubj'].Text;
end;

procedure TXMLExtDocType.SetIDSubj(Value: WideString);
begin
  SetAttribute('IDSubj', Value);
end;

function TXMLExtDocType.GetSubj: WideString;
begin
  Result := AttributeNodes['Subj'].Text;
end;

procedure TXMLExtDocType.SetSubj(Value: WideString);
begin
  SetAttribute('Subj', Value);
end;

function TXMLExtDocType.GetIDSum: WideString;
begin
  Result := AttributeNodes['IDSum'].Text;
end;

procedure TXMLExtDocType.SetIDSum(Value: WideString);
begin
  SetAttribute('IDSum', Value);
end;

function TXMLExtDocType.GetPeriod: WideString;
begin
  Result := AttributeNodes['Period'].Text;
end;

procedure TXMLExtDocType.SetPeriod(Value: WideString);
begin
  SetAttribute('Period', Value);
end;

function TXMLExtDocType.GetPeriodSum: WideString;
begin
  Result := AttributeNodes['PeriodSum'].Text;
end;

procedure TXMLExtDocType.SetPeriodSum(Value: WideString);
begin
  SetAttribute('PeriodSum', Value);
end;

function TXMLExtDocType.GetRepeat: WideString;
begin
  Result := AttributeNodes['Repeat'].Text;
end;

procedure TXMLExtDocType.SetRepeat(Value: WideString);
begin
  SetAttribute('Repeat', Value);
end;

function TXMLExtDocType.GetNoAccount: WideString;
begin
  Result := AttributeNodes['NoAccount'].Text;
end;

procedure TXMLExtDocType.SetNoAccount(Value: WideString);
begin
  SetAttribute('NoAccount', Value);
end;

function TXMLExtDocType.GetData: IXMLDataTypeList;
begin
  Result := FData;
end;

function TXMLExtDocType.GetPayRekv: IXMLPayRekvTypeList;
begin
  Result := FPayRekv;
end;

{ TXMLExtDocTypeList }

function TXMLExtDocTypeList.Add: IXMLExtDocType;
begin
  Result := AddItem(-1) as IXMLExtDocType;
end;

function TXMLExtDocTypeList.Insert(const Index: Integer): IXMLExtDocType;
begin
  Result := AddItem(Index) as IXMLExtDocType;
end;
function TXMLExtDocTypeList.GetItem(Index: Integer): IXMLExtDocType;
begin
  Result := List[Index] as IXMLExtDocType;
end;

{ TXMLPayRekvType }

function TXMLPayRekvType.GetRecpName: WideString;
begin
  Result := AttributeNodes['RecpName'].Text;
end;

procedure TXMLPayRekvType.SetRecpName(Value: WideString);
begin
  SetAttribute('RecpName', Value);
end;

function TXMLPayRekvType.GetRecpBank: WideString;
begin
  Result := AttributeNodes['RecpBank'].Text;
end;

procedure TXMLPayRekvType.SetRecpBank(Value: WideString);
begin
  SetAttribute('RecpBank', Value);
end;

function TXMLPayRekvType.GetRecpBIK: WideString;
begin
  Result := AttributeNodes['RecpBIK'].Text;
end;

procedure TXMLPayRekvType.SetRecpBIK(Value: WideString);
begin
  SetAttribute('RecpBIK', Value);
end;

function TXMLPayRekvType.GetRecpCnt: WideString;
begin
  Result := AttributeNodes['RecpCnt'].Text;
end;

procedure TXMLPayRekvType.SetRecpCnt(Value: WideString);
begin
  SetAttribute('RecpCnt', Value);
end;

function TXMLPayRekvType.GetRecpINN: WideString;
begin
  Result := AttributeNodes['RecpINN'].Text;
end;

procedure TXMLPayRekvType.SetRecpINN(Value: WideString);
begin
  SetAttribute('RecpINN', Value);
end;

function TXMLPayRekvType.GetRecpKPP: WideString;
begin
  Result := AttributeNodes['RecpKPP'].Text;
end;

procedure TXMLPayRekvType.SetRecpKPP(Value: WideString);
begin
  SetAttribute('RecpKPP', Value);
end;

function TXMLPayRekvType.GetOKATO: WideString;
begin
  Result := AttributeNodes['OKATO'].Text;
end;

procedure TXMLPayRekvType.SetOKATO(Value: WideString);
begin
  SetAttribute('OKATO', Value);
end;

function TXMLPayRekvType.GetKBK: WideString;
begin
  Result := AttributeNodes['KBK'].Text;
end;

procedure TXMLPayRekvType.SetKBK(Value: WideString);
begin
  SetAttribute('KBK', Value);
end;

function TXMLPayRekvType.GetPokPl: WideString;
begin
  Result := AttributeNodes['PokPl'].Text;
end;

procedure TXMLPayRekvType.SetPokPl(Value: WideString);
begin
  SetAttribute('PokPl', Value);
end;

function TXMLPayRekvType.GetRekvSum: WideString;
begin
  Result := AttributeNodes['RekvSum'].Text;
end;

procedure TXMLPayRekvType.SetRekvSum(Value: WideString);
begin
  SetAttribute('RekvSum', Value);
end;

{ TXMLPayRekvTypeList }

function TXMLPayRekvTypeList.Add: IXMLPayRekvType;
begin
  Result := AddItem(-1) as IXMLPayRekvType;
end;

function TXMLPayRekvTypeList.Insert(const Index: Integer): IXMLPayRekvType;
begin
  Result := AddItem(Index) as IXMLPayRekvType;
end;
function TXMLPayRekvTypeList.GetItem(Index: Integer): IXMLPayRekvType;
begin
  Result := List[Index] as IXMLPayRekvType;
end;

{ TXMLProcDocType }

procedure TXMLProcDocType.AfterConstruction;
begin
  RegisterChildNode('IP', TXMLIPType);
  inherited;
end;

function TXMLProcDocType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLProcDocType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLProcDocType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLProcDocType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLProcDocType.GetSPI: WideString;
begin
  Result := AttributeNodes['SPI'].Text;
end;

procedure TXMLProcDocType.SetSPI(Value: WideString);
begin
  SetAttribute('SPI', Value);
end;

function TXMLProcDocType.GetSPIFio: WideString;
begin
  Result := AttributeNodes['SPIFio'].Text;
end;

procedure TXMLProcDocType.SetSPIFio(Value: WideString);
begin
  SetAttribute('SPIFio', Value);
end;

function TXMLProcDocType.GetSPIPost: WideString;
begin
  Result := AttributeNodes['SPIPost'].Text;
end;

procedure TXMLProcDocType.SetSPIPost(Value: WideString);
begin
  SetAttribute('SPIPost', Value);
end;

function TXMLProcDocType.GetDocNum: WideString;
begin
  Result := AttributeNodes['DocNum'].Text;
end;

procedure TXMLProcDocType.SetDocNum(Value: WideString);
begin
  SetAttribute('DocNum', Value);
end;

function TXMLProcDocType.GetDocType: WideString;
begin
  Result := AttributeNodes['DocType'].Text;
end;

procedure TXMLProcDocType.SetDocType(Value: WideString);
begin
  SetAttribute('DocType', Value);
end;

function TXMLProcDocType.GetSum: WideString;
begin
  Result := AttributeNodes['Sum'].Text;
end;

procedure TXMLProcDocType.SetSum(Value: WideString);
begin
  SetAttribute('Sum', Value);
end;

function TXMLProcDocType.GetReason: WideString;
begin
  Result := AttributeNodes['Reason'].Text;
end;

procedure TXMLProcDocType.SetReason(Value: WideString);
begin
  SetAttribute('Reason', Value);
end;

function TXMLProcDocType.GetArtical: WideString;
begin
  Result := AttributeNodes['Artical'].Text;
end;

procedure TXMLProcDocType.SetArtical(Value: WideString);
begin
  SetAttribute('Artical', Value);
end;

function TXMLProcDocType.GetPart: WideString;
begin
  Result := AttributeNodes['Part'].Text;
end;

procedure TXMLProcDocType.SetPart(Value: WideString);
begin
  SetAttribute('Part', Value);
end;

function TXMLProcDocType.GetBeginDate: WideString;
begin
  Result := AttributeNodes['BeginDate'].Text;
end;

procedure TXMLProcDocType.SetBeginDate(Value: WideString);
begin
  SetAttribute('BeginDate', Value);
end;

function TXMLProcDocType.GetEndDate: WideString;
begin
  Result := AttributeNodes['EndDate'].Text;
end;

procedure TXMLProcDocType.SetEndDate(Value: WideString);
begin
  SetAttribute('EndDate', Value);
end;

function TXMLProcDocType.GetIP: IXMLIPType;
begin
  Result := ChildNodes['IP'] as IXMLIPType;
end;

{ TXMLProcDocTypeList }

function TXMLProcDocTypeList.Add: IXMLProcDocType;
begin
  Result := AddItem(-1) as IXMLProcDocType;
end;

function TXMLProcDocTypeList.Insert(const Index: Integer): IXMLProcDocType;
begin
  Result := AddItem(Index) as IXMLProcDocType;
end;
function TXMLProcDocTypeList.GetItem(Index: Integer): IXMLProcDocType;
begin
  Result := List[Index] as IXMLProcDocType;
end;

{ TXMLExtQueryType }

function TXMLExtQueryType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLExtQueryType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLExtQueryType.GetIPKey: WideString;
begin
  Result := AttributeNodes['IPKey'].Text;
end;

procedure TXMLExtQueryType.SetIPKey(Value: WideString);
begin
  SetAttribute('IPKey', Value);
end;

function TXMLExtQueryType.GetIDKey: WideString;
begin
  Result := AttributeNodes['IDKey'].Text;
end;

procedure TXMLExtQueryType.SetIDKey(Value: WideString);
begin
  SetAttribute('IDKey', Value);
end;

function TXMLExtQueryType.GetIPNum: WideString;
begin
  Result := AttributeNodes['IPNum'].Text;
end;

procedure TXMLExtQueryType.SetIPNum(Value: WideString);
begin
  SetAttribute('IPNum', Value);
end;

{ TXMLExtQueryTypeList }

function TXMLExtQueryTypeList.Add: IXMLExtQueryType;
begin
  Result := AddItem(-1) as IXMLExtQueryType;
end;

function TXMLExtQueryTypeList.Insert(const Index: Integer): IXMLExtQueryType;
begin
  Result := AddItem(Index) as IXMLExtQueryType;
end;
function TXMLExtQueryTypeList.GetItem(Index: Integer): IXMLExtQueryType;
begin
  Result := List[Index] as IXMLExtQueryType;
end;

{ TXMLAnswerType }

procedure TXMLAnswerType.AfterConstruction;
begin
  RegisterChildNode('AnswerDoc', TXMLAnswerDocType);
  RegisterChildNode('AnswerSum', TXMLAnswerSumType);
  inherited;
end;

function TXMLAnswerType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLAnswerType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLAnswerType.GetIPKey: WideString;
begin
  Result := AttributeNodes['IPKey'].Text;
end;

procedure TXMLAnswerType.SetIPKey(Value: WideString);
begin
  SetAttribute('IPKey', Value);
end;

function TXMLAnswerType.GetAnswerDoc: IXMLAnswerDocType;
begin
  Result := ChildNodes['AnswerDoc'] as IXMLAnswerDocType;
end;

function TXMLAnswerType.GetAnswerSum: IXMLAnswerSumType;
begin
  Result := ChildNodes['AnswerSum'] as IXMLAnswerSumType;
end;

{ TXMLAnswerTypeList }

function TXMLAnswerTypeList.Add: IXMLAnswerType;
begin
  Result := AddItem(-1) as IXMLAnswerType;
end;

function TXMLAnswerTypeList.Insert(const Index: Integer): IXMLAnswerType;
begin
  Result := AddItem(Index) as IXMLAnswerType;
end;
function TXMLAnswerTypeList.GetItem(Index: Integer): IXMLAnswerType;
begin
  Result := List[Index] as IXMLAnswerType;
end;

{ TXMLAnswerDocType }

function TXMLAnswerDocType.GetDocKey: WideString;
begin
  Result := AttributeNodes['DocKey'].Text;
end;

procedure TXMLAnswerDocType.SetDocKey(Value: WideString);
begin
  SetAttribute('DocKey', Value);
end;

function TXMLAnswerDocType.GetIPKey: WideString;
begin
  Result := AttributeNodes['IPKey'].Text;
end;

procedure TXMLAnswerDocType.SetIPKey(Value: WideString);
begin
  SetAttribute('IPKey', Value);
end;

function TXMLAnswerDocType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLAnswerDocType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLAnswerDocType.GetSPI: WideString;
begin
  Result := AttributeNodes['SPI'].Text;
end;

procedure TXMLAnswerDocType.SetSPI(Value: WideString);
begin
  SetAttribute('SPI', Value);
end;

function TXMLAnswerDocType.GetSPIFio: WideString;
begin
  Result := AttributeNodes['SPIFio'].Text;
end;

procedure TXMLAnswerDocType.SetSPIFio(Value: WideString);
begin
  SetAttribute('SPIFio', Value);
end;

function TXMLAnswerDocType.GetSPIPost: WideString;
begin
  Result := AttributeNodes['SPIPost'].Text;
end;

procedure TXMLAnswerDocType.SetSPIPost(Value: WideString);
begin
  SetAttribute('SPIPost', Value);
end;

function TXMLAnswerDocType.GetDocNum: WideString;
begin
  Result := AttributeNodes['DocNum'].Text;
end;

procedure TXMLAnswerDocType.SetDocNum(Value: WideString);
begin
  SetAttribute('DocNum', Value);
end;

function TXMLAnswerDocType.GetDocType: WideString;
begin
  Result := AttributeNodes['DocType'].Text;
end;

procedure TXMLAnswerDocType.SetDocType(Value: WideString);
begin
  SetAttribute('DocType', Value);
end;

function TXMLAnswerDocType.GetCounterpart: WideString;
begin
  Result := AttributeNodes['Counterpart'].Text;
end;

procedure TXMLAnswerDocType.SetCounterpart(Value: WideString);
begin
  SetAttribute('Counterpart', Value);
end;

function TXMLAnswerDocType.GetReason: WideString;
begin
  Result := AttributeNodes['Reason'].Text;
end;

procedure TXMLAnswerDocType.SetReason(Value: WideString);
begin
  SetAttribute('Reason', Value);
end;

function TXMLAnswerDocType.GetArtical: WideString;
begin
  Result := AttributeNodes['Artical'].Text;
end;

procedure TXMLAnswerDocType.SetArtical(Value: WideString);
begin
  SetAttribute('Artical', Value);
end;

function TXMLAnswerDocType.GetPart: WideString;
begin
  Result := AttributeNodes['Part'].Text;
end;

procedure TXMLAnswerDocType.SetPart(Value: WideString);
begin
  SetAttribute('Part', Value);
end;

{ TXMLAnswerSumType }

function TXMLAnswerSumType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLAnswerSumType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLAnswerSumType.GetIPKey: WideString;
begin
  Result := AttributeNodes['IPKey'].Text;
end;

procedure TXMLAnswerSumType.SetIPKey(Value: WideString);
begin
  SetAttribute('IPKey', Value);
end;

function TXMLAnswerSumType.GetAccDate: WideString;
begin
  Result := AttributeNodes['AccDate'].Text;
end;

procedure TXMLAnswerSumType.SetAccDate(Value: WideString);
begin
  SetAttribute('AccDate', Value);
end;

function TXMLAnswerSumType.GetDocType: WideString;
begin
  Result := AttributeNodes['DocType'].Text;
end;

procedure TXMLAnswerSumType.SetDocType(Value: WideString);
begin
  SetAttribute('DocType', Value);
end;

function TXMLAnswerSumType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLAnswerSumType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLAnswerSumType.GetDocNum: WideString;
begin
  Result := AttributeNodes['DocNum'].Text;
end;

procedure TXMLAnswerSumType.SetDocNum(Value: WideString);
begin
  SetAttribute('DocNum', Value);
end;

function TXMLAnswerSumType.GetRegType: WideString;
begin
  Result := AttributeNodes['RegType'].Text;
end;

procedure TXMLAnswerSumType.SetRegType(Value: WideString);
begin
  SetAttribute('RegType', Value);
end;

function TXMLAnswerSumType.GetDestType: WideString;
begin
  Result := AttributeNodes['DestType'].Text;
end;

procedure TXMLAnswerSumType.SetDestType(Value: WideString);
begin
  SetAttribute('DestType', Value);
end;

{ TXMLExtDebtFixType }

function TXMLExtDebtFixType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLExtDebtFixType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLExtDebtFixType.GetIDNum: WideString;
begin
  Result := AttributeNodes['IDNum'].Text;
end;

procedure TXMLExtDebtFixType.SetIDNum(Value: WideString);
begin
  SetAttribute('IDNum', Value);
end;

function TXMLExtDebtFixType.GetIDDate: WideString;
begin
  Result := AttributeNodes['IDDate'].Text;
end;

procedure TXMLExtDebtFixType.SetIDDate(Value: WideString);
begin
  SetAttribute('IDDate', Value);
end;

function TXMLExtDebtFixType.GetDebtorBirthDate: WideString;
begin
  Result := AttributeNodes['DebtorBithDate'].Text;
end;

procedure TXMLExtDebtFixType.SetDebtorBirthDate(Value: WideString);
begin
  SetAttribute('DebtorBithDate', Value);
end;

function TXMLExtDebtFixType.GetDebtorINN: WideString;
begin
  Result := AttributeNodes['DebtorINN'].Text;
end;

procedure TXMLExtDebtFixType.SetDebtorINN(Value: WideString);
begin
  SetAttribute('DebtorINN', Value);
end;

function TXMLExtDebtFixType.GetDebtorKPP: WideString;
begin
  Result := AttributeNodes['DebtorKPP'].Text;
end;

procedure TXMLExtDebtFixType.SetDebtorKPP(Value: WideString);
begin
  SetAttribute('DebtorKPP', Value);
end;

function TXMLExtDebtFixType.GetDebtorAdr: WideString;
begin
  Result := AttributeNodes['DebtorAdr'].Text;
end;

procedure TXMLExtDebtFixType.SetDebtorAdr(Value: WideString);
begin
  SetAttribute('DebtorAdr', Value);
end;

function TXMLExtDebtFixType.GetPaySum: WideString;
begin
  Result := AttributeNodes['PaySum'].Text;
end;

procedure TXMLExtDebtFixType.SetPaySum(Value: WideString);
begin
  SetAttribute('PaySum', Value);
end;

function TXMLExtDebtFixType.GetPDDate: WideString;
begin
  Result := AttributeNodes['PDDate'].Text;
end;

procedure TXMLExtDebtFixType.SetPDDate(Value: WideString);
begin
  SetAttribute('PDDate', Value);
end;

function TXMLExtDebtFixType.GetPDNum: WideString;
begin
  Result := AttributeNodes['PDNum'].Text;
end;

procedure TXMLExtDebtFixType.SetPDNum(Value: WideString);
begin
  SetAttribute('PDNum', Value);
end;

{ TXMLExtDebtFixTypeList }

function TXMLExtDebtFixTypeList.Add: IXMLExtDebtFixType;
begin
  Result := AddItem(-1) as IXMLExtDebtFixType;
end;

function TXMLExtDebtFixTypeList.Insert(const Index: Integer): IXMLExtDebtFixType;
begin
  Result := AddItem(Index) as IXMLExtDebtFixType;
end;
function TXMLExtDebtFixTypeList.GetItem(Index: Integer): IXMLExtDebtFixType;
begin
  Result := List[Index] as IXMLExtDebtFixType;
end;

{ TXMLRecallDocType }

procedure TXMLRecallDocType.AfterConstruction;
begin
  RegisterChildNode('Data', TXMLDataType);
  inherited;
end;

function TXMLRecallDocType.GetKey: WideString;
begin
  Result := AttributeNodes['Key'].Text;
end;

procedure TXMLRecallDocType.SetKey(Value: WideString);
begin
  SetAttribute('Key', Value);
end;

function TXMLRecallDocType.GetDocDate: WideString;
begin
  Result := AttributeNodes['DocDate'].Text;
end;

procedure TXMLRecallDocType.SetDocDate(Value: WideString);
begin
  SetAttribute('DocDate', Value);
end;

function TXMLRecallDocType.GetSPI: WideString;
begin
  Result := AttributeNodes['SPI'].Text;
end;

procedure TXMLRecallDocType.SetSPI(Value: WideString);
begin
  SetAttribute('SPI', Value);
end;

function TXMLRecallDocType.GetSPIFio: WideString;
begin
  Result := AttributeNodes['SPIFio'].Text;
end;

procedure TXMLRecallDocType.SetSPIFio(Value: WideString);
begin
  SetAttribute('SPIFio', Value);
end;

function TXMLRecallDocType.GetSPIPost: WideString;
begin
  Result := AttributeNodes['SPIPost'].Text;
end;

procedure TXMLRecallDocType.SetSPIPost(Value: WideString);
begin
  SetAttribute('SPIPost', Value);
end;

function TXMLRecallDocType.GetClaimerType: WideString;
begin
  Result := AttributeNodes['ClaimerType'].Text;
end;

procedure TXMLRecallDocType.SetClaimerType(Value: WideString);
begin
  SetAttribute('ClaimerType', Value);
end;

function TXMLRecallDocType.GetClaimerName: WideString;
begin
  Result := AttributeNodes['ClaimerName'].Text;
end;

procedure TXMLRecallDocType.SetClaimerName(Value: WideString);
begin
  SetAttribute('ClaimerName', Value);
end;

function TXMLRecallDocType.GetOrganSignPost: WideString;
begin
  Result := AttributeNodes['OrganSignPost'].Text;
end;

procedure TXMLRecallDocType.SetOrganSignPost(Value: WideString);
begin
  SetAttribute('OrganSignPost', Value);
end;

function TXMLRecallDocType.GetOrganSignFIO: WideString;
begin
  Result := AttributeNodes['OrganSignFIO'].Text;
end;

procedure TXMLRecallDocType.SetOrganSignFIO(Value: WideString);
begin
  SetAttribute('OrganSignFIO', Value);
end;

function TXMLRecallDocType.GetIDType: WideString;
begin
  Result := AttributeNodes['IDType'].Text;
end;

procedure TXMLRecallDocType.SetIDType(Value: WideString);
begin
  SetAttribute('IDType', Value);
end;

function TXMLRecallDocType.GetIDNum: WideString;
begin
  Result := AttributeNodes['IDNum'].Text;
end;

procedure TXMLRecallDocType.SetIDNum(Value: WideString);
begin
  SetAttribute('IDNum', Value);
end;

function TXMLRecallDocType.GetIDDate: WideString;
begin
  Result := AttributeNodes['IDDate'].Text;
end;

procedure TXMLRecallDocType.SetIDDate(Value: WideString);
begin
  SetAttribute('IDDate', Value);
end;

function TXMLRecallDocType.GetDebtorType: WideString;
begin
  Result := AttributeNodes['DebtorType'].Text;
end;

procedure TXMLRecallDocType.SetDebtorType(Value: WideString);
begin
  SetAttribute('DebtorType', Value);
end;

function TXMLRecallDocType.GetDebtorName: WideString;
begin
  Result := AttributeNodes['DebtorName'].Text;
end;

procedure TXMLRecallDocType.SetDebtorName(Value: WideString);
begin
  SetAttribute('DebtorName', Value);
end;

function TXMLRecallDocType.GetDebtorAdr: WideString;
begin
  Result := AttributeNodes['DebtorAdr'].Text;
end;

procedure TXMLRecallDocType.SetDebtorAdr(Value: WideString);
begin
  SetAttribute('DebtorAdr', Value);
end;

function TXMLRecallDocType.GetDebtorBirthDate: WideString;
begin
  Result := AttributeNodes['DebtorBirthDate'].Text;
end;

procedure TXMLRecallDocType.SetDebtorBirthDate(Value: WideString);
begin
  SetAttribute('DebtorBirthDate', Value);
end;

function TXMLRecallDocType.GetDebtorBirthPlace: WideString;
begin
  Result := AttributeNodes['DebtorBirthPlace'].Text;
end;

procedure TXMLRecallDocType.SetDebtorBirthPlace(Value: WideString);
begin
  SetAttribute('DebtorBirthPlace', Value);
end;

function TXMLRecallDocType.GetDebtorINN: WideString;
begin
  Result := AttributeNodes['DebtorINN'].Text;
end;

procedure TXMLRecallDocType.SetDebtorINN(Value: WideString);
begin
  SetAttribute('DebtorINN', Value);
end;

function TXMLRecallDocType.GetDebtorKPP: WideString;
begin
  Result := AttributeNodes['DebtorKPP'].Text;
end;

procedure TXMLRecallDocType.SetDebtorKPP(Value: WideString);
begin
  SetAttribute('DebtorKPP', Value);
end;

function TXMLRecallDocType.GetDebtorNo: WideString;
begin
  Result := AttributeNodes['DebtorNo'].Text;
end;

procedure TXMLRecallDocType.SetDebtorNo(Value: WideString);
begin
  SetAttribute('DebtorNo', Value);
end;

function TXMLRecallDocType.GetSubj: WideString;
begin
  Result := AttributeNodes['Subj'].Text;
end;

procedure TXMLRecallDocType.SetSubj(Value: WideString);
begin
  SetAttribute('Subj', Value);
end;

function TXMLRecallDocType.GetIDRecall: WideString;
begin
  Result := AttributeNodes['IDRecall'].Text;
end;

procedure TXMLRecallDocType.SetIDRecall(Value: WideString);
begin
  SetAttribute('IDRecall', Value);
end;

function TXMLRecallDocType.GetData: IXMLDataType;
begin
  Result := ChildNodes['Data'] as IXMLDataType;
end;

{ TXMLRecallDocTypeList }

function TXMLRecallDocTypeList.Add: IXMLRecallDocType;
begin
  Result := AddItem(-1) as IXMLRecallDocType;
end;

function TXMLRecallDocTypeList.Insert(const Index: Integer): IXMLRecallDocType;
begin
  Result := AddItem(Index) as IXMLRecallDocType;
end;
function TXMLRecallDocTypeList.GetItem(Index: Integer): IXMLRecallDocType;
begin
  Result := List[Index] as IXMLRecallDocType;
end;

{ TXMLTMessageType }

function TXMLTMessageType.GetKeyMess: WideString;
begin
  Result := AttributeNodes['KeyMess'].Text;
end;

procedure TXMLTMessageType.SetKeyMess(Value: WideString);
begin
  SetAttribute('KeyMess', Value);
end;

function TXMLTMessageType.GetTypeDoc: WideString;
begin
  Result := AttributeNodes['TypeDoc'].Text;
end;

procedure TXMLTMessageType.SetTypeDoc(Value: WideString);
begin
  SetAttribute('TypeDoc', Value);
end;

function TXMLTMessageType.GetKeyDoc: WideString;
begin
  Result := AttributeNodes['KeyDoc'].Text;
end;

procedure TXMLTMessageType.SetKeyDoc(Value: WideString);
begin
  SetAttribute('KeyDoc', Value);
end;

function TXMLTMessageType.GetSpecStr: WideString;
begin
  Result := AttributeNodes['SpecStr'].Text;
end;

procedure TXMLTMessageType.SetSpecStr(Value: WideString);
begin
  SetAttribute('SpecStr', Value);
end;

function TXMLTMessageType.GetDateMess: WideString;
begin
  Result := AttributeNodes['DateMess'].Text;
end;

procedure TXMLTMessageType.SetDateMess(Value: WideString);
begin
  SetAttribute('DateMess', Value);
end;

function TXMLTMessageType.GetMessCod: WideString;
begin
  Result := AttributeNodes['MessCod'].Text;
end;

procedure TXMLTMessageType.SetMessCod(Value: WideString);
begin
  SetAttribute('MessCod', Value);
end;

{ TXMLTMessageTypeList }

function TXMLTMessageTypeList.Add: IXMLTMessageType;
begin
  Result := AddItem(-1) as IXMLTMessageType;
end;

function TXMLTMessageTypeList.Insert(const Index: Integer): IXMLTMessageType;
begin
  Result := AddItem(Index) as IXMLTMessageType;
end;
function TXMLTMessageTypeList.GetItem(Index: Integer): IXMLTMessageType;
begin
  Result := List[Index] as IXMLTMessageType;
end;

end.