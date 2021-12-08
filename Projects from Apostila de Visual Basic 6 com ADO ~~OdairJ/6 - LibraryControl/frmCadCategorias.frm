VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Begin VB.Form frmCadCategorias 
   BackColor       =   &H00404040&
   Caption         =   "Cadastro de categorias"
   ClientHeight    =   4725
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6870
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
   ScaleHeight     =   4725
   ScaleWidth      =   6870
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ImageList ImageList4 
      Left            =   5070
      Top             =   3480
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
            Picture         =   "frmCadCategorias.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadCategorias.frx":10DA
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadCategorias.frx":39D4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadCategorias.frx":4AAE
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar4 
      Align           =   1  'Align Top
      Height          =   840
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   6870
      _ExtentX        =   12118
      _ExtentY        =   1482
      ButtonWidth     =   1191
      ButtonHeight    =   1429
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList4"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   4
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Salvar"
            Object.ToolTipText     =   "Salvar registro"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Limpar"
            Object.ToolTipText     =   "Limpar dados"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Excluir "
            Object.ToolTipText     =   "Excluir registro"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Sair"
            Object.ToolTipText     =   "Sair do sistema"
            ImageIndex      =   4
         EndProperty
      EndProperty
   End
   Begin VB.TextBox txtNomeCategoria 
      Height          =   525
      Left            =   2580
      TabIndex        =   1
      Top             =   2520
      Width           =   2895
   End
   Begin VB.TextBox txtCodCategoria 
      Height          =   525
      Left            =   2670
      TabIndex        =   0
      Top             =   1530
      Width           =   2835
   End
   Begin VB.Label lblNomeCategoria 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nome Categoria: "
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
      TabIndex        =   3
      Top             =   2610
      Width           =   1875
   End
   Begin VB.Label lblCodigoCategoria 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Codigo Categoria:"
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
      Left            =   600
      TabIndex        =   2
      Top             =   1590
      Width           =   1920
   End
End
Attribute VB_Name = "frmCadCategorias"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Variaveis globais
Dim Inclusao As Boolean
Dim cnnBiblio As New ADODB.Connection
Private Sub Form_Load()
    'Paracentralizar no centro da tela
    Me.Left = (FrmBiblio.ScaleWidth - Me.Width) / 2
    Me.Top = (FrmBiblio.ScaleHeight - Me.Height) / 2
    cnnBiblio.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
    cnnBiblio.CursorLocation = adUseClient
    cnnBiblio.Open
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set cnnBbilio = Nothing
End Sub

'Configurando toolbar
Private Sub Toolbar4_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
            Salvar
        Case 2
            limparTela
        Case 3
            ExcluirRegistro
        Case 4
            Unload Me
            Set cnnBiblio = Nothing
    End Select
End Sub

'Vereficar se é um novo cadastro ou um ja existente para edição
Private Sub txtCodCategoria_LostFocus()
    Dim cmd As New ADODB.Command
    If Val(txtCodCategoria) = 0 Then
        MsgBox "Codigo 0 é invalido;", vbOKOnly + vbApplicationModal, "Erro"
        Exit Sub
    End If
    cmd.ActiveConnection = cnnBiblio
    cmd.CommandType = adCmdText
    cmd.CommandText = "SELECT * FROM Teste.dbo.Categorias WHERE CodCategoria =" & txtCodCategoria.Text & ";"
    Set Record = cmd.Execute

    With Record
        If .EOF And .BOF Then
            LimparDados
            Inclusao = True
            txtCodCategoria.Enabled = True
        Else
            txtNomeCategoria.Text = !NomeCategoria
            Inclusao = False
            Toolbar4.Buttons(3).Enabled = True
            txtCodCategoria.Enabled = False
        End If
    End With
End Sub
'Para salvar ou alterar os campos em um registro
Private Sub Salvar()
    Dim cmd As New ADODB.Command
    Dim erro As Boolean
    cmd.ActiveConnection = cnnBiblio
    cmd.CommandType = adCmdText
    
    If txtCodCategoria.Text = Empty Then
        MsgBox "Codigo da categoria não pode ser nulo", vbExclamation + vbOKOnly, "Erro"
        erro = True
    End If
    If txtNomeCategoria.Text = Empty Then
        MsgBox "Nome da categoria não pode ser nulo", vbExclamation + vbOKOnly, "Erro"
        erro = True
    End If
    'Esta com erro aqui, não esta setando true mesmo que não exista na variavel Incursao
    If Incursao = True Then
        MsgBox "AQUI"
        cmd.CommandText = "INSERT INTO Teste.dbo.Categorias (CodCategoria, NomeCategoria) VALUES ('" & _
                txtCodCategoria.Text & "','" & _
                txtNomeCategoria.Text & "');"
        cmd.Execute
    Else
        cmd.CommandText = "UPDATE Teste.dbo.Categorias SET " & _
            "NomeCategoria = '" & txtNomeCategoria.Text & "' WHERE CodCategoria = " & txtCodCategoria.Text & ";"
        cmd.Execute
    End If
    MsgBox "Dados Gravados com sucesso", vbOKOnly, "Gravado com sucesso"
    limparTela
End Sub
'Para exluir um registro
Private Sub ExcluirRegistro()
    Dim cmd As New ADODB.Command
    Dim erro As Integer
    
    vOk = MsgBox("Confirma   exclusão deste registro?", vbApplicationModal + vbDefaultButton2 + vbQuestion + vbYesNo, "Exclusão")
    If vOk Then
        With cmd
            .ActiveConnection = cnnBiblio
            .CommandType = adCmdText
            .CommandText = "DELETE FROM Teste.dbo.Categorias WHERE CodCategoria=" & txtCodCategoria.Text & ";"
            .Execute
        End With
        MsgBox "Excluido com sucesso", vbApplicationModal + vbInformation + vbOKOnly, "Exclusão Concluida"
        limparTela
    End If
End Sub
'Para limpar os dados da tela
Private Sub LimparDados()
    txtNomeCategoria.Text = Empty
End Sub
'Para reiniciar os dados da tela
Private Sub limparTela()
    LimparDados
    Toolbar4.Buttons(3).Enabled = False
    txtCodCategoria.Enabled = True
    txtCodCategoria.Text = Empty
    txtCodCategoria.SetFocus
End Sub

