unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, DB;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button4: TButton;
    Button5: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Button9: TButton;
    Button10: TButton;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Button11: TButton;
    Button12: TButton;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    DBGrid4: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    Panel6: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit5.Text:='0';
Edit3.Text:='';
Edit4.Text:='0';
DBLookupComboBox1.KeyValue:=1;
Button6.Visible:=true;
Button7.Visible:=false;
Panel2.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit3.Text:=DBGrid1.Fields[1].AsString;
  Edit4.Text:=DBGrid1.Fields[3].AsString;
  Edit5.Text:=DBGrid1.Fields[2].AsString;
DataModule2.ADOTCat.Locate('Название категории',DBGrid1.Fields[4].AsString,[loCaseInsensitive, loPartialKey]);
DBLookupComboBox1.KeyValue:= StrToInt(DataModule2.DataSourceCat.DataSet.Fields[0].AsString);

Button6.Visible:=false;
Button7.Visible:=True;

Panel2.Visible:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'DELETE * FROM Товары Where (Товары.[id товара] = '+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOQWork.ExecSQL;
FormShow(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Товары.[id товара], Товары.наименование, Товары.цена, Товары.[кол-во], Категория.[название категории] '
 + ' FROM Категория INNER JOIN Товары ON Категория.[id категории] = Товары.[id категория] ORDER BY Товары.[id товара]' ;
DataModule2.ADOQTovari.Open;
end;               

procedure TForm1.Button6Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:='INSERT INTO Товары ( [наименование], [цена], [кол-во], [id категория] ) values ("'+Edit3.Text+'", "'+Edit5.Text+'", "'+Edit4.Text+'", '+IntToStr(DBLookupComboBox1.KeyValue)+')';
DataModule2.ADOQWork.ExecSQL;

DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Товары.[id товара], Товары.наименование, Товары.цена, Товары.[кол-во], Категория.[название категории] '
 + ' FROM Категория INNER JOIN Товары ON Категория.[id категории] = Товары.[id категория] ORDER BY Товары.[id товара]' ;
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:='UPDATE Товары SET Товары.наименование = "'+Edit3.Text+'", Товары.цена = "'+Edit5.Text+'", Товары.[кол-во] = "'+Edit4.Text+'" '
+' WHERE (((Товары.[id товара])='+DBGrid1.Fields[0].AsString+'))';
DataModule2.ADOQWork.ExecSQL;

FormShow(Sender);


panel2.Visible:=False;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Edit3.Text:='';
Edit4.Text:='0';
Edit5.Text:='0';
FormShow(Sender);
panel2.Visible:=False;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Товары.[id товара], Товары.наименование, Товары.цена, Товары.[кол-во], Категория.[название категории] '
 + ' FROM Категория INNER JOIN Товары ON Категория.[id категории] = Товары.[id категория] WHERE Товары.[id товара] = '+Edit2.Text+' Order by Товары.[id товара]';
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Товары.[id товара], Товары.наименование, Товары.цена, Товары.[кол-во], Категория.[название категории] '
 + ' FROM Категория INNER JOIN Товары ON Категория.[id категории] = Товары.[id категория] ORDER BY Товары.[id товара]' ;
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Товары.[id товара], Товары.наименование, Товары.цена, Товары.[кол-во], Категория.[название категории] '
 + ' FROM Категория INNER JOIN Товары ON Категория.[id категории] = Товары.[id категория] where Товары.наименование like "%'+Edit1.Text+'%" ORDER BY Товары.[id товара]';
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
DataModule2.ADOTCat.Insert;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
DataModule2.ADOTCat.Delete;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  DataModule2.ADOTPoc.Insert;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  DataModule2.ADOTPoc.Delete;
end;

end.
