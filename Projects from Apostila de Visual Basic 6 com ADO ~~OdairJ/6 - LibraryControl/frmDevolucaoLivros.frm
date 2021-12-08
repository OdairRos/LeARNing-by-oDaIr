VERSION 5.00
Begin VB.Form frmDevolucaoLivros 
   BackColor       =   &H00404040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Devoluções de livros"
   ClientHeight    =   3375
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8670
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
   ScaleHeight     =   3375
   ScaleWidth      =   8670
   Begin VB.CommandButton cmdRetornar 
      Caption         =   "retornar"
      Height          =   870
      Left            =   5220
      Picture         =   "frmDevolucaoLivros.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2400
      Width           =   1020
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "cancelar"
      Height          =   870
      Left            =   3720
      Picture         =   "frmDevolucaoLivros.frx":28EA
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2400
      Width           =   1020
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "ok"
      Height          =   870
      Left            =   2160
      Picture         =   "frmDevolucaoLivros.frx":39B4
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2400
      Width           =   1020
   End
   Begin VB.TextBox txtCodLivro 
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   570
      Width           =   1245
   End
   Begin VB.Label lblCodUsuario 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   4380
      TabIndex        =   5
      Top             =   1380
      Width           =   3975
   End
   Begin VB.Label lblTitulo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   4380
      TabIndex        =   4
      Top             =   600
      Width           =   3975
   End
   Begin VB.Label lblNomeUsuario 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   2520
      TabIndex        =   3
      Top             =   1380
      Width           =   1245
   End
   Begin VB.Label lblLabel1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Usuário:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   1530
      TabIndex        =   1
      Top             =   1410
      Width           =   900
   End
   Begin VB.Label lblCod 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Código do livro:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   750
      TabIndex        =   0
      Top             =   600
      Width           =   1725
   End
End
Attribute VB_Name = "frmDevolucaoLivros"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cnnBiblio As New ADODB.Connection

' Configurando dados iniciais da tela
Private Sub Form_Load()
    Me.Left = (FrmBiblio.ScaleWidth - Me.Width) / 2
    Me.Top = (FrmBiblio.Height - Me.Height) / 2
    
    cnnBiblio.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
    cnnBiblio.CursorLocation = adUseClient
    cnnBiblio.Open

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set cnnBiblio = Nothing
End Sub

' Configurando saida do frame
Private Sub cmdRetornar_Click()
    Unload Me
    Set cnnBiblio = Nothing
End Sub

'Botão para limpar os dados da tela
Private Sub cmdCancelar_Click()
    txtCodLivro.Text = Empty
    lblTitulo.Caption = Empty
    lblCodUsuario.Caption = Empty
    lblNomeUsuario.Caption = Empty
    txtCodLivro.SetFocus
End Sub

Private Sub cmdOk_Click()
    Dim cmd As New ADODB.Command
    Dim vCod As Long
    On Error GoTo erro
    
    vCod = Val(txtCodLivro.Text)
    
    'Vereficando se algum dos dados não foi digitado
    If vCod = 0 Then
        MsgBox "O campo do livro  não foi preenchido", vbExclamation + vbOKOnly + vbSystemModal, "Erro"
        Exit Sub
    End If
    If lblTitulo.Caption = Empty Then
        MsgBox "o campo código do livro não contem um dado valido", vbExclamation + vbOKOnly + vbSystemModal, "Erro"
    End If
    
    Screen.MousePointer = vbHoursglass
    
    ' Executando o comando sql
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "UPDATE Teste.dbo.Livros SET Emprestado = 0," & _
            "CodUsuario = Null, " & _
            "DataEmprestimo = '2021/11/24', " & _
            "DataDevolucao = '2021/11/24'" & _
            "WHERE CodLivro = " & vCod & ";"
        .Execute
    End With
    MsgBox " A devolução do livro " & lblTitulo & " foi efetuada com sucesso.", _
            vbApplicationModal + vbInformation + vbOKOnly, "Devolução OK"
    cmdCancelar_Click
    
Saida:
    Screen.MousePointer = vbDefault
    Set cmd = Nothing
    Exit Sub
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Erro durante a gravação dos dados no registro " & vbCrLf & _
                    "A devolução desse livro não foi completada.", _
                    vbExclamation + vbOKOnly + vbApplicationModal, _
                    "Devolução cancelada"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub


Private Sub txtCodLivro_LostFocus()
    Dim cmd As New ADODB.Command
    Dim rcd As New ADODB.Recordset
    Dim vCod As Long
    On Error GoTo erro
    
    vCod = Val(txtCodLivro.Text)
    If vCod = 0 Then Exit Sub
    Screen.MousePointer = vbHoursglass
    
    'Executando codigo SQL
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "SELECT Livros.*, Usuarios.NomeUsuario FROM Livros LEFT JOIN Usuarios ON Livros.CodUsuario = Usuarios.CodUsuario " & _
                    "WHERE Livros.CodLivro = " & vCod & ";"
        Set rcd = .Execute
    End With
    
    ' Vereficando se o livro ja esta emprestado
    With rcd
        If .EOF And .BOF Then
            lblTitulo.Caption = Empty
            lblCodUsuario.Caption = Empty
            lblNomeUsuario.Caption = Empty
        Else
            lblTitulo.Caption = !Titulo
            lblCodUsuario.Caption = !CodUsuario
            lblNomeUsuario.Caption = !NomeUsuario
            
            If Not !Emprestado Then
                MsgBox "Esse livro não esta emprestado, verefique", vbExclamation + vbOKOnly + vbSystemModal, "Erro"
                txtCodLivro.SetFocus
            End If
        End If
    End With

Saida:
    Set rcd = Nothing
    Set cmd = Nothing
    Screen.MousePointer = vbDefault
    Exit Sub
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Erro na recuperação do registro solicitado", vbExclamation + vbOKOnly + vbApplicationModal, "Aviso"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub
