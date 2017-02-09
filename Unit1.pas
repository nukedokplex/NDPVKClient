unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, sPageControl, sSkinManager,
  Vcl.Menus, Vcl.StdCtrls, sLabel, Vcl.ExtCtrls, acImage, Unit2, System.IniFiles, Unit3, System.JSON,
  sButton, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, sListView, Vcl.OleCtrls, SHDocVw, cefvcl;
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
    lbl5: TsLabel;
    chrm1: TChromium;
    btn2: TsButton;
    btn3: TsButton;
    btn4: TsButton;
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
  jsob_partner:TJSONObject;
  x:string;
  i:Integer;
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
  uid:=jsap.JsonValue.Value;
  fini.WriteString('account', 'user_id', jsap.JsonValue.Value);
  jsap:=jsob.Get('status');
  Form1.lbl3.Caption:=jsap.JsonValue.Value;
  jsap:=jsob.Get('sex');
  if jsap.JsonValue.Value='0' then Form1.lv1.Items[0].SubItems.Add('Не указан');
  if jsap.JsonValue.Value='1' then Form1.lv1.Items[0].SubItems.Add('Женский');
  if jsap.JsonValue.Value='2' then Form1.lv1.Items[0].SubItems.Add('Мужкской');  jsap:=jsob.Get('relation');
  if jsap.JsonValue.Value='0' then Form1.lv1.Items[1].SubItems.Add('Не указано');
  if jsap.JsonValue.Value='1' then Form1.lv1.Items[1].SubItems.Add('Не в браке');
  if jsap.JsonValue.Value='2' then Form1.lv1.Items[1].SubItems.Add('Встречается');
  if jsap.JsonValue.Value='3' then Form1.lv1.Items[1].SubItems.Add('Помолвлен(а)');
  if jsap.JsonValue.Value='4' then Form1.lv1.Items[1].SubItems.Add('Женат/Замужем');
  if jsap.JsonValue.Value='5' then Form1.lv1.Items[1].SubItems.Add('Все сложно');
  if jsap.JsonValue.Value='6' then Form1.lv1.Items[1].SubItems.Add('В активном поиске');
  if jsap.JsonValue.Value='7' then Form1.lv1.Items[1].SubItems.Add('Влюблен(а)');
  if jsap.JsonValue.Value='8' then Form1.lv1.Items[1].SubItems.Add('В гр. браке'); jsap:=jsob.Get('relation_partner');
  jsob_partner:=jsap.JsonValue as TJSONObject;
  jsap:=jsob_partner.Get('first_name');
  Form1.lv1.Items[2].SubItems.Add(jsap.JsonValue.Value);
  jsap:=jsob_partner.Get('last_name');
  Form1.lv1.Items[2].SubItems[0]:=Form1.lv1.Items[2].SubItems[0]+' '+jsap.JsonValue.Value;
  jsap:=jsob.Get('bdate');
  Form1.lv1.Items[3].SubItems.Add(jsap.JsonValue.Value);
  jsap:=jsob.Get('home_town');
  Form1.lv1.Items[4].SubItems.Add(jsap.JsonValue.Value);
  jsap:=jsob.Get('country');
  jsob_partner:=jsap.JsonValue as TJSONObject;
  jsap:=jsob_partner.Get('title');
  form1.lv1.Items[5].SubItems.Add(jsap.JsonValue.value);
  jsap:=jsob.Get('city');
  jsob_partner:=jsap.JsonValue as TJSONObject;
  jsap:=jsob_partner.Get('title');
  form1.lv1.Items[6].SubItems.Add(jsap.JsonValue.value);
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
