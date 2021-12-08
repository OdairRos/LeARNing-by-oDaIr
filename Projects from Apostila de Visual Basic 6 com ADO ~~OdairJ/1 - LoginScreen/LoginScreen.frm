VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Login screen"
   ClientHeight    =   5640
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5655
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
   ScaleHeight     =   5640
   ScaleWidth      =   5655
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdENTRAR 
      Caption         =   "ENTRAR"
      Height          =   360
      Left            =   2430
      TabIndex        =   4
      Top             =   3930
      Width           =   990
   End
   Begin VB.TextBox txtPass 
      Height          =   525
      Left            =   2040
      TabIndex        =   1
      Top             =   2820
      Width           =   2775
   End
   Begin VB.TextBox txtUser 
      Height          =   525
      Left            =   2040
      TabIndex        =   0
      Top             =   1770
      Width           =   2775
   End
   Begin VB.Label lblUSER 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "USER:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1200
      TabIndex        =   3
      Top             =   1950
      Width           =   675
   End
   Begin VB.Label lblPASS 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "PASS:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1200
      TabIndex        =   2
      Top             =   2970
      Width           =   660
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public conn As New ADODB.Connection

Private Sub cmdENTRAR_Click()
    Dim cmd As New ADODB.Command
    cmd.ActiveConnection = conn
    cmd.CommandType = adCmdText
    cmd.CommandText = "SELECT Pass FROM Teste.dbo.Users WHERE IdUsers = ?"
    cmd.Parameters.Append cmd.CreateParameter(, adVarChar, adParamInput, 20, txtUser.Text)
    
    Set Record = cmd.Execute
    
    If Record.RecordCount = 0 Then
        MsgBox "User not found"
    Else
        If Record(0) = txtPass.Text Then
            MsgBox "Sucess"
        Else
            MsgBox "Password incorrect"
        End If
    End If
End Sub

Private Sub Form_Load()
    'conn.ConnectionString = "DRIVER={MySQL ODBC 8.0 Unicode Driver};SERVER=localhost;DATABASE=sampledb;UID=root;PWD=1234;"
    conn.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
    conn.CursorLocation = adUseClient
    conn.Open
End Sub

