unit Unit3;

interface

uses
  System.Classes, IdHTTP, IdSSLOpenSSL;

type
  caller = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
    url:string;
    OnHaltProc:procedure(response:string);
  end;

implementation
var
  http:TIdHTTP;
  handler:TIdSSLIOHandlerSocketOpenSSL;
  response:string;
procedure caller.Execute;
begin
   http:=TIdHTTP.Create;
   handler:=TIdSSLIOHandlerSocketOpenSSL.Create;
   http.IOHandler:=handler;
   response:=http.Get(url);
   OnHaltProc(response);
end;

end.
