VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "FrmCarro"
   ClientHeight    =   3210
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7710
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
   ScaleHeight     =   3210
   ScaleWidth      =   7710
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdFechar 
      Caption         =   "Fechar"
      Height          =   360
      Left            =   4290
      TabIndex        =   11
      Top             =   2500
      Width           =   990
   End
   Begin VB.CommandButton cmdCalcular 
      Caption         =   "Calcular"
      Height          =   360
      Left            =   2500
      TabIndex        =   0
      Top             =   2500
      Width           =   990
   End
   Begin VB.TextBox txtMeses 
      Height          =   330
      Index           =   1
      Left            =   2535
      TabIndex        =   6
      Top             =   1600
      Width           =   2445
   End
   Begin VB.TextBox txtEntrada 
      Height          =   330
      Index           =   0
      Left            =   2500
      TabIndex        =   8
      Top             =   600
      Width           =   2445
   End
   Begin VB.TextBox txtJuros 
      Height          =   330
      Index           =   0
      Left            =   2500
      TabIndex        =   10
      Top             =   1100
      Width           =   2445
   End
   Begin VB.TextBox txtValor 
      Height          =   330
      Index           =   0
      Left            =   2490
      TabIndex        =   4
      Top             =   100
      Width           =   2445
   End
   Begin VB.Label lblPrestMes 
      AutoSize        =   -1  'True
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
      Left            =   5500
      TabIndex        =   13
      Top             =   1500
      Width           =   1980
   End
   Begin VB.Label lblValorFin 
      AutoSize        =   -1  'True
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
      Left            =   5500
      TabIndex        =   12
      Top             =   500
      Width           =   1980
   End
   Begin VB.Label lblLabel2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Prestação Mensal(R$):"
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
      Left            =   5505
      TabIndex        =   2
      Top             =   1095
      Width           =   2085
   End
   Begin VB.Label lblLabel3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Valor financiado(R$):"
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
      Left            =   5500
      TabIndex        =   5
      Top             =   105
      Width           =   1950
   End
   Begin VB.Label lblLabel1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "N* de meses:"
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
      Left            =   60
      TabIndex        =   1
      Top             =   1605
      Width           =   1245
   End
   Begin VB.Label lblLabel2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Entrada(R$):"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   0
      Left            =   60
      TabIndex        =   7
      Top             =   600
      Width           =   1170
   End
   Begin VB.Label lblLabel3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Juros/Mês(%):"
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
      Left            =   60
      TabIndex        =   9
      Top             =   1095
      Width           =   1335
   End
   Begin VB.Label lblLabel1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Valor financiamento (R$): "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   0
      Left            =   60
      TabIndex        =   3
      Top             =   100
      Width           =   2385
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Concluido porém possui um erro de logica quando sai do campo entrada altera o valor financiado
'Declarando variaveis globais
Dim Vvalor As Currency
Dim VEntrada As Currency
Dim VJuros As Single
Dim VMeses As Integer

Private Sub cmdFechar_Click()
    Dim vOk As Integer
        vOk = MsgBox("Tem certeza que deseja encerrar o programa", vbYesNo + vbQuestion, "Saida")
            If vOk = vbYes Then End
End Sub

'Definindo uma tecla de atalho no teclado
Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyReturn Then
        SendKeys "{Tab}"
        KeyAscii = 0
    End If
End Sub
'Dando um valor inical para as variaveis globais
Private Sub Form_Load()
    Vvalor = 0
    VEntrada = 0
    VJuros = 0
    VMeses = 0
End Sub

'Tratamento de erro caso usuario digite algum valor incorreto
Private Sub txtValor_LostFocus(Index As Integer)
    On Error GoTo Valor_Errado
    Vvalor = CCur(txtValor(0).Text)
    Prestacao 'Para atualizar os dados toda vez que um valor ser alterado
Valor_Errado:
    If Err = 13 Then
        MsgBox "Dado invalido na digitação do valor do financiamento", vbExclamation, "Aviso"
        txtValor(0).Text = InputBox("Informe o valor correto do campo financiamento", "Valor do financiamento")
        Resume 0 'Para caso o usuario insista em digitar o valor incorreto ele retorne
    End If
End Sub
Private Sub txtEntrada_LostFocus(Index As Integer)
    On Error GoTo Valor_Errado
    Vvalor = CCur(txtEntrada(0).Text)
    Prestacao
Valor_Errado:
    If Err = 13 Then
        MsgBox "Dado invalido na digitação do campo 'Entrada'", vbExclamation, "Aviso"
        txtEntrada(0).Text = InputBox("Informe o valor correto do campo 'Entrada'")
        Resume 0
    End If
End Sub

Private Sub txtJuros_LostFocus(Index As Integer)
    On Error GoTo Valor_Errado
    VJuros = CSng(txtJuros(0).Text) / 100
    Prestacao
Valor_Errado:
    If Err = 13 Then
        MsgBox "Dado invalido na digitação do campo 'Juros'", vbExclamation, "Aviso"
        txtJuros(0).Text = InputBox("Informe o valor correto do campo 'Juros'")
        Resume 0
    End If
End Sub

Private Sub txtMeses_LostFocus(Index As Integer)
    On Error GoTo Valor_Errado
    VMeses = CInt(txtMeses(1).Text)
    Prestacao
Valor_Errado:
    If Err = 13 Then
        MsgBox "Dado invalido no campo 'Meses'", vbExclamation, "Aviso"
        txtMeses(1).Text = InputBox("Informe o valor correto do campo Meses")
        Resume 0
    End If
End Sub
'Ativando nossa função no botão
Private Sub cmdCalcular_Click()
    Prestacao
End Sub
'Funções
Public Sub Prestacao()
Dim VvalorFinanciado As Currency
Dim vPrestMensal As Currency
    If Vvalor <> 0 And VJuros <> 0 And VMeses <> 0 Then
        If VEntrada >= Vvalor Then
            MsgBox "O valor da entrada deve ser menor que o do financiamento", vbExclamation, "Aviso"
            lblValorFin(2).Caption = Empty
            lblPrestMes(0).Caption = Empty
            txtEntrada(0).SetFocus
            Exit Sub
        End If
        VvalorFinanciado = Vvalor - VEntrada
        vPrestMensal = VvalorFinanciado * VJuros * (1 + VJuros) ^ VMeses / ((1 + VJuros) ^ VMeses - 1) ' Calculo para se obter o preço de cada parcela mensal
        lblPrestMes(0).Caption = Format(vPrestMensal, "###,##0.00")
        lblValorFin(2).Caption = Format(VvalorFinanciado, "###,##0.00")
        cmdCalcular.Enabled = True
        cmdFechar.Enabled = True
    Else
       lblValorFin(2).Caption = Empty
       lblPrestMes(0).Caption = Empty
    End If
End Sub
