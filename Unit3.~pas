unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Menus;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    UpDown1: TUpDown;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  ChekNom, ChekSum,  CenaTov: String;

  usl: integer;
  uslugakod: string;
  a,b:double;

implementation

uses Unit1, Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'INSERT INTO [Чек] ( [Дата чека], [сума чека] )  Values (:dt, 0) ';
DataModule2.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule2.ADOQWork.ExecSQL;

FormShow(Sender);

DataModule2.ADOQWork.close;
DataModule2.ADOQWork.SQL.Text:=' Select * From [Чек] Order by [Чек.id чека] ';
DataModule2.ADOQWork.Open;

DataModule2.ADOQWork.Last;
Cheknom:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
Label1.Caption:='Код №'+ChekNom;

DataModule2.ADOQProdaz.Close;
DataModule2.ADOQProdaz.SQL.Text:='SELECT Чек.[id чека], Продажи.[id продажи], Товары.наименование, Товары.цена, Товары.[кол-во], Покупатель.ФИО, Продажи.Дата_продажи '
+ ' FROM Покупатель INNER JOIN (Чек INNER JOIN (Товары INNER JOIN Продажи ON Товары.[id товара] = Продажи.[id товара]) ON Чек.[id чека] = Продажи.[id чека]) ON Покупатель.[id покупателя] = Продажи.[id покупателя] '
+ ' WHERE (((Продажи.[id чека])='+ChekNom+'))';
DataModule2.ADOQProdaz.open;

ChekSum:= '0';
label3.caption:= 'Сумма по чеку (грн): ' + ChekSum;

Panel2.Enabled:= true;

end;

procedure TForm3.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=Now;

DataModule2.ADOQCheck.close;
DataModule2.ADOQCheck.SQL.text:=' select * from [Чек] order by [id чека]';
DataModule2.ADOQCheck.Open;

DBLookupComboBox1.KeyValue:= 1;
DBLookupComboBox2.KeyValue:= 1;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'INSERT INTO Продажи ( [Дата_продажи], [id товара], [id покупателя], [кол-во], [стоимость], [id чека] ) '
 + ' Values (:dt, '+inttostr(DBLookupComboBox1.KeyValue)+', '+inttostr(DBLookupComboBox2.KeyValue)+', '+edit1.text+', '+Cenatov+', '+ChekNom+')';
DataModule2.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule2.ADOQWork.ExecSQL;

DataModule2.ADOQProdaz.Close;
DataModule2.ADOQProdaz.SQL.Text:='SELECT Чек.[id чека], Продажи.[id продажи], Товары.наименование, Товары.цена, Товары.[кол-во], Покупатель.ФИО, Продажи.Дата_продажи '
+ ' FROM Покупатель INNER JOIN (Чек INNER JOIN (Товары INNER JOIN Продажи ON Товары.[id товара] = Продажи.[id товара]) ON Чек.[id чека] = Продажи.[id чека]) ON Покупатель.[id покупателя] = Продажи.[id покупателя] '
+ ' WHERE (((Продажи.[id чека])='+ChekNom+'))';
DataModule2.ADOQProdaz.open;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' Select Sum(Продажи.[стоимость]) AS [Sum-Сума] FROM Продажи GROUP BY Продажи.[id чека] HAVING (((Продажи.[id чека])= '+ChekNom+'))';
DataModule2.ADOQWork.Open;
ChekSum:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
label3.caption:= 'Сумма по чеку (грн): ' + ChekSum;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' UPDATE Чек SET Чек.[сума чека] = '+ChekSum+' WHERE (((Чек.[id чека])='+ChekNom+'))';
DataModule2.ADOQWork.ExecSQL;

formshow(Sender);
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
CenaTov:= IntToStr(DataModule2.DataSourceTovari.DataSet.Fields[2].AsInteger * strtoint(edit1.text));
label8.caption:= 'Цена продажи (грн): ' + CenaTov;
end;

procedure TForm3.DBLookupComboBox1Click(Sender: TObject);
begin
CenaTov:= IntToStr(DataModule2.DataSourceTovari.DataSet.Fields[2].AsInteger * strtoint(edit1.text));

label8.caption:= 'Цена продажи (грн): ' + CenaTov;

Label5.Caption:= 'Цена за 1 шт (грн): ' +DataModule2.DataSourceTovari.DataSet.Fields[2].AsString;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'Delete * from Продажи Where [id продажи] = '+DBGrid2.Fields[1].AsString+'';
DataModule2.ADOQWork.ExecSQL;

DataModule2.ADOQProdaz.Close;
DataModule2.ADOQProdaz.SQL.Text:='SELECT Чек.[id чека], Продажи.[id продажи], Товары.наименование, Товары.цена, Товары.[кол-во], Покупатель.ФИО, Продажи.Дата_продажи '
+ ' FROM Покупатель INNER JOIN (Чек INNER JOIN (Товары INNER JOIN Продажи ON Товары.[id товара] = Продажи.[id товара]) ON Чек.[id чека] = Продажи.[id чека]) ON Покупатель.[id покупателя] = Продажи.[id покупателя] '
+ ' WHERE (((Продажи.[id чека])='+ChekNom+'))';
DataModule2.ADOQProdaz.open;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' Select Sum(Продажи.[стоимость]) AS [Sum-Сума] FROM Продажи GROUP BY Продажи.[id чека] HAVING (((Продажи.[id чека])= '+ChekNom+'))';
DataModule2.ADOQWork.Open;
ChekSum:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
label3.caption:= 'Сумма по чеку (грн): ' + ChekSum;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' UPDATE Чек SET Чек.[сума чека] = '+ChekSum+' WHERE (((Чек.[id чека])='+ChekNom+'))';
DataModule2.ADOQWork.ExecSQL;

formshow(Sender);
end;

procedure TForm3.N1Click(Sender: TObject);
begin
Form1.Show();
end;

procedure TForm3.N3Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
DataModule2.ADOQCheckREP.Close;
DataModule2.ADOQCheckREP.SQL.Text:=' SELECT Продажи.[id продажи], Товары.цена,Продажи.Дата_продажи, Чек.[id чека], Покупатель.ФИО, Продажи.[кол-во], Продажи.стоимость, Продажи.[id чека], Товары.наименование '
+ ' FROM Чек INNER JOIN (Товары INNER JOIN (Покупатель INNER JOIN Продажи ON Покупатель.[id покупателя] = Продажи.[id покупателя]) ON Товары.[id товара] = Продажи.[id товара]) ON Чек.[id чека] = Продажи.[id чека] '
+ ' Where (((Продажи.[id чека])='+Cheknom+'))' ;


DataModule2.ADOQCheckREP.open;

CheckREP.QRLabel1.Caption:='Чек№:' + Cheknom;
CheckREP.QRLabel2.Caption:='Дата:' + DateToStr(DateTimePicker1.Date);
CheckREP.QRLabel3.Caption:='Покупатель:' + DBLookupComboBox2.Text;
CheckREP.QRLabel4.Caption:='Сумма по чеку:' + ChekSum;

CheckREP.QuickRep1.PreviewModal;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
Form5.Show();
end;

end.
