unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Title: TPanel;
    MainPanel: TPanel;
    btnNum1: TButton;
    btnNum2: TButton;
    btnNum3: TButton;
    btnNum4: TButton;
    btnNum5: TButton;
    btnNum6: TButton;
    btnNum7: TButton;
    btnNum8: TButton;
    btnNum9: TButton;
    btnNum10: TButton;
    btnNum11: TButton;
    btnNum12: TButton;
    btnSolution: TButton;
    btnReset: TButton;
    btnExit: TButton;
    Label1: TLabel;
    lblNumOfClicks: TLabel;
    BtnPanel: TPanel;
    procedure btnSolutionClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnNum1Click(Sender: TObject);
    procedure btnNum2Click(Sender: TObject);
    procedure btnNum3Click(Sender: TObject);
    procedure btnNum4Click(Sender: TObject);
    procedure btnNum5Click(Sender: TObject);
    procedure btnNum6Click(Sender: TObject);
    procedure btnNum7Click(Sender: TObject);
    procedure btnNum8Click(Sender: TObject);
    procedure btnNum9Click(Sender: TObject);
    procedure btnNum10Click(Sender: TObject);
    procedure btnNum11Click(Sender: TObject);
    procedure btnNum12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    counter: Integer;
    procedure EmptySpotChecker(btnOne, btnTwo: TButton);
    procedure SolutionChecker(current:string);
    procedure Sorting();
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnNum10Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum10.Caption;
   EmptySpotChecker(btnNum10, btnNum6);
   EmptySpotChecker(btnNum10, btnNum9);
   EmptySpotChecker(btnNum10, btnNum11);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum11Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum11.Caption;
   EmptySpotChecker(btnNum11, btnNum7);
   EmptySpotChecker(btnNum11, btnNum10);
   EmptySpotChecker(btnNum11, btnNum12);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum12Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum12.Caption;
   EmptySpotChecker(btnNum12, btnNum8);
   EmptySpotChecker(btnNum12, btnNum11);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum1Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum1.Caption;
   EmptySpotChecker(btnNum1, btnNum2);
   EmptySpotChecker(btnNum1, btnNum5);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum2Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum2.Caption;
   EmptySpotChecker(btnNum2, btnNum1);
   EmptySpotChecker(btnNum2, btnNum3);
   EmptySpotChecker(btnNum2, btnNum6);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum3Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum3.Caption;
   EmptySpotChecker(btnNum3, btnNum2);
   EmptySpotChecker(btnNum3, btnNum4);
   EmptySpotChecker(btnNum3, btnNum7);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum4Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum4.Caption;
   EmptySpotChecker(btnNum4, btnNum3);
   EmptySpotChecker(btnNum4, btnNum8);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum5Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum5.Caption;
   EmptySpotChecker(btnNum5, btnNum1);
   EmptySpotChecker(btnNum5, btnNum6);
   EmptySpotChecker(btnNum5, btnNum9);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum6Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum6.Caption;
   EmptySpotChecker(btnNum6, btnNum2);
   EmptySpotChecker(btnNum6, btnNum5);
   EmptySpotChecker(btnNum6, btnNum7);
   EmptySpotChecker(btnNum6, btnNum10);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum7Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum7.Caption;
   EmptySpotChecker(btnNum7, btnNum3);
   EmptySpotChecker(btnNum7, btnNum6);
   EmptySpotChecker(btnNum7, btnNum8);
   EmptySpotChecker(btnNum7, btnNum11);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum8Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum8.Caption;
   EmptySpotChecker(btnNum8, btnNum4);
   EmptySpotChecker(btnNum8, btnNum7);
   EmptySpotChecker(btnNum8, btnNum12);
   SolutionChecker(_temp);
end;

procedure TForm3.btnNum9Click(Sender: TObject);
var
 _temp : string;
begin
  _temp := btnNum9.Caption;
   EmptySpotChecker(btnNum9, btnNum5);
   EmptySpotChecker(btnNum9, btnNum10);
   SolutionChecker(_temp);
end;

procedure TForm3.btnResetClick(Sender: TObject);
begin
  Sorting;
end;

procedure TForm3.btnSolutionClick(Sender: TObject);
begin
    btnNum1.Caption := IntToStr(1);
  btnNum2.Caption := IntToStr(2);
  btnNum3.Caption := IntToStr(3);
  btnNum4.Caption := IntToStr(4);
  btnNum5.Caption := IntToStr(5);
  btnNum6.Caption := IntToStr(6);
  btnNum7.Caption := IntToStr(7);
  btnNum8.Caption := IntToStr(8);
  btnNum9.Caption := IntToStr(9);
  btnNum10.Caption := IntToStr(10);
  btnNum11.Caption := IntToStr(11);
  btnNum12.Caption := '';


end;

procedure TForm3.EmptySpotChecker(btnOne, btnTwo: TButton);
begin
   if (btnTwo.Caption = '') then
   begin
     btnTwo.Caption := btnOne.Caption;
     btnOne.Caption := '';
   end

end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Sorting;
  counter := 0;
  lblNumOfClicks.Caption := IntToStr(counter);
end;

procedure TForm3.SolutionChecker(current:string);
begin
  if (btnNum1.Caption = '1') and (btnNum2.Caption = '2') and (btnNum3.Caption = '3') and
     (btnNum4.Caption = '4') and (btnNum5.Caption = '5') and (btnNum6.Caption = '6') and
     (btnNum7.Caption = '7') and (btnNum8.Caption = '8') and (btnNum9.Caption = '9') and
     (btnNum10.Caption = '10') and (btnNum11.Caption = '11')  then
      begin
        showmessage('Well done you are a winner')
      end;
  if current <> '' then
  begin
    counter := counter + 1;
    lblNumOfClicks.Caption := IntToStr(counter);
  end;



end;

procedure TForm3.Sorting;
begin
  btnNum1.Caption := IntToStr(3);
  btnNum2.Caption := IntToStr(7);
  btnNum3.Caption := IntToStr(2);
  btnNum4.Caption := IntToStr(5);
  btnNum5.Caption := IntToStr(9);
  btnNum6.Caption := IntToStr(11);
  btnNum7.Caption := IntToStr(6);
  btnNum8.Caption := IntToStr(1);
  btnNum9.Caption := IntToStr(8);
  btnNum10.Caption := IntToStr(4);
  btnNum11.Caption := IntToStr(10);
  btnNum12.Caption := '';

end;

end.
