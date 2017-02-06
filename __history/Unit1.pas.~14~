unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, sPageControl, sSkinManager,
  Vcl.Menus, Vcl.StdCtrls, sLabel, Vcl.ExtCtrls, acImage, Unit2, System.IniFiles, Unit3, System.JSON,
  sButton, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, sListView;
const
  client_id='5850365';
  v='5.62';
  scope='friends,photos,audio,video,status,messages,wall,docs,groups,notifications,email,offline';
type
  TForm1 = class(TForm)
    sknmngr1: TsSkinManager;
    spgcntrl1: TsPageControl;
    stbsht1: TsTabSheet;
    stbsht2: TsTabSheet;
    stbsht3: TsTabSheet;
    img1: TsImage;
    lbl1: TsLabel;
    lbl2: TsLabel;
    lbl3: TsLabel;
    mm1: TMainMenu;
    F1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    btn1: TsButton;
    lbl4: TsLabel;
    idhtp1: TIdHTTP;
    idslhndlrscktpnsl1: TIdSSLIOHandlerSocketOpenSSL;
    lv1: TsListView;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 procedure onlogin;
var
  Form1: TForm1;
  token,uid,email:string;
  fini:TIniFile;
  profileInfoCaller:caller;
  avatarCaller:caller;

implementation

{$R *.dfm}
function CreateCaller(url:string; priority:TThreadPriority ):caller;
begin
  result:=caller.Create(True);
  Result.url:=url;
  Result.FreeOnTerminate:=True;
  Result.Priority:=priority;
end;
procedure OnGetAvatar(response:string);
var
  jsob:TJSONObject;
  jsap:TJSONPair;
  jsar:TJSONArray;
  stream:TMemoryStream;
begin
Form1.lbl4.Visible:=False;
  jsob:=TJSONObject(TJSONObject.ParseJSONValue(response));
  jsap:=jsob.Get('response');
  jsar:=jsap.JsonValue as TJSONArray;
  jsob:=jsar.Items[0] as TJSONObject;



      jsap:=jsob.Get('photo_200');
      stream:=TMemoryStream.Create;
      Form1.idhtp1.Get(jsap.JsonValue.Value, stream);
      stream.SaveToFile(ExtractFileDir(Application.ExeName)+'/photo_cache/avatar_'+uid+'.jpg');
      stream.Free;
      Form1.img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'/photo_cache/avatar_'+uid+'.jpg');
      


end;
procedure OnGetProfileInfo(response:string);
var
  jsob:TJSONObject;
  jsap:TJSONPair;
  jsar:TJSONArray;
  x:string;
begin
  jsob:=TJSONObject(TJSONObject.ParseJSONValue(response));
  jsap:=jsob.Get('response');
  jsob:=jsap.JsonValue as TJSONObject;
  jsap:=jsob.Get('first_name');
  Form1.lbl1.Caption:=jsap.JsonValue.Value;
  jsap:=jsob.Get('last_name');
  Form1.lbl1.Caption:=Form1.lbl1.Caption+' '+jsap.JsonValue.Value;
  jsap:=jsob.Get('screen_name');
  Form1.lbl2.Caption:=jsap.JsonValue.Value;
  jsap:=jsob.Get('status');
  Form1.lbl3.Caption:=jsap.JsonValue.Value;
  jsap:=jsob.Get('sex');


  avatarCaller:=CreateCaller('https://api.vk.com/method/users.get?access_token='+token+'&user_ids='+uid+'&fields=photo_200,has_photo&v='+v+'&name_case=nom', tpLower);
  avatarCaller.OnHaltProc:=OnGetAvatar;
  avatarCaller.Start
end;
procedure OnLogIn();
begin
 profileInfoCaller:=CreateCaller('https://api.vk.com/method/account.getProfileInfo?access_token='+token+'&v='+v, tpLower) ;
 profileInfoCaller.OnHaltProc:=OnGetProfileInfo;
 profileInfoCaller.Start;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
onlogin;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  fini:=TIniFile.Create(ExtractFileDir(Application.ExeName)+'/account_details.ini');
  token:=fini.ReadString('account', 'token', 'no_token');
  uid:=fini.ReadString('account', 'user_id', 'no_uid');
  if DirectoryExists(ExtractFileDir(Application.ExeName)+'/photo_cache')=false then
  CreateDir(ExtractFileDir(Application.ExeName)+'/photo_cache');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
form2.Visible:=True;
form2.wb1.Navigate('https://oauth.vk.com/authorize?client_id='+client_id+'&display=popup&response_type=token&v='+v);
end;

end.
