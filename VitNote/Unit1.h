//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *MainMenu1;
        TMenuItem *File1;
        TMenuItem *New1;
        TMenuItem *N1;
        TMenuItem *Open1;
        TMenuItem *Save1;
        TMenuItem *SaveAS1;
        TMenuItem *N2;
        TMenuItem *Quit1;
        TMenuItem *Edit1;
        TMenuItem *Cut1;
        TMenuItem *Copy1;
        TMenuItem *Paste1;
        TMenuItem *View1;
        TMenuItem *Returntoline1;
        TMenuItem *Font1;
        TMenuItem *Help1;
        TMenuItem *About1;
        TMenuItem *Aboutprogram1;
        TMenuItem *AboutAuthor1;
        TMemo *tresc;
        TOpenDialog *OpenDialog1;
        TSaveDialog *SaveDialog1;
        TFontDialog *FontDialog1;
        void __fastcall Open1Click(TObject *Sender);
        void __fastcall SaveAS1Click(TObject *Sender);
        void __fastcall Save1Click(TObject *Sender);
        void __fastcall New1Click(TObject *Sender);
        void __fastcall trescKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall Quit1Click(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall Cut1Click(TObject *Sender);
        void __fastcall Copy1Click(TObject *Sender);
        void __fastcall Paste1Click(TObject *Sender);
        void __fastcall Returntoline1Click(TObject *Sender);
        void __fastcall Font1Click(TObject *Sender);
        void __fastcall Aboutprogram1Click(TObject *Sender);
        void __fastcall AboutAuthor1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
