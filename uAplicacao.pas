unit uAplicacao;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TAplicacao = class( TForm )
    Pnl: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    EdtText: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click( Sender: TObject );
    procedure Button2Click( Sender: TObject );
  private
    { Private declarations }
    // Texto, TxtCrip, TxtDescrip: String;

  public
    { Public declarations }
    function Crypto( Tipo: Boolean; Txt: String ): string;
    function Crypto1( Tipo: Boolean; Txt: String ): string;
  end;

var
  Aplicacao: TAplicacao;

implementation

{$R *.dfm}

{ TAplicacao }

procedure TAplicacao.Button1Click( Sender: TObject );
begin
  Edit2.Text := Crypto1( True, EdtText.Text );
end;

procedure TAplicacao.Button2Click( Sender: TObject );
begin
  if Edit2.Text <> EmptyStr then
    EdtText.Text := Edit2.Text;
  Edit3.Text     := Crypto1( False, EdtText.Text );
end;

function TAplicacao.Crypto( Tipo: Boolean; Txt: String ): string;
var
  I: Integer;
  Key: Word;
  Res: String;
const
  C1 = 33598;
  C2 = 24219;
  Chave = 16854;
begin
  Key   := Chave;
  for I := 1 to Length( Txt ) do
  begin
    Res := Res + Char( Byte( Txt[ I ] ) xor ( Key shr 8 ) );
    if Tipo then
      Key := ( Byte( Res[ I ] ) + Chave ) * C1 + C2
    else
      Key := ( Byte( Txt[ I ] ) + Chave ) * C1 + C2;
  end;
  Result := Res;
end;

function TAplicacao.Crypto1( Tipo: Boolean; Txt: String ): string;
var
  T1, T2: string;
  Tam, I, J: Integer;
begin
  T1 := 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  T2 := '!@#$%&*()+-/=\|0123456789?<>[]ªºαβγπΩÜø£úñÑÇç©Øû×ƒ~^';

  Tam := Length( T1 );
  Tam := Length( T2 );

  for I := 1 to Length( Txt ) do
  begin
    if Tipo then
    begin
      for J := 1 to Length( T1 ) do
      begin
        if Pos( Txt[ I ], T1 ) <> 0 then
          Txt[ I ] := T2[ Pos( Txt[ I ], T1 ) ];
      end;
    end
    else
      for J := 1 to Length( T2 ) do
      begin
        if Pos( Txt[ I ], T2 ) <> 0 then
          Txt[ I ] := T1[ Pos( Txt[ I ], T2 ) ];
      end;
  end;
  Result := Txt;
end;

end.
