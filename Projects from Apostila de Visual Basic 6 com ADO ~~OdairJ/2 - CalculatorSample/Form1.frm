VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3675
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4140
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
   ScaleHeight     =   3675
   ScaleWidth      =   4140
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdmultiplicar 
      Caption         =   "*"
      BeginProperty Font 
         Name            =   "Tempus Sans ITC"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   1
      Left            =   3180
      TabIndex        =   1
      Top             =   2340
      Width           =   800
   End
   Begin VB.CommandButton cmdDividir 
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "Tempus Sans ITC"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   1
      Left            =   2220
      TabIndex        =   0
      Top             =   2340
      Width           =   800
   End
   Begin VB.CommandButton cmdSomar 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Tempus Sans ITC"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   0
      Left            =   330
      TabIndex        =   4
      Top             =   2340
      Width           =   800
   End
   Begin VB.CommandButton cmdSubtrair 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Tempus Sans ITC"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   0
      Left            =   1290
      TabIndex        =   3
      Top             =   2340
      Width           =   800
   End
   Begin VB.CommandButton cmdHelp 
      Caption         =   "&Help"
      Height          =   360
      Index           =   0
      Left            =   -1530
      TabIndex        =   2
      Top             =   2370
      Width           =   990
   End
   Begin VB.TextBox txtNum2 
      Height          =   330
      Index           =   1
      Left            =   1920
      TabIndex        =   6
      Top             =   1410
      Width           =   1605
   End
   Begin VB.TextBox txtNum1 
      Height          =   330
      Index           =   0
      Left            =   1860
      TabIndex        =   8
      Top             =   630
      Width           =   1575
   End
   Begin VB.Label lblResultado 
      AutoSize        =   -1  'True
      Caption         =   "Resultado: "
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
      Index           =   2
      Left            =   1320
      TabIndex        =   9
      Top             =   3060
      Width           =   1005
   End
   Begin VB.Label lblLabel1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Segundo numero:"
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
      Left            =   240
      TabIndex        =   5
      Top             =   1470
      Width           =   1575
   End
   Begin VB.Label lblLabel1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Primeiro numero:"
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
      Left            =   240
      TabIndex        =   7
      Top             =   660
      Width           =   1545
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Vvalor1 As Integer
Dim Vvalor2 As Integer

Private Sub cmdDividir_Click(Index As Integer)
    Vvalor1 = Val(txtNum1(0).Text)
    Vvalor2 = Val(txtNum2(1).Text)
    If Vvalor2 = 0 Or Vvalor1 = 0 Then MsgBox ("Valor informado incorreto, Impossivel dividir por 0(zero).")
    lblResultado(2).Caption = Vvalor1 / Vvalor2
End Sub

Private Sub cmdmultiplicar_Click(Index As Integer)
    Vvalor1 = Val(txtNum1(0).Text)
    Vvalor2 = Val(txtNum2(1).Text)
    
    lblResultado(2).Caption = Vvalor1 * Vvalor2
End Sub

Private Sub cmdSomar_Click(Index As Integer)
    Vvalor1 = Val(txtNum1(0).Text)
    Vvalor2 = Val(txtNum2(1).Text)
    
    lblResultado(2).Caption = Vvalor1 + Vvalor2
End Sub

Private Sub cmdSubtrair_Click(Index As Integer)
    Vvalor1 = Val(txtNum1(0).Text)
    Vvalor2 = Val(txtNum2(1).Text)
    
    lblResultado(2).Caption = Vvalor1 - Vvalor2
End Sub


