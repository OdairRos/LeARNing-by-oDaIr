VERSION 5.00
Begin VB.Form frmEmprestimoLivros 
   BackColor       =   &H00404040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Empréstimos de Livros"
   ClientHeight    =   3870
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8850
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3870
   ScaleWidth      =   8850
   Begin VB.CommandButton cmdRetornar 
      Caption         =   "Retornar"
      Height          =   900
      Left            =   7350
      Picture         =   "frmEmprestimo.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   2760
      Width           =   1050
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancelar"
      Height          =   930
      Left            =   5970
      MaskColor       =   &H00FFFFFF&
      Picture         =   "frmEmprestimo.frx":10CA
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2730
      Width           =   1050
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "Ok"
      Height          =   930
      Left            =   4530
      Picture         =   "frmEmprestimo.frx":39B4
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2700
      Width           =   1110
   End
   Begin VB.TextBox txtDataDevolucao 
      Height          =   350
      Left            =   2460
      MaxLength       =   10
      TabIndex        =   7
      Top             =   2550
      Width           =   1245
   End
   Begin VB.TextBox txtDataEmprestimo 
      Height          =   350
      Left            =   2460
      MaxLength       =   10
      TabIndex        =   6
      Top             =   1900
      Width           =   1245
   End
   Begin VB.TextBox txtCodUsuario 
      Height          =   350
      Left            =   2460
      TabIndex        =   5
      Top             =   1230
      Width           =   1245
   End
   Begin VB.TextBox txtCodLivro 
      Height          =   350
      Left            =   2460
      MaxLength       =   5
      TabIndex        =   4
      Top             =   600
      Width           =   1245
   End
   Begin VB.Label lblNomeUsuario 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Index           =   0
      Left            =   6210
      TabIndex        =   12
      Top             =   1710
      Width           =   255
   End
   Begin VB.Label lblTitulo 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   " "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   6255
      TabIndex        =   11
      Top             =   660
      Width           =   165
   End
   Begin VB.Label lblDataDe 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Data de devolução:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   540
      TabIndex        =   3
      Top             =   2550
      Width           =   1650
   End
   Begin VB.Label lblDataDo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Data do Emprestimo:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   540
      TabIndex        =   2
      Top             =   1950
      Width           =   1815
   End
   Begin VB.Label lblNome 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Código Do Usuario:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   1
      Left            =   540
      TabIndex        =   1
      Top             =   1290
      Width           =   1650
   End
   Begin VB.Label lblCódigoDo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Código do Livro:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   0
      Left            =   540
      TabIndex        =   0
      Top             =   645
      Width           =   1395
   End
End
Attribute VB_Name = "frmEmprestimoLivros"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Variaveis globais
Dim cnnBiblio As New ADODB.Connection

Private Sub Form_Load()
' Configura dados iniciais do form
    Me.Left = (FrmBiblio.ScaleWidth - Me.Width) / 2
    Me.Top = (FrmBiblio.Height - Me.Height) / 2
    txtDataEmprestimo.Text = Format(Date, "Short Date")
    txtDataDevolucao.Text = Format((Date + 15), "Short Date")
    
    'Conecta ao banco de dados
    cnnBiblio.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
    cnnBiblio.CursorLocation = adUseClient
    cnnBiblio.Open
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set cnnBiblio = Nothing
End Sub

'Para fechar a tela
Private Sub cmdRetornar_Click()
    Set cnnBiblio = Nothing
    Unload Me
End Sub

Private Sub cmdOk_Click()
    Dim cmd As New ADODB.Command
    Dim vCodLivro, vCodUsuario As Long
    Dim vDataEmrpestimo, vDataDevolucao As Date
    Dim vConfMsg As Integer
    Dim vErro As Boolean
    'On Error GoTo erro
    
    vCodLivro = Val(txtCodLivro.Text)
    vCodUsuario = Val(txtCodUsuario.Text)
    vDataEmprestimo = Format(CDate(txtDataEmprestimo.Text), "yyyy/MM/dd")
    vDataDevolucao = Format(CDate(txtDataDevolucao.Text), "yyyy/MM/dd")
    vConfMsg = vbExclamation + vbOKOnly + vbSystemModal
    vErro = False
    
    ' Vereficando se algum dado não foi digitado
    If vCodLivro = 0 Then
        MsgBox "O campo código do livro não foi preenchido", vConfMsg
        vErro = True
    End If
    If lblTitulo.Caption = Empty Then
        MsgBox "O campo código do livro não contem um dado valido", vConfMsg, "Erro"
        vErro = True
    End If
    If vCodUsuario = 0 Then
        MsgBox " O codigo do usuario não foi digitado", vConfMsg, "Erro"
        vErro = True
    End If
    If vDataEmprestimo >= vDataDevolucao Then
        MsgBox "A data de devolucao informada é menor ou igual a data de emprestimo, verefique", vConfMsg, "Erro"
        vErro = True
    End If
    
    If vErro Then Exit Sub
    Screen.MousePointer = vbHoursglass
    
    'Executando comando sql para atualizar os dados da tabela
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "UPDATE Teste.dbo.Livros SET CodUsuario = " & vCodUsuario & ", Emprestado = 1, DataEmprestimo = '" & vDataEmprestimo & _
                "', DataDevolucao = '" & vDataDevolucao & "' WHERE CodLivro = " & vCodLivro & ";"
        '
        'UPDATE Teste.dbo.Livros SET
        'CodUsuario = 2,
        'Emprestado = 1,
        'DataEmprestimo = '2021/11/24',
        'DataDevolucao = '2021/12/14'
        'WHERE CodLivro = 1;
        '
        .Execute
    End With
    
    MsgBox "Este livro foi emprestado a " & lblNomeUsuario(0).Caption & " com sucesso", vbApplicationModal + vbInformation + vbOKOnly, "Empréstimo OK"
    cmdCancelar_Click
    
Saida:
    Screen.MousePointer = vbDefault
    Set cmd = Nothing
    Exit Sub
erro:
    With Err
        If .Number <> 0 Then
            MsgBox " Erro durante a gravação dos dados no registro" & vbCrLf & "A devolução desse livro não foi completada", vbExclamation + vbOKOnly + vbApplicationModal, "Empréstimo cancelado"
            .Number = 0
            GoTo Saida
            
        End If
    End With
End Sub

' Para resetar os dados da tela
Private Sub cmdCancelar_Click()
    txtCodLivro.Text = Empty
    lblTitulo.Caption = Empty
    txtCodUsuario.Text = Empty
    lblNomeUsuario(0).Caption = Empty
    txtDataEmprestimo.Text = Format(Date, "Short Date")
    txtDataDevolucao.Text = Format((Date + 15), "Short Date")
    txtCodLivro.SetFocus
End Sub


Private Sub txtCodLivro_LostFocus()
    Dim cmd As New ADODB.Command
    Dim rcd As New ADODB.Recordset
    Dim vCod As Long
    'On Error GoTo erro
    
    vCod = Val(txtCodLivro.Text)
    If vCod = 0 Then Exit Sub
    Screen.MousePointer = vbHoursglass
    
    ' Executa comando sql
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "SELECT * FROM Teste.dbo.Livros WHERE CodLivro = " & vCod & ";"
        Set rcd = .Execute
    End With
    
    ' Verefica se o livro ja esta emprestado
    With rcd
        If .EOF And .BOF Then
            lblTitulo.Caption = Empty
        Else
            lblTitulo.Caption = !Titulo
            If !Emprestado Then
                MsgBox "Este livro ja esta emprestado, verefique.", vbExclamation + vbOKOnly, "Erro"
                txtCodLivro.SetFocus
            End If
        End If
    End With
Saida:
    Set rcd = Nothing
    Set cmd = Nothing
    Screen.MousePointer = vbDefault
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Houve um erro na recuperação do registro solicitado.", vbExclamation + vbOKOnly + vbApplicationModal, "Aviso"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

Private Sub txtCodUsuario_LostFocus()
    Dim cmd As New ADODB.Command
    Dim rcd As New ADODB.Recordset
    Dim vCod As Long
    On Error GoTo erro
    
    vCod = Val(txtCodUsuario.Text)
    If vCod = 0 Then Exit Sub
    
    ' Executa o comando sql
    
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "SELECT NomeUsuario FROM Teste.dbo.Usuarios WHERE CodUsuario = " & vCod & ";"
        Set rcd = .Execute
    End With
    
    ' Verefica se é um usuario valido(existente)
    With rcd
        If .EOF And .BOF Then
            MsgBox "Codigo usuario invalido, verefique", vbExclamation + vbOKOnly + vbSystemModal, "Erro"
            lblNomeUsuario(0).Caption = Empty
            txtCodUsuario.SetFocus
        Else
            lblNomeUsuario(0).Caption = !NomeUsuario
        End If
    End With

Saida:
    Set rcd = Nothing
    Set cmd = Nothing
    Exit Sub
    
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Hovue um erro na recuperação do usuario solicitado", vbExclamation + vbOKOnly + vbApplicationModal, "Aviso"
            .Number = 0
            GoTo Saida
        End If
    
    End With
End Sub

' Para formatar as datas de emprestimo
Private Sub txtDataEmprestimo_LostFocus()
    Dim vDataDevolucao As Date
    With txtDataEmprestimo
        If .Text <> Empty Then
            If Not IsDate(.Text) Then
             .Text = Date
            Else
               .Text = Format(.Text, "Short Date")
            End If
            vDataDevolucao = CDate(.Text) + 15
            txtDataDevolucao.Text = Format(vDataDevolucao, "Short Date")
        End If
    End With
End Sub

' Para formatar as datas de Devolucao
Private Sub txtDataDevolucao_LostFocus()
    With txtDataDevolucao
        If .Text <> Empty Then
            If Not IsDate(.Text) Then
                .Text = Date
            Else
                .Text = Format(vDataDevolucao, "Short Date")
            End If
        End If
    End With
End Sub



