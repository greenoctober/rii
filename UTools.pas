unit UTools;

interface
uses
   ComObj, ActiveX, SysUtils, Classes;

function CreateGuid: string;
function isDateOrIsINN(str: string): byte;
function GenerateFileName(str: String; param: String):string;
function extractTagValue(str, aTag: String): string;
implementation

function CreateGuid: string;
var
  ID: TGUID;
begin
  Result := '';
  if CoCreateGuid(ID) = S_OK then begin
    Result := GUIDToString(ID);
    Result := StringReplace(Result,'{','',[]);
    Result := StringReplace(Result,'}','',[]);
  end;
end;

function IsDateOrIsINN(str: string): byte;
var i: int64;
    d: TDateTime;
begin
 str := Trim(str);
 try
   i := StrToInt64(str);
   Result := 1;
 except
  try
   d := StrToDate(str);
   Result := 2
  except
    Result := 3;
  end;
 end;
end;

function extractTagValue(str, aTag: String): string;
var i: byte;
  buff: String;
begin
  buff := '';
  i:= AnsiPos(aTag, str);
  if i > 0 then begin
    i := i + length(aTag);
    while (str[i] <> ',') and (str[i] <> #0) do begin
      buff := buff + str[i];
      inc(i);
    end;
    Result := buff;
  end
  else Result := ''
end;

function GenerateFileName(str: String; param: String):string;
(*Создает строку по шаблону. Обрабатываются следующие шаблоны
  {osp} - код ОСП
  {to}  - код ТО
  {YYYYMMDD} - дата в формате 20141211
  {YYMMDD}   - дата в формате 141211
  {YYYYMMDDhhnnss}
  {YYMMDDhhnnss}
  {AC}  - код агента МВВ
  {ADC} - код подразделения агента
  {AAC} - код соглашения
  {NNNNN} - целое число
  чтобы не подключаться лишний раз, в param передаются значения для замены.
  например
  '{osp}_{to}_{AC}_{ADC}_{AAC}_{NNNNN}','osp:5646,to:56,AC:1234,ADC:3455,AAC:456,NNNNN:00001'

*)
var
  s: string;
  ospStr, toStr, ACStr, ADCStr, AACStr, NNNNNStr: String;
  i: byte;
begin
  ospStr    := extractTagValue(param, 'osp:');
  toStr     := extractTagValue(param, 'to:');
  ACStr     := extractTagValue(param, 'AC:');
  ADCStr    := extractTagValue(param, 'AC:');
  AACStr    := extractTagValue(param, 'AAC:');
  NNNNNStr  := extractTagValue(param, 'NNNNN:');

  s := stringReplace(str, '{YYYYMMDD}', FormatDateTime('YYYYMMDD', Now), [rfReplaceAll]);
  s := stringReplace(s, '{YYMMDDhhnnss}', FormatDateTime('YYMMDDhhnnss', Now), [rfReplaceAll]);
  s := stringReplace(s, '{YYMMDD}', FormatDateTime('YYMMDD', Now), [rfReplaceAll]);
  s := stringReplace(s, '{osp}', ospStr, [rfReplaceAll]);
  s := stringReplace(s, '{to}',  toStr, [rfReplaceAll]);
  s := stringReplace(s, '{AC}',  ACStr, [rfReplaceAll]);
  s := stringReplace(s, '{ADC}', ADCStr, [rfReplaceAll]);
  s := stringReplace(s, '{AAC}', AACStr, [rfReplaceAll]);
  s := stringReplace(s, '{NNNNN}', NNNNNStr, [rfReplaceAll]);

  Result := s;
end;

end.
