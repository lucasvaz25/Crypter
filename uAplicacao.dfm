object Aplicacao: TAplicacao
  Left = 0
  Top = 0
  Caption = 'Crypto'
  ClientHeight = 271
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 271
    Align = alClient
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 32
      Top = 72
      Width = 185
      Height = 145
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 56
        Top = 43
        Width = 71
        Height = 13
        Caption = 'Insira o Texto:'
      end
      object edtText: TEdit
        Left = 16
        Top = 62
        Width = 153
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 8
        Top = 96
        Width = 77
        Height = 25
        Caption = 'Criptografar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 91
        Top = 96
        Width = 86
        Height = 25
        Caption = 'Descriptografar'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object Panel2: TPanel
      Left = 272
      Top = 72
      Width = 185
      Height = 145
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 42
        Top = 40
        Width = 102
        Height = 13
        Caption = 'Texto Criptografado:'
      end
      object Edit2: TEdit
        Left = 24
        Top = 62
        Width = 145
        Height = 21
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 520
      Top = 72
      Width = 185
      Height = 145
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 2
      object Label3: TLabel
        Left = 38
        Top = 40
        Width = 118
        Height = 13
        Caption = 'Texto Descriptografado:'
      end
      object Edit3: TEdit
        Left = 24
        Top = 62
        Width = 145
        Height = 21
        TabOrder = 0
      end
    end
  end
end
