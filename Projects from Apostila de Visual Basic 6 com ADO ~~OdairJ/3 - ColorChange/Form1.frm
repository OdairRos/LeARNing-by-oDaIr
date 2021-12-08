VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4815
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6465
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
   ScaleHeight     =   4815
   ScaleWidth      =   6465
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdFundoAnt 
      Caption         =   "Anterior"
      Height          =   450
      Index           =   1
      Left            =   4560
      TabIndex        =   0
      Top             =   3150
      Width           =   1350
   End
   Begin VB.CommandButton cmdTextoProx 
      Caption         =   "Próxima"
      Height          =   450
      Index           =   0
      Left            =   4560
      TabIndex        =   3
      Top             =   2250
      Width           =   1350
   End
   Begin VB.CommandButton cmdTextoAnt 
      Caption         =   "Anterior"
      Height          =   450
      Index           =   0
      Left            =   4560
      TabIndex        =   2
      Top             =   1650
      Width           =   1350
   End
   Begin VB.CommandButton cmdFundoProx 
      Caption         =   "Próxima"
      Height          =   450
      Index           =   0
      Left            =   4590
      TabIndex        =   1
      Top             =   3810
      Width           =   1350
   End
   Begin VB.Label lblFundo 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "15 - Branco Brilhante"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Index           =   0
      Left            =   570
      TabIndex        =   8
      Top             =   3390
      Width           =   2775
   End
   Begin VB.Label lblTex 
      BackColor       =   &H00FFFFFF&
      Caption         =   "0 - Preto"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Index           =   2
      Left            =   570
      TabIndex        =   7
      Top             =   2100
      Width           =   2775
   End
   Begin VB.Label lblCorDo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Cor do fundo:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   1
      Left            =   510
      TabIndex        =   6
      Top             =   2970
      Width           =   1665
   End
   Begin VB.Label lblCorDo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Cor do texto:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   0
      Left            =   480
      TabIndex        =   5
      Top             =   1650
      Width           =   1665
   End
   Begin VB.Label lblText 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Color Change"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   1470
      TabIndex        =   4
      Top             =   390
      Width           =   3630
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Finalizado apesar de ter muito código desnescessário, tal como a repetição de duas estruturas CASE
Dim vCorTexto As Integer
Dim vCorFundo As Integer

Private Sub cmdFundoAnt_Click(Index As Integer)
    vCorFundo = vCorFundo - 1
    If vCorFundo < 0 Then vCorFundo = 15
    MudaCorTexto (True)
End Sub


Private Sub cmdFundoProx_Click(Index As Integer)
    vCorFundo = vCorFundo + 1
    If vCorFundo > 15 Then vCorFundo = 0
    MudaCorTexto (True)
End Sub

Private Sub cmdTextoAnt_Click(Index As Integer)
    vCorTexto = vCorTexto - 1
    If vCorTexto < 0 Then vCorTexto = 15
    MudaCorTexto (False)
End Sub

Private Sub cmdTextoProx_Click(Index As Integer)
    vCorTexto = vCorTexto + 1
    If vCorTexto > 15 Then vCorTexto = 0
    MudaCorTexto (False)
End Sub

Private Sub Form_Load()
    vCorTexto = 0
    vCorFundo = 15
End Sub

Public Sub MudaCorTexto(bool)
    If bool = False Then
        lblText.ForeColor = QBColor(vCorTexto)
         With lblTex(2)
            Select Case vCorTexto
                Case 0
                    .Caption = "0 - Preto"
                Case 1
                    .Caption = "1 - Azul"
                Case 2
                    .Caption = "2 - Verde"
                Case 3
                    .Caption = "3 - Ciano"
                Case 4
                    .Caption = "4 - Vermelho"
                Case 5
                    .Caption = "5 - Magenta"
                Case 6
                    .Caption = "6 - Amarelo"
                Case 7
                    .Caption = "7 - Branco"
                Case 8
                    .Caption = "8 - Cinza"
                Case 9
                    .Caption = "9 - Azul claro"
                Case 10
                    .Caption = "10 - Verde claro"
                Case 11
                    .Caption = "11 - Ciano claro"
                Case 12
                    .Caption = "12 - Vermelho claro"
                Case 13
                    .Caption = "13 - Magenta claro"
                Case 14
                    .Caption = "14 - Amarelo claro"
                Case 15
                    .Caption = "15 - Branco Brilhante"
            End Select
         End With
    Else
        lblText.BackColor = QBColor(vCorFundo)
         With lblFundo(0)
            Select Case vCorFundo
                Case 0
                    .Caption = "0 - Preto"
                Case 1
                    .Caption = "1 - Azul"
                Case 2
                    .Caption = "2 - Verde"
                Case 3
                    .Caption = "3 - Ciano"
                Case 4
                    .Caption = "4 - Vermelho"
                Case 5
                    .Caption = "5 - Magenta"
                Case 6
                    .Caption = "6 - Amarelo"
                Case 7
                    .Caption = "7 - Branco"
                Case 8
                    .Caption = "8 - Cinza"
                Case 9
                    .Caption = "9 - Azul claro"
                Case 10
                    .Caption = "10 - Verde claro"
                Case 11
                    .Caption = "11 - Ciano claro"
                Case 12
                    .Caption = "12 - Vermelho claro"
                Case 13
                    .Caption = "13 - Magenta claro"
                Case 14
                    .Caption = "14 - Amarelo claro"
                Case 15
                    .Caption = "15 - Branco Brilhante"
            End Select
        End With
    End If
   
End Sub

