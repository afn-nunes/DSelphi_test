object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'formPrincipal'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object btnCalcularTroco: TButton
    Left = 40
    Top = 128
    Width = 75
    Height = 25
    Caption = 'CalcularTroco'
    TabOrder = 0
    OnClick = btnCalcularTrocoClick
  end
  object Edit1: TEdit
    Left = 48
    Top = 72
    Width = 89
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object mmoResultado: TMemo
    Left = 40
    Top = 159
    Width = 521
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 2
  end
end
