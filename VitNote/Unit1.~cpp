//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
AnsiString filename="";
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Open1Click(TObject *Sender)
{
      if(OpenDialog1 -> Execute())
      {
      try
      {
        tresc -> Lines -> LoadFromFile(OpenDialog1 -> FileName) ;
        filename = OpenDialog1 -> FileName;
      }
      catch(...)
      {
      ShowMessage("Error Opening the file!");
      }
      }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SaveAS1Click(TObject *Sender)
{
       if(SaveDialog1 -> Execute())
      {
      try
      {
        tresc -> Lines -> SaveToFile(SaveDialog1 -> FileName) ;
        filename = SaveDialog1 -> FileName;
      }
      catch(...)
      {
      ShowMessage("Error Saving the file!");
      }
      }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Save1Click(TObject *Sender)
{
       if(filename!="")
       {

       tresc -> Lines -> SaveToFile(filename);

       }else
       {
       Form1 ->  SaveAS1Click(MainMenu1);
       }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::New1Click(TObject *Sender)
{
        if(Application->MessageBox("Do you really want to open a new page?", "Confirm", MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES)
         {
         tresc->Lines->Clear();
         filename="";
         }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::trescKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if(Shift.Contains(ssCtrl))
    {
        if ((Key=='s') || (Key=='S'))
        {
        Form1-> Save1Click(MainMenu1);
        }
        if ((Key=='n') || (Key=='N'))
        {
        Form1-> Open1Click(MainMenu1);
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Quit1Click(TObject *Sender)
{
        if(Application->MessageBox("Have you saved everything before quiting ?","Confirm", MB_YESNO) == IDYES)
        {
        Application -> Terminate();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
       if(Application->MessageBox("Have you saved everything before quiting ?","Confirm", MB_YESNO) == IDNO)
        {
        Action = caNone;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Cut1Click(TObject *Sender)
{
        tresc -> CutToClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Copy1Click(TObject *Sender)
{
        tresc -> CopyToClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Paste1Click(TObject *Sender)
{
        tresc -> PasteFromClipboard();        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Returntoline1Click(TObject *Sender)
{
 if(Returntoline1 -> Checked == true)
 {
        Returntoline1 -> Checked = false;
        tresc -> WordWrap = false;
        tresc -> ScrollBars = ssBoth;


 }else{
       Returntoline1 -> Checked = true;
       tresc -> WordWrap = true;
       tresc -> ScrollBars = ssVertical;


 }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Font1Click(TObject *Sender)
{
        if(FontDialog1 -> Execute())
        {
        //font name
        tresc -> Font -> Name = FontDialog1 -> Font -> Name;

        //font color
        tresc -> Font -> Color = FontDialog1 -> Font -> Color;

        //font size
        tresc -> Font -> Size = FontDialog1 -> Font -> Size;

        //font style
        tresc -> Font -> Style = FontDialog1 -> Font -> Style;


        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Aboutprogram1Click(TObject *Sender)
{
        Form2 -> Visible = true;
                
}
//---------------------------------------------------------------------------

void __fastcall TForm1::AboutAuthor1Click(TObject *Sender)
{
        ShellExecute(NULL, "open", "https://media.tenor.com/FynBi8GUncQAAAAC/les-visiteurs-diablerie.gif", NULL, NULL, SW_SHOWNORMAL);       
}
//---------------------------------------------------------------------------

