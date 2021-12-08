VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Begin VB.Form frmCadEditora 
   BackColor       =   &H00404040&
   Caption         =   "Cadastro Editoras"
   ClientHeight    =   4455
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8775
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
   ScaleHeight     =   4455
   ScaleWidth      =   8775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtNomeEditora 
      Height          =   525
      Left            =   2550
      TabIndex        =   4
      Top             =   3120
      Width           =   4425
   End
   Begin VB.TextBox txtCodEditora 
      Height          =   525
      Left            =   2580
      TabIndex        =   1
      Top             =   2070
      Width           =   2775
   End
   Begin MSComctlLib.ImageList ImageList3 
      Left            =   8070
      Top             =   960
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
            Picture         =   "frmCadEditoras.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadEditoras.frx":10DA
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadEditoras.frx":39D4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadEditoras.frx":4AAE
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar3 
      Align           =   1  'Align Top
      Height          =   840
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8775
      _ExtentX        =   15478
      _ExtentY        =   1482
      ButtonWidth     =   1164
      ButtonHeight    =   1429
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList3"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   4
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Salvar"
            Object.ToolTipText     =   "Salvar Categoria"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Limpar"
            Object.ToolTipText     =   "Limpar dados"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Caption         =   "Excluir"
            Object.ToolTipText     =   "Excluir registro"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Sair"
            Object.ToolTipText     =   "Sair da tela"
            ImageIndex      =   4
         EndProperty
      EndProperty
   End
   Begin VB.Label lblNomeEditora 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nome Editora:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   480
      TabIndex        =   3
      Top             =   3120
      Width           =   1815
   End
   Begin VB.Label lblCodigoEditora 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Codigo Editora:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   480
      TabIndex        =   2
      Top             =   2070
      Width           =   1935
   End
End
Attribute VB_Name = "frmCadEditora"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cnnBiblio As New ADODB.Connection
'Variaveis globais
Dim Inclusao As Boolean


Private Sub Form_Load()
'Paracentralizar no centro da tela
        Me.Left = (FrmBiblio.ScaleWidth - Me.Width) / 2
        Me.Top = (FrmBiblio.ScaleHeight - Me.Height) / 2
        cnnBiblio.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
        cnnBiblio.CursorLocation = adUseClient
        cnnBiblio.Open
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set cnnBiblio = Nothing
End Sub

' Configurando barra de atalhos superior para agir conforme seu respectivo nome
Private Sub Toolbar3_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
            Salvar
        Case 2
            limparTela
        Case 3
            ExluirRegistro
        Case 4
            Set cnnBiblio = Nothing
            Unload Me
           
    End Select
End Sub
'Para limpar os campos da tela
Private Sub LimparDados()
    txtNomeEditora.Text = Empty
End Sub
'Para salvar ou atualizar os dados de uma registro
Private Sub Salvar()
    Dim cmd As New ADODB.Command
    Dim erro  As Boolean
    
    If txtCodEditora = 0 Then MsgBox "Codigo 0 é invalido;", vbOKOnly + vbApplicationModal, "Erro"
    
    If txtCodEditora.Text = Empty Then
        MsgBox "Codigo Editora não pode estar vazio", vbExclamation + vbOKOnly, "Erro"
        erro = True
    End If
    If txtNomeEditora.Text = Empty Then
        MsgBox " Nome da Editora não pode estar vazio", vbExclamation + vbOKOnly, "Erro"
        erro = True
    End If
        
    cmd.ActiveConnection = cnnBiblio
    cmd.CommandType = adCmdText
    
    If Inclusao Then
        With cmd
            'Codigo sql para inserir uma nova editora
            .CommandText = "INSERT INTO Teste.dbo.Editoras (CodEditora, NomeEditora) VALUES('" & _
                txtCodEditora.Text & "','" & _
                txtNomeEditora.Text & "');"
                .Execute
        End With
    Else
        With cmd
            'Atualizando os dados do registro
            .CommandText = "UPDATE Teste.dbo.Editoras SET " & _
                "NomeEditora = '" & txtNomeEditora.Text & "' WHERE CodEditora = " & txtCodEditora.Text & ";"
            .Execute
                
        End With
    End If
    MsgBox "Dados Gravados com sucesso", vbOKOnly, "Gravado com sucesso"
    limparTela
End Sub
'Para excluir os campos do registro
Private Sub ExluirRegistro()
    Dim cmd As New ADODB.Command
    Dim vOk As Integer
   
    vOk = MsgBox("Confirma  a exclusão deste registro?", vbApplicationModal + vbDefaultButton2 + vbQuestion + vbYesNo, "Exclusão")
    If vOk = vbYes Then
        With cmd
            .ActiveConnection = cnnBiblio
            .CommandType = adCmdText
            .CommandText = "DELETE FROM Teste.dbo.Editoras WHERE CodEditora= " & txtCodEditora.Text & ";"
            .Execute
        End With
        MsgBox "Excluido com sucesso ", vbApplicationModal + vbInformation + vbOKOnly, "Exclusão Concluida"
        limparTela
    End If

End Sub
'Verefica se é um usuario existente e carrega os campos da tabela, se for um novo cadastra-ô
Private Sub txtCodEditora_LostFocus()
    Dim cmd As New ADODB.Command
    If Val(txtCodEditora) = 0 Then
        MsgBox "Codigo 0 é invalido;", vbOKOnly + vbApplicationModal, "Erro"
        Exit Sub
    End If
    cmd.ActiveConnection = cnnBiblio
    cmd.CommandType = adCmdText
    cmd.CommandText = "SELECT * FROM Teste.dbo.Editoras WHERE CodEditora =" & txtCodEditora.Text & ";"
    Set Record = cmd.Execute

    With Record
        If .EOF And .BOF Then
            LimparDados
            Inclusao = True
            txtCodEditora.Enabled = True
        Else
            txtNomeEditora.Text = !NomeEditora
            Inclusao = False
            Toolbar3.Buttons(3).Enabled = True
            txtCodEditora.Enabled = False
        End If
        
    End With
End Sub

'Para reiniciar a tela apagando todos dados
Private Sub limparTela()
    LimparDados
    Toolbar3.Buttons(3).Enabled = False
    txtCodEditora.Enabled = True
    txtCodEditora.Text = Empty
    txtCodEditora.SetFocus
End Sub
