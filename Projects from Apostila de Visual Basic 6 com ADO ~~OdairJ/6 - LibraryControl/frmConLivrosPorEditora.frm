VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frmConLivrosPorEditora 
   BackColor       =   &H00404040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Consulta Livros Por Editora"
   ClientHeight    =   9840
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14640
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9840
   ScaleWidth      =   14640
   StartUpPosition =   3  'Windows Default
   Begin MSDataGridLib.DataGrid grdLivros 
      Bindings        =   "frmConLivrosPorEditora.frx":0000
      Height          =   6105
      Left            =   1110
      TabIndex        =   2
      Top             =   1740
      Width           =   12645
      _ExtentX        =   22304
      _ExtentY        =   10769
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   8
      BeginProperty Column00 
         DataField       =   "C?digo"
         Caption         =   "C?digo"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "titulo"
         Caption         =   "titulo"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column02 
         DataField       =   "autor"
         Caption         =   "autor"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column03 
         DataField       =   "Editora"
         Caption         =   "Editora"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column04 
         DataField       =   "Categoria"
         Caption         =   "Categoria"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column05 
         DataField       =   "Usu?rio"
         Caption         =   "Usu?rio"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column06 
         DataField       =   "Empr?stimo"
         Caption         =   "Empr?stimo"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column07 
         DataField       =   "Devolu??o"
         Caption         =   "Devolu??o"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2070
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
            ColumnWidth     =   915,024
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column03 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column04 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column05 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column06 
            ColumnWidth     =   1739,906
         EndProperty
         BeginProperty Column07 
            ColumnWidth     =   1739,906
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton cmdRetornar 
      Caption         =   "Retornar"
      Height          =   900
      Left            =   6990
      Picture         =   "frmConLivrosPorEditora.frx":0018
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   8340
      Width           =   1170
   End
   Begin MSAdodcLib.Adodc DatLivros 
      Height          =   330
      Left            =   960
      Top             =   8190
      Visible         =   0   'False
      Width           =   2595
      _ExtentX        =   4577
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
      OLEDBString     =   "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   $"frmConLivrosPorEditora.frx":10E2
      Caption         =   "DatLivros"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc DatEditoras 
      Height          =   330
      Left            =   870
      Top             =   8760
      Visible         =   0   'False
      Width           =   2625
      _ExtentX        =   4630
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
      OLEDBString     =   "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   $"frmConLivrosPorEditora.frx":12DB
      Caption         =   "DatEditoras"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSDataListLib.DataCombo cboEditora 
      Bindings        =   "frmConLivrosPorEditora.frx":134F
      Height          =   315
      Left            =   4560
      TabIndex        =   0
      Top             =   900
      Width           =   5475
      _ExtentX        =   9657
      _ExtentY        =   556
      _Version        =   393216
      ListField       =   "NomeEditora"
      BoundColumn     =   "NomeEditora"
      Text            =   "cboEditora"
   End
End
Attribute VB_Name = "frmConLivrosPorEditora"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cboEditora_Click(Area As Integer)
       DatLivros.RecordSource = "SELECT  Livros.CodLivro AS C?digo," & " Livros.Titulo AS titulo," & " Livros.Autor AS autor," & _
        " Editoras.NomeEditora AS Editora," & " Categorias.NomeCategoria AS Categoria," & " Usuarios.NomeUsuario AS Usu?rio," & _
        " Livros.DataEmprestimo AS Empr?stimo," & " Livros.DataDevolucao AS Devolu??o " & " FROM Usuarios INNER JOIN" & _
        " Livros ON Usuarios.CodUsuario = Livros.CodUsuario INNER JOIN" & " Categorias ON Livros.CodCategoria = Categorias.CodCategoria INNER JOIN" & _
        " Editoras ON Livros.CodEditora = Editoras.CodEditora WHERE NomeEditora = '" & cboEditora.BoundText & "';"
    DatLivros.Refresh
End Sub

Private Sub cmdRetornar_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    Me.Left = (FrmBiblio.ScaleWidth - Me.Width) / 2
    Me.Top = (FrmBiblio.ScaleHeight - Me.Height) / 2
    DatLivros.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
    DatEditoras.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
End Sub

