unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, sPageControl, sSkinManager,
  Vcl.Menus, Vcl.StdCtrls, sLabel, Vcl.ExtCtrls, acImage, Unit2;
const
  client_id='5850365';
  v='5.60';
  scope='friends,photos,audio,video,status,messages,wall,docs,groups,notifications,email';
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

var
  Form1: TForm1;
  token,uid:string;

implementation

{$R *.dfm}

procedure TForm1.N3Click(Sender: TObject);
begin
Application.CreateForm(TForm2,form2);
form2.Visible:=True;
  form2.wb1.Navigate('https://oauth.vk.com/authorize?client_id='+client_id+'&scope='+scope+'&v='+v+'&response_type=token&display=popup');
end;

end.
