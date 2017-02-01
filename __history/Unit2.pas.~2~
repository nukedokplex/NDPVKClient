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
begin
edt1.Text:=URL;
if Copy(url, 1, 45) = 'https://oauth.vk.com/blank.html#access_token=' then begin beep;
  token:=Copy(url, 46, 85) ;

end;


end;
//https://oauth.vk.com/blank.html#access_token=533bacf01e11f55b536a565b57531ad114461ae8736d6506a3&expires_in=86400&user_id=8492&state=123456
end.
