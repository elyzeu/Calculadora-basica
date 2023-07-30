object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 384
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Value1: TEdit
    Left = 48
    Top = 56
    Width = 121
    Height = 23
    Color = clMenuHighlight
    TabOrder = 0
  end
  object Value2: TEdit
    Left = 245
    Top = 56
    Width = 121
    Height = 23
    Color = clMenuHighlight
    TabOrder = 1
  end
  object Resultado: TEdit
    Left = 129
    Top = 184
    Width = 156
    Height = 23
    Color = clWhite
    TabOrder = 2
  end
  object Somar: TButton
    Left = 48
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 3
    OnClick = SomarClick
  end
  object Dividir: TButton
    Left = 210
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 4
    OnClick = DividirClick
  end
  object Substrair: TButton
    Left = 129
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Substrair'
    TabOrder = 5
    OnClick = SubstrairClick
  end
  object Multiplicar: TButton
    Left = 291
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 6
    OnClick = MultiplicarClick
  end
end
