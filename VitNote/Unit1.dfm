object Form1: TForm1
  Left = 484
  Top = 132
  Width = 1044
  Height = 541
  Caption = 'Notpad'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object tresc: TMemo
    Left = 0
    Top = 0
    Width = 1028
    Height = 482
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyDown = trescKeyDown
  end
  object MainMenu1: TMainMenu
    Left = 136
    Top = 40
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&New'
        OnClick = New1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Open1: TMenuItem
        Caption = '&Open'
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Save    Crtl+S'
        OnClick = Save1Click
      end
      object SaveAS1: TMenuItem
        Caption = 'Save AS'
        OnClick = SaveAS1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Quit1: TMenuItem
        Caption = '&Quit'
        OnClick = Quit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      object Cut1: TMenuItem
        Caption = 'Cut    Ctrl+X'
        OnClick = Cut1Click
      end
      object Copy1: TMenuItem
        Caption = 'Copy    Ctrl+C'
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = 'Paste    Ctrl+V'
        OnClick = Paste1Click
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Returntoline1: TMenuItem
        Caption = 'Return to line'
        Checked = True
        OnClick = Returntoline1Click
      end
      object Font1: TMenuItem
        Caption = 'Font'
        OnClick = Font1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
        object Aboutprogram1: TMenuItem
          Caption = 'About Program'
          OnClick = Aboutprogram1Click
        end
        object AboutAuthor1: TMenuItem
          Caption = 'About Author'
          OnClick = AboutAuthor1Click
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Text File|*.txt|All Types|*.*'
    Left = 168
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Text File|*.txt|All types|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 200
    Top = 40
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 104
    Top = 40
  end
end
