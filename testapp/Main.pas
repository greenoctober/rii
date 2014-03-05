unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  XMLDoc,  xmldom, XMLIntf, msxmldom,
  UDBRII,
  UTypeRII,
  FIBDatabase,
  pFIBDatabase,
  pFIBErrorHandler,
  FIB,
  FIBQuery,
  pFIBQuery,
  URIIDriver, UTools;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  
var
  Form1: TForm1;
  arrDBProp: array of TDBProp;
  arrProfile: array of TProfile;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var aXmlDoc: IXMLDocument;
    aRoot: IXMLNode;
    elementIndex: integer;

begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;
  SetLength(arrDBProp, 0);
  try
    aXMLDoc.LoadFromFile('F:\prog\GitHub\regmvv-win\db-proprerties.xml');
    aRoot := aXmlDoc.ChildNodes.Nodes['DATA'];
    SetLength(arrDBProp, aRoot.ChildNodes.Count);
    elementIndex := 0;
    while (elementIndex <= aRoot.ChildNodes.Count - 1) do begin
      if aRoot.ChildNodes.Nodes[elementIndex].NodeName = 'db' then begin
        arrDBProp[elementIndex].name := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('nameDept');
        Memo1.Lines.Add(arrDBProp[elementIndex].name);
        arrDBProp[elementIndex].id := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('id');
        Memo1.Lines.Add(arrDBProp[elementIndex].id);
        arrDBProp[elementIndex].path := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('path');
        Memo1.Lines.Add(arrDBProp[elementIndex].path);
        arrDBProp[elementIndex].user := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('user');
        Memo1.Lines.Add(arrDBProp[elementIndex].user);
        arrDBProp[elementIndex].password := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('password');
        Memo1.Lines.Add(arrDBProp[elementIndex].password);
      end;
      inc(elementIndex);
    end;
  except
  end;
  aXmlDoc.Active := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
var aXmlDoc: IXMLDocument;
    aRoot: IXMLNode;
    elementIndex: integer;
begin
  aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
  aXMLDoc.Active := true;
  SetLength(arrProfile, 0);
  try
    aXMLDoc.LoadFromFile('F:\prog\GitHub\regmvv-win\agent-properties.xml');
    aRoot := aXmlDoc.ChildNodes.Nodes['DATA'];
    SetLength(arrProfile, aRoot.ChildNodes.Count);
    elementIndex := 0;
    while (elementIndex <= aRoot.ChildNodes.Count - 1) do begin
      if aRoot.ChildNodes.Nodes[elementIndex].NodeName = 'profile' then begin
        arrProfile[elementIndex].id := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('id');
        Memo1.Lines.Add(arrProfile[elementIndex].id);
        arrProfile[elementIndex].agentCode := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('agentCode');
        Memo1.Lines.Add(arrProfile[elementIndex].agentCode);
        arrProfile[elementIndex].agentDeptCode := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('agentDeptCode');
        Memo1.Lines.Add(arrProfile[elementIndex].agentDeptCode);
        arrProfile[elementIndex].agentAgreementCode := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('agentAgreementCode');
        Memo1.Lines.Add(arrProfile[elementIndex].agentAgreementCode);
        arrProfile[elementIndex].fileFormat := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('fileFormat');
        Memo1.Lines.Add(arrProfile[elementIndex].fileFormat);
        arrProfile[elementIndex].coding := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('coding');
        Memo1.Lines.Add(arrProfile[elementIndex].coding);
        arrProfile[elementIndex].fileMask := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('fileMask');
        Memo1.Lines.Add(arrProfile[elementIndex].fileMask);
        arrProfile[elementIndex].loadPath := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('loadPath');
        Memo1.Lines.Add(arrProfile[elementIndex].loadPath);
        arrProfile[elementIndex].loadPathProcessed := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('loadPathProcessed');
        Memo1.Lines.Add(arrProfile[elementIndex].loadPathProcessed);
        arrProfile[elementIndex].loadPathError := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('loadPathError');
        Memo1.Lines.Add(arrProfile[elementIndex].loadPathError);
        arrProfile[elementIndex].unloadPath := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('unloadPath');
        Memo1.Lines.Add(arrProfile[elementIndex].unloadPath);
        arrProfile[elementIndex].nameLoadFile := aRoot.ChildNodes.Nodes[elementIndex].GetAttribute('nameLoadFile');
        Memo1.Lines.Add(arrProfile[elementIndex].nameLoadFile);
      end;
      inc(elementIndex);
    end;
  except
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
{/* Необходимо опросить все таблицы на наличие подготовленных данных для выгрузки
    EXT_REQUEST, EXT_IP_ACTS, EXT_RESTRICTION, EXT_EXT_DOCUMENT_NOTE
*/}
const
  sql_ext_getPack = 'select distinct(pack_number) from @@table_name@ et' +
                        ' where et.processed = 0 and et.mvv_agent_code = :mvvAgentCode'+
                        ' and et.mvv_agent_dept_code = :mvvAgentDeptCode' +
                        ' and et.mvv_agreement_code = :mvvAgreementCode';
  sql_ext_getData = 'select * from @@table_name@ et where et.pack_number = :packNumber';
  sql_update = 'update @@table_name@ et set et.processed = 1 where et.pack_number = :packNumber';
var 
    arrPackNum: array of string;
    aQuery: TpFIBQuery;
    aTransact: TpFIBTransaction;
    aDB: TpFIBDatabase;
    index, indexAgent, indexPack: integer;
    aXMLDoc : IXMLDocument;
    iNode: IXMLNode;
    nameXMLFile: String;
    strLst: TStringList;
    xmlFileFlag : boolean;
begin
  aQuery := TpFIBQuery.Create(nil);
  aTransact := TpFIBTransaction.Create(nil);
  aDB := TpFIBDatabase.Create(nil);
  SetDbParam(aDB, aTransact, 'aDB');
  SetTransactionParam(aTransact, aDB, 'aTransact');
  SetQueryParam(aQuery, aDB, aTransact, 'aQuery');
  SetLength(arrPackNum, 0);

  nameXMLFile := 'F:\prog\GitHub\regmvv-win\testapp\document' + DateToStr(Now) + '.xml';

  for index:=0 to length(arrDBProp)-1 do begin
  //перебор баз отделов
    if connectDB(aDB, arrDBProp[index].path, arrDBProp[index].user, arrDBProp[index].password, 'win1251') then begin
      aXmlDoc := TXMLDocument.Create(nil) as IXMLDocument;
      aXmlDoc.Active := true;
      Memo1.Lines.Add('connect ' + arrDBProp[index].path);
      for indexAgent:=0 to length(arrProfile)-1 do begin
      //перебор настроек агентов

          //тут должен быть перебор таблиц
        SetQuery(aQuery, sql_ext_getPack, ['EXT_REQUEST',arrProfile[indexAgent].agentCode, arrProfile[indexAgent].agentDeptCode, arrProfile[indexAgent].agentAgreementCode]);

        aQuery.Transaction.StartTransaction;
        try
          aQuery.ExecQuery;
          indexPack := 0;
          if aQuery.RecordCount = 0 then  continue;  // набор пустой, пропускаем дальнейшие операции

          while not aQuery.Eof do begin
            SetLength(arrPackNum, length(arrPackNum)+1);
            arrPackNum[indexPack] := aQuery.FldByName['pack_number'].AsString;
            inc(indexPack);
            aQuery.Next;
          end;
          aQuery.Transaction.Commit;
        except
          aQuery.Transaction.Rollback;
        end;
        //view pack_num
        for indexPack := 0 to length(arrPackNum)-1 do Memo1.Lines.Add(arrPackNum[indexPack]);
        for indexPack := 0 to length(arrPackNum)-1 do begin
        //забираем содержимое пакета
          SetQuery(aQuery, sql_ext_getData, ['EXT_REQUEST', arrPackNum[indexPack]]);
          aQuery.Transaction.StartTransaction;
          try
            aQuery.ExecQuery;
            //пишем в xml
            while not aQuery.Eof do begin
              URIIDriver.unloadData(nameXMLFile, aQuery, EXT_REQUEST, arrProfile, indexAgent);

              aQuery.Next;
            end;
            aQuery.Transaction.Commit;
          except
            aQuery.Transaction.Rollback;
          end;
          //меняем статус на отправленный
          SetQuery(aQuery, sql_update, ['EXT_REQUEST', arrPackNum[indexPack]]);
          aQuery.Transaction.StartTransaction;
          try
            aQuery.ExecQuery;
            aQuery.Transaction.Commit;
          except
            aQuery.Transaction.Rollback;
          end;
        end;
      end
    end
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
{/* Необходимо опросить все таблицы на наличие подготовленных данных для выгрузки
    EXT_REQUEST, EXT_IP_ACTS, EXT_RESTRICTION, EXT_EXT_DOCUMENT_NOTE
*/}
const
  sql_ext_getPack = 'select distinct(pack_number) from @@table_name@ et' +
                        ' where et.processed = 0 and et.mvv_agent_code = :mvvAgentCode'+
                        ' and et.mvv_agent_dept_code = :mvvAgentDeptCode' +
                        ' and et.mvv_agreement_code = :mvvAgreementCode';
  sql_ext_getData = 'select * from @@table_name@ et where et.pack_number = :packNumber';
  sql_update = 'update @@table_name@ et set et.processed = 1 where et.pack_number = :packNumber';
var
arrPackNum: array of string;
    aQuery: TpFIBQuery;
    aTransact: TpFIBTransaction;
    aDB: TpFIBDatabase;
    index, indexAgent, indexPack: integer;
    nameXMLFile: String;
    strLst: TStringList;

begin
  aQuery := TpFIBQuery.Create(nil);
  aTransact := TpFIBTransaction.Create(nil);
  aDB := TpFIBDatabase.Create(nil);
  SetDbParam(aDB, aTransact, 'aDB');
  SetTransactionParam(aTransact, aDB, 'aTransact');
  SetQueryParam(aQuery, aDB, aTransact, 'aQuery');

  SetLength(arrPackNum, 0);

  for index:=0 to length(arrDBProp)-1 do begin
  //перебор баз отделов
    if connectDB(aDB, arrDBProp[index].path, arrDBProp[index].user, arrDBProp[index].password, 'win1251') then begin
      Memo1.Lines.Add('connect ' + arrDBProp[index].path);//убрать
      for indexAgent:=0 to length(arrProfile)-1 do begin
        //перебор настроек агентов
        //тут должен быть перебор таблиц
        SetQuery(aQuery, sql_ext_getPack, ['EXT_REQUEST',arrProfile[indexAgent].agentCode, arrProfile[indexAgent].agentDeptCode, arrProfile[indexAgent].agentAgreementCode]);
        aQuery.Transaction.StartTransaction;
        try
          aQuery.ExecQuery;
          indexPack := 0;
          if aQuery.RecordCount = 0 then  continue;  // набор пустой, пропускаем дальнейшие операции
          while not aQuery.Eof do begin
            SetLength(arrPackNum, length(arrPackNum)+1);
            arrPackNum[indexPack] := aQuery.FldByName['pack_number'].AsString;
            inc(indexPack);
            aQuery.Next;
          end;
          aQuery.Transaction.Commit;
        except
          aQuery.Transaction.Rollback;
        end;
        //view pack_num
        for indexPack := 0 to length(arrPackNum)-1 do Memo1.Lines.Add(arrPackNum[indexPack]); //убрать
        for indexPack := 0 to length(arrPackNum)-1 do begin
        //забираем содержимое пакета
          SetQuery(aQuery, sql_ext_getData, ['EXT_REQUEST', arrPackNum[indexPack]]);
          aQuery.Transaction.StartTransaction;
          try
            aQuery.ExecQuery;
            //пишем в xml
            URIIDriver.unloadData('F:\prog\ИТ\ПФР_примеры\SSP_20101215_11_60029_071_060_000666.xml', aQuery, EXT_REQUEST, arrProfile, 0);
            aQuery.Transaction.Commit;
          except
            aQuery.Transaction.Rollback;
          end;
          //меняем статус на отправленный
          SetQuery(aQuery, sql_update, ['EXT_REQUEST', arrPackNum[indexPack]]);
          aQuery.Transaction.StartTransaction;
          try
            aQuery.ExecQuery;
            aQuery.Transaction.Commit;
          except
            aQuery.Transaction.Rollback;
          end;
        end;
      end
    end
  end;
  SetLength(arrPackNum, 0);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
arrPackNum: array of string;
    aQuery: TpFIBQuery;
    aTransact: TpFIBTransaction;
    aDB: TpFIBDatabase;
    index, indexAgent, indexPack: integer;
    aXMLDoc : IXMLDocument;
    iNode: IXMLNode;
    nameXMLFile: String;
    strLst: TStringList;
    xmlFileFlag : boolean;
begin
  aQuery := TpFIBQuery.Create(nil);
  aTransact := TpFIBTransaction.Create(nil);
  aDB := TpFIBDatabase.Create(nil);
  SetDbParam(aDB, aTransact, 'aDB');
  SetTransactionParam(aTransact, aDB, 'aTransact');
  SetQueryParam(aQuery, aDB, aTransact, 'aQuery');

  SetLength(arrPackNum, 0);

  for index:=0 to length(arrDBProp)-1 do begin
  //перебор баз отделов
    if connectDB(aDB, arrDBProp[index].path, arrDBProp[index].user, arrDBProp[index].password, 'win1251') then begin
      URIIDriver.loadData('F:\prog\ИТ\ПФР_примеры\PFR_20101214_12_60029_071_058_00001.xml', aQuery, EXT_RESPONSE, arrProfile, 0);
    
    end;
  end;
end;

end.
