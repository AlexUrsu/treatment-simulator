unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TForm3 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn5: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

{
�� ����� ������� ��������
�� ��� �� �������� �������

�� ��� ��������� � �� ������������

�� ��� �������� �������.
�� ��������� ������������� �������� ���������.
}


procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Form1.Show;
Form1.Button4.Click;
Form1.Close;
Form1.ShowModal;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
close;
end;

end.
