unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, sPageControl, sSkinManager,
  Vcl.Menus, Vcl.StdCtrls, sLabel, Vcl.ExtCtrls, acImage, Unit2, System.IniFiles, Unit3, System.JSON;
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

implementation

{$R *.dfm}
function CreateCaller(url:string; priority:TThreadPriority ):caller;
begin
  result:=caller.Create(True);
  Result.url:=url;
  Result.FreeOnTerminate:=True;
  Result.Priority:=priority;
end;
procedure OnGetProfileInfo(response:string);
var
  jsob:TJSONObject;
  jsap:TJSONPair;
  jsar:TJSONArray;
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
end;
procedure OnLogIn();
begin
 profileInfoCaller:=CreateCaller('https://api.vk.com/method/account.getProfileInfo?access_token='+token+'&v='+v, tpLower) ;
 profileInfoCaller.OnHaltProc:=OnGetProfileInfo;
 profileInfoCaller.Start;
end;                            //0c3196d6dca40668e5acb320e656d8b010797193c10a4a824b8efe35b1413c350f3a41d9a961c384b43ff

procedure TForm1.N3Click(Sender: TObject);
begin
Application.CreateForm(TForm2,form2);
form2.Visible:=True;
  form2.wb1.Navigate('https://oauth.vk.com/authorize?client_id='+client_id+'&scope='+scope+'&v='+v+'&response_type=token&display=popup');
  fini:=TIniFile.Create(ExtractFileDir(Application.ExeName)+'/account_details.ini');
  token:=fini.ReadString('account', 'token', 'no_token');
  uid:=fini.ReadString('account', 'user_id', 'no_uid');
end;

end.
