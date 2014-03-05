{**********************************************************************}
{                                                                      }
{          copyright: greenoctober                                     }
{                                                                      }
{**********************************************************************}

unit UDBRII;

interface

uses
  FIBDatabase,
  pFIBDatabase,
  pFIBErrorHandler,
  FIB,
  FIBQuery,
  pFIBQuery,
  UTypeRII;

const
  {Messages}
  MSG_ERROR_SQL_EXEC = 'Ошибка выполнения sql запроса';
  MSG_ERROR_DBCONNECT = 'Ошибка подключения к БД';
  MSG_OK = 'Ok!';

function connectDB(tDatabase: TFIBDatabase; dbName, uName, uPassword, lc_ctype: string): boolean;
function ProcessDataFromDB(var tQuery: TFIBQuery; QueryText: String; transactCommit: boolean): String;
procedure transactionCommit(var tQuery: TFIBQuery);
procedure disconnectDB(tDatabase: TFIBDatabase);
procedure SetDbParam(var tDatabase: TpFIBDatabase; var fIBDefaultTransaction: TpFIBTransaction; nameObj: string);
procedure SetQueryParam(var tQuery: TpFIBQuery; var tDatabase: TpFIBDatabase; var tTransaction: TpFIBTransaction; nameObj: string);
procedure SetQuery(var tQuery: TpFIBQuery; QueryText: String; arrParam: array of Variant);
procedure SetTransactionParam(var tTransaction: TpFIBTransaction; var tDatabase: TpFIBDatabase; nameObj: string);
procedure dbLostConnect(tDatabase: TFIBDatabase; E: EFIBError; var Actions: TOnLostConnectActions);

function getGen(tQuery: TpFIBQuery; QueryText: String):Int64;

implementation

function connectDB(tDatabase: TFIBDatabase; dbName, uName, uPassword, lc_ctype: string): boolean;
var flag: boolean;
begin
  if tDataBase.Connected then tDataBase.Connected := false;
  flag := true;
  tDataBase.DBParams.Clear;
  tDataBase.DBParams.Add('user_name=' + uName);
  tDataBase.DBParams.Add('password=' + uPassword);
  tDataBase.DBParams.Add('lc_ctype=' + lc_ctype);
  tDataBase.DBName := dbName;
  try
    tDataBase.Connected := true;
  except
    flag := false;
  end;
  Result := flag;
end;

procedure disconnectDB(tDatabase: TFIBDatabase);
begin
  if tDatabase.Connected then tDatabase.Connected := False;
end;

function ProcessDataFromDB(var tQuery: TFIBQuery; QueryText: String; transactCommit: boolean): String;
begin
  tQuery.Transaction.StartTransaction;
  try
    tQuery.SQL.Clear;
    tQuery.SQL.Text := QueryText;
    tQuery.ExecQuery;
    Result := MSG_OK;
    if transactCommit then tQuery.Transaction.Commit;
  except
    tQuery.Transaction.Rollback;
    Result := MSG_ERROR_SQL_EXEC;
  end;
end;

procedure SetQuery(var tQuery: TpFIBQuery; QueryText: String; arrParam: array of Variant);
begin
  tQuery.SQL.Clear;
  tQuery.SQL.Text := QueryText;
  tQuery.SetParamValues(arrParam);
end;

function getGen(tQuery: TpFIBQuery; QueryText: String):Int64;
begin
  tQuery.SQL.Text := QueryText;
  tQuery.Transaction.StartTransaction;
  try
    tQuery.ExecQuery;
    Result := tQuery.Fields[0].AsInt64;
    tQuery.Transaction.Commit;
  except
    tQuery.Transaction.Rollback;
    // надо заканчивать, ибо дальнейшая работа бесполезна
    Result := -1;
  end;
end;

procedure transactionCommit(var tQuery: TFIBQuery);
begin
  try
    tQuery.Transaction.Commit;
  except
   {КАРАУЛ!!!}
  end;
end;

procedure dbLostConnect(tDatabase: TFIBDatabase; E: EFIBError; var Actions: TOnLostConnectActions);
begin
  Actions := laTerminateApp;
end;

procedure SetDbParam(var tDatabase: TpFIBDatabase; var fIBDefaultTransaction: TpFIBTransaction; nameObj: string);
begin
  tDatabase.UseLoginPrompt := false;
  tDatabase.Connected := false;
  tDatabase.DefaultTransaction := fIBDefaultTransaction;
  tDatabase.Timeout := 0;
  tDatabase.SQLDialect := 3;
  tDatabase.Name := nameObj;
  tDatabase.LibraryName := 'fbclient.dll';
  //tDatabase.OnLostConnect :=  '';
End;

procedure SetQueryParam(var tQuery: TpFIBQuery; var tDatabase: TpFIBDatabase; var tTransaction: TpFIBTransaction; nameObj: string);
begin
  tQuery.Database := tDatabase;
  tQuery.GoToFirstRecordOnExecute := true;
  tQuery.Transaction := tTransaction;
  tQuery.Name := nameObj;
end;

procedure SetTransactionParam(var tTransaction: TpFIBTransaction; var tDatabase: TpFIBDatabase; nameObj: string);
begin
  with tTransaction do begin
    Active := false;
    DefaultDatabase := tDatabase;
    Name := nameObj;
    Timeout := 0;
  end;
end;


end.
