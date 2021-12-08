VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Begin VB.Form frmCadUsuarios 
   BackColor       =   &H00404040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cadastro de usuarios"
   ClientHeight    =   5040
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9720
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
   ScaleHeight     =   5040
   ScaleWidth      =   9720
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   6690
      Top             =   4350
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadUsuarios.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadUsuarios.frx":10DA
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadUsuarios.frx":39D4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadUsuarios.frx":4AAE
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar2 
      Align           =   1  'Align Top
      Height          =   600
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Width           =   9720
      _ExtentX        =   17145
      _ExtentY        =   1058
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      AllowCustomize  =   0   'False
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList2"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   4
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Grava o registro atual"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Limpa os dados digitados"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Object.ToolTipText     =   "Exclui o registro atual"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Retorna ao menu principal"
            ImageIndex      =   4
         EndProperty
      EndProperty
   End
   Begin VB.TextBox txtCEP 
      Height          =   400
      Left            =   2130
      MaxLength       =   9
      TabIndex        =   6
      Top             =   4400
      Width           =   1875
   End
   Begin VB.TextBox txtTelefone 
      Height          =   400
      Left            =   2160
      MaxLength       =   16
      TabIndex        =   5
      Top             =   3800
      Width           =   2385
   End
   Begin VB.TextBox txtEstado 
      Height          =   400
      Left            =   2130
      MaxLength       =   2
      TabIndex        =   4
      Top             =   3200
      Width           =   795
   End
   Begin VB.TextBox txtCidade 
      Height          =   400
      Left            =   2130
      MaxLength       =   25
      TabIndex        =   3
      Top             =   2600
      Width           =   2985
   End
   Begin VB.TextBox txtEndereco 
      Height          =   400
      Left            =   2130
      MaxLength       =   60
      TabIndex        =   2
      Top             =   1980
      Width           =   6045
   End
   Begin VB.TextBox txtNomeUsuario 
      Height          =   400
      Left            =   2130
      MaxLength       =   35
      TabIndex        =   1
      Top             =   1400
      Width           =   3975
   End
   Begin VB.TextBox txtCodUsuario 
      Height          =   400
      Left            =   2160
      MaxLength       =   5
      TabIndex        =   0
      Top             =   800
      Width           =   1845
   End
   Begin VB.Label lblCEP 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "CEP:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   870
      TabIndex        =   14
      Top             =   4400
      Width           =   585
   End
   Begin VB.Label lblTelefone 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Telefone:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   870
      TabIndex        =   13
      Top             =   3800
      Width           =   1035
   End
   Begin VB.Label lblEstado 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Estado:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   870
      TabIndex        =   12
      Top             =   3200
      Width           =   840
   End
   Begin VB.Label lblCidade 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Cidade:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   870
      TabIndex        =   11
      Top             =   2600
      Width           =   855
   End
   Begin VB.Label lblEndereço 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Endereço:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   870
      TabIndex        =   10
      Top             =   2000
      Width           =   1125
   End
   Begin VB.Label lblNome 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nome:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   870
      TabIndex        =   9
      Top             =   1400
      Width           =   735
   End
   Begin VB.Label lblCódigo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Código:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   870
      TabIndex        =   7
      Top             =   800
      Width           =   900
   End
End
Attribute VB_Name = "frmCadUsuarios"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'variaveis globais
Dim vInclusao As Boolean
Dim cnnBilbio As New ADODB.Connection

'Adicionando atalhos aos botões da barra de tarefas
Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyReturn Then
        SendKeys "{Tab}"
        KeyAscii = 0
    End If
End Sub

' Centralizando o form ao centro baseado na escala da janela principal
Private Sub Form_Load()
    Me.Left = (FrmBiblio.ScaleWidth - Me.Width) / 2
    Me.Top = (FrmBiblio.ScaleHeight - Me.Height) / 2
    cnnBiblio.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
    cnnBiblio.CursorLocation = adUseClient
    cnnBiblio.Open
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
 Set cnnBiblio = Nothing
End Sub

'Configurando os botões da barra de ferramentas da tela de cadastros de usuarios
Private Sub Toolbar2_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
            GravarDados
        Case 2
            limparTela
        Case 3
            ExcluirRegistro
        Case 4
            Set cnnBiblio = Nothing
            Unload Me
    End Select
End Sub

'Toda vez que digitar o codigo do usuario ira executar esta parte, que verefica se é um usuario existente em nosso banco de dados
Private Sub txtCodUsuario_LostFocus()
    Dim cmd As New ADODB.Command
        If Val(txtCodUsuario.Text) = 0 Then
            MsgBox "Não foi digitado um codigo valido, verefique", vbExclamation + vbOKOnly + vbApplicationModal, "Erro"
            Exit Sub
        End If
        Screen.MousePointer = vbHourglass
        cmd.ActiveConnection = cnnBiblio
        cmd.CommandType = adCmdText
        cmd.CommandText = "SELECT * FROM Teste.dbo.Usuarios WHERE CodUsuario =" & txtCodUsuario.Text & ";"
        Set Record = cmd.Execute
        With Record
            If .EOF And .BOF Then
                LimparDados
                vInclusao = True
            Else
                txtNomeUsuario.Text = !NomeUsuario
                txtEndereco.Text = !Endereco
                txtCidade.Text = !Cidade
                txtEstado.Text = !Estado
                txtCEP.Text = !CEP
                txtTelefone.Text = Empty & !Telefone
                vInclusao = False
                Toolbar2.Buttons(3).Enabled = True
            End If
        End With
        txtCodUsuario.Enabled = False
Saida:
    Set Record = Nothing
    Set cmd = Nothing
    
    Screen.MousePointer = vbDefault
    Exit Sub

errSelecao:
    With Err
        If .Number <> 0 Then
            MsgBox "Houve um erro na recuperação do registro solicitado.", vbExclamation + vbOKOnly + vbApplicationModal, "Aviso"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

'Função que limpa todos os campos do forumulario
Private Sub LimparDados()
    txtNomeUsuario.Text = Empty
    txtEndereco.Text = Empty
    txtCidade.Text = Empty
    txtEstado.Text = Empty
    txtCEP.Text = Empty
    txtTelefone.Text = Empty
End Sub

'Função para salvar todos os dados em nosso banco de dados
Private Sub GravarDados()
Dim cmd As New ADODB.Command
Dim vConfMsg As Integer
Dim vErro As Boolean
    vConfMsg = vbExclamation + vbOKOnly + vbSystemModal
    vErro = False
    'Verficação se algum dos campos não foi digitado
    If txtNomeUsuario.Text = Empty Then
        MsgBox "O campo Nome não  foi preenchido.", vConfMsg, "Erro"
        vErro = True
    End If
    If txtEndereco.Text = Empty Then
        MsgBox "O campo Endereço não foi preenchido", vConfMsg, "Erro"
        vErro = True
    End If
    If txtCidade.Text = Empty Then
        MsgBox "O campo Cidade não foi preenchido", vConfMsg
        vErro = True
    End If
    If txtEstado.Text = Empty Then
        MsgBox "O campo Estado não foi preenchido", vConfMsg
        vErro = True
    End If
    If txtCEP.Text = Empty Then
        MsgBox "O campo CEP não foi preenchido", vConfMsg
        vErro = True
    End If
    
    If vErro Then Exit Sub
    
    Screen.MousePointer = vbHourglass
    cmd.ActiveConnection = cnnBiblio
    cmd.CommandType = adCmdText
    If vInclusao Then
        With cmd
            'Cogigo SQL que adiciona os dados de cada campo  na tabela Usuarios
            .CommandText = "INSERT INTO Teste.dbo.Usuarios (CodUsuario, NomeUsuario, Endereco, Cidade, " & "Estado, CEP, Telefone) VALUES ('" & _
                txtCodUsuario.Text & "','" & _
                txtNomeUsuario.Text & "','" & _
                txtEndereco.Text & "','" & _
                txtCidade.Text & "','" & _
                txtEstado.Text & "','" & _
                txtCEP.Text & "','" & _
                txtTelefone.Text & "');"
            .Execute
            'VALUES ('"Odair,')
        End With
        
    Else
        With cmd
        'codigo Sql para atualizar os dados de um registro na tabela Usuarios
            .CommandText = "UPDATE Teste.dbo.Usuarios SET " & _
                "NomeUsuario = '" & txtNomeUsuario.Text & "'," & _
                "Endereco = '" & txtEndereco.Text & "'," & _
                "Cidade = '" & txtCidade.Text & "'," & _
                "Estado = '" & txtEstado.Text & "'," & _
                "CEP = '" & txtCEP.Text & "'," & _
                "Telefone = '" & txtTelefone.Text & "' " & _
                "WHERE CodUsuario = " & txtCodUsuario.Text & ";"
                .Execute
        End With
    End If
    MsgBox "Gravação concluida com sucesso", vbApplicationModal + vbInformation + vbOKOnly, "Gravação OK"
    limparTela
Saida:
    Screen.MousePointer = vbDefault
    Set cmd = Nothing
    Exit Sub
errGravacao:
    With Err
        If .Number <> 0 Then
            MsgBox "Houve um erro durante a gravação dos dados na tabela", vbExclamation + vbOKOnly + vbApplicationModal, "Erro"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

' Função que reseta a tela, apagando dados e redefinindo todo o restante
Private Sub limparTela()
    LimparDados
    Toolbar2.Buttons(3).Enabled = False
    txtCodUsuario.Text = Empty
    txtCodUsuario.Enabled = True
    txtCodUsuario.SetFocus
End Sub

'Função para excluir um registro em nossa tabela
Private Sub ExcluirRegistro()
Dim cnnComando As New ADODB.Command
Dim vOk As Integer
    On Error GoTo errExclusao
    vOk = MsgBox("Confirma a exclusão desse registro?", vbApplicationModal + vbDefaultButton2 + vbQuestion + vbYesNo, "Exclusão")
    If vOk = vbYes Then
        Screen.MousePointer = vbHourglass
        With cnnComando
        'Comando SQL ustilizado para excluir um registro
            .ActiveConnection = cnnBiblio
            .CommandType = adCmdText
            .CommandText = "DELETE FROM Teste.dbo.Usuarios WHERE CodUsuario = " & txtCodUsuario.Text & ";"
            .Execute
        End With
        MsgBox "Registro excluido com sucesso", vbApplicationModal + vbInformation + vbOKOnly, "Exclusão OK"
        limparTela
    End If
Saida:
    Screen.MousePointer = vbDefault
    Set cnnComando = Nothing
    Exit Sub
    
errExclusao:
    With Err
        If .Number <> 0 Then
            MsgBox "Houve um erro durante a exclusão do registro", vbExclamation + vbOKOnly + vbApplicationModal, "Erro"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

' formatando os dados antes de salvar para ter um padrão
Private Sub txtNomeUsuario_LostFocus()
    txtNomeUsuario.Text = StrConv(txtNomeUsuario.Text, vbProperCase)
End Sub

Private Sub txtCidade_LostFocus()
    txtCidade.Text = StrConv(txtCidade.Text, vbProperCase)
End Sub

Private Sub txtEndereco_LostFocus()
    txtEndereco.Text = StrConv(txtEndereco.Text, vbProperCase)
End Sub

Private Sub txtEstado_LostFocus()
    txtEstado.Text = UCase(txtEstado.Text)
End Sub
Private Sub txtTelefone_LostFocus()
    txtTelefone.Text = Format(txtTelefone.Text, "00 00000-0000")
End Sub
Private Sub txtCEP_LostFocus()
    txtCEP.Text = Format(txtCEP.Text, "00000-000")
End Sub
