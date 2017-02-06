unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sEdit, Vcl.OleCtrls,
  SHDocVw;

type
  TForm2 = class(TForm)
    wb1: TWebBrowser;
    edt1: TsEdit;
    procedure wb1BeforeNavigate2(ASender: TObject; const pDisp: IDispatch;
      const URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
      var Cancel: WordBool);
    procedure wb1NavigateComplete2(ASender: TObject; const pDisp: IDispatch;
      const URL: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
  Unit1;
{$R *.dfm}

procedure TForm2.wb1BeforeNavigate2(ASender: TObject; const pDisp: IDispatch;
  const URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
  var Cancel: WordBool);
begin
edt1.Text:=URL;
end;

procedure TForm2.wb1NavigateComplete2(ASender: TObject; const pDisp: IDispatch;
  const URL: OleVariant);
  var
    a,b:Integer;
begin
edt1.Text:=URL;
if Copy(url, 1, 45) = 'https://oauth.vk.com/blank.html#access_token=' then begin
  token:=Copy(url, 46, 85) ;
   a:=Pos('&user_id=',url)+8;
   b:=Pos('&email=',url);
   ShowMessage(a.ToString(a));
  uid:=Copy(url, a, b-a);
  ShowMessage(uid);
  a:=Pos('&email=',url)+7;
  email:=Copy(url, a, length(url)-a+1);
  fini.WriteString('account', 'token', token);
  fini.WriteString('account', 'user_id', uid);
  Form2.Hide;
  wb1.Navigate('about:blank');
  onlogin;
end;


end;                                                                                                                        //                           a        b
//https://oauth.vk.com/blank.html#access_token=5393d790839be2412c4d951f8b8600587a1b2208f3eb7307184f51ca60508fec214ddae337092e6a82012&expires_in=0&user_id=244181731&email=admin@nuke-dev.pw
end.
//uid - 144
