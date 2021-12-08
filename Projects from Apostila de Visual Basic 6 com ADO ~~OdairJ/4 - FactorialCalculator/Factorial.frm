VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "factorial"
   ClientHeight    =   2490
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4710
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
   ScaleHeight     =   2490
   ScaleWidth      =   4710
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdFactorial 
      Caption         =   "Calcular"
      Height          =   380
      Left            =   3240
      TabIndex        =   1
      Top             =   780
      Width           =   990
   End
   Begin VB.TextBox txtNum 
      Height          =   330
      Index           =   0
      Left            =   1890
      TabIndex        =   2
      Top             =   780
      Width           =   1000
   End
   Begin VB.Label lblResultado 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   2
      Left            =   705
      TabIndex        =   4
      Top             =   1800
      Width           =   1980
   End
   Begin VB.Label lblLabel1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "O fatoriual deste número é:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   660
      TabIndex        =   0
      Top             =   1500
      Width           =   2445
   End
   Begin VB.Label lblLabel1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Digite um número"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   180
      TabIndex        =   3
      Top             =   750
      Width           =   1590
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdFactorial_Click()
    Dim Vnum As Integer
    Dim Rnum As Integer
    Rnum = 1
    Vnum = Val(txtNum(0).Text)
    If Vnum <= 0 Then
        MsgBox ("Valor invalido, considerando valor 1")
        Vnum = 1
    End If
    For i = Vnum To 1 Step -1
        Rnum = Rnum * i
    Next i
    
    lblResultado(2).Caption = Str(Rnum)
End Sub

