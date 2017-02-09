unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sLabel, sButton, Winapi.ShellAPI;

type
  TForm5 = class(TForm)
    btn1: TsButton;
    btn2: TsButton;
    btn3: TsButton;
    btn4: TsButton;
    btn5: TsButton;
    lbl1: TsLabel;
    lbl2: TsLabel;
    lbl3: TsLabel;
    lbl4: TsLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://vk.com/nuke_dev', nil, nil, SW_SHOW);
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.youtube.com/channel/UC-8bYe6-ruy0rbzmmxA_TtA', nil, nil, SW_SHOW);
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://steamcommunity.com/id/nuke_dev', nil, nil, SW_SHOW);
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.twitch.tv/nukdokplex', nil, nil, SW_SHOW);
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://github.com/nukedokplex', nil, nil, SW_SHOW);
end;

end.
