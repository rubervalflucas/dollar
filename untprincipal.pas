unit untprincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation;

type
  TfrmPrincipal = class(TForm)
    SpeedButton1: TSpeedButton;
    DateEdit1: TDateEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ImageControl1: TImageControl;
    Label2: TLabel;
    ImageControl2: TImageControl;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

uses FachadaWSSGS1;

procedure TfrmPrincipal.CheckBox1Change(Sender: TObject);
begin
  CheckBox2.IsChecked:= False;

  if CheckBox1.IsChecked = True then
  begin
    ImageControl2.Visible:= False;
    ImageControl1.Visible:= True;
  end;
end;

procedure TfrmPrincipal.CheckBox2Change(Sender: TObject);
begin
  CheckBox1.IsChecked:= False;

  if CheckBox2.IsChecked = True then
  begin
     ImageControl1.Visible:= false;
     ImageControl2.Visible:= True;
  end;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DateEdit1.Date:= Now - 1;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
     ImageControl2.Visible:= False;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
var
  id_cotacao: string;
begin
  if CheckBox1.IsChecked = True then
  begin
    id_cotacao:= '10813';
    CheckBox2.IsChecked:= False;
  end
  else
  if CheckBox2.IsChecked = True then
  begin
    id_cotacao:= '21620';
    CheckBox1.IsChecked:= False;
  end;


  Label2.Text:= GetFachadaWSSGS.getValor(StrToInt(id_cotacao), (DateToStr(DateEdit1.Date))  ).DecimalString;


end;

end.
