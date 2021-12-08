VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Begin VB.Form frmCadLivros 
   BackColor       =   &H00404040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cadastro de livros"
   ClientHeight    =   6390
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10935
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
   ScaleHeight     =   6390
   ScaleWidth      =   10935
   Begin VB.OptionButton OptIdioma 
      BackColor       =   &H00404040&
      Caption         =   "Outro"
      Height          =   525
      Index           =   2
      Left            =   8370
      TabIndex        =   19
      Top             =   5580
      Width           =   1245
   End
   Begin VB.OptionButton OptIdioma 
      BackColor       =   &H00404040&
      Caption         =   "Português"
      Height          =   525
      Index           =   0
      Left            =   8310
      TabIndex        =   18
      Top             =   4290
      Width           =   1245
   End
   Begin VB.OptionButton OptIdioma 
      BackColor       =   &H00404040&
      Caption         =   "Ingles"
      Height          =   525
      Index           =   1
      Left            =   8340
      TabIndex        =   17
      Top             =   4950
      Width           =   1245
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00404040&
      Caption         =   "Idioma"
      Height          =   2355
      Left            =   7950
      TabIndex        =   16
      Top             =   3930
      Width           =   2175
   End
   Begin VB.CheckBox chkAcompDisquete 
      BackColor       =   &H00404040&
      Caption         =   "Disquete"
      Height          =   525
      Left            =   8370
      TabIndex        =   15
      Top             =   2460
      Width           =   1245
   End
   Begin VB.CheckBox chkAcompCD 
      BackColor       =   &H00404040&
      Caption         =   "CD"
      Height          =   525
      Left            =   8400
      TabIndex        =   14
      Top             =   1890
      Width           =   1245
   End
   Begin VB.Frame FraAcompanha 
      BackColor       =   &H00404040&
      Caption         =   "Acompanha"
      Height          =   1905
      Left            =   7980
      TabIndex        =   13
      Top             =   1530
      Width           =   2175
   End
   Begin VB.TextBox txtObservacoes 
      Height          =   1845
      Left            =   1920
      MaxLength       =   200
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   12
      Top             =   4410
      Width           =   5595
   End
   Begin VB.ComboBox CboCategoria 
      Height          =   315
      Left            =   1920
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   3840
      Width           =   4425
   End
   Begin VB.ComboBox cboEditora 
      Height          =   315
      Left            =   1920
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   3330
      Width           =   4425
   End
   Begin VB.TextBox txtAutor 
      Height          =   435
      Left            =   1920
      MaxLength       =   35
      TabIndex        =   9
      Top             =   2700
      Width           =   4395
   End
   Begin VB.TextBox txtTitulo 
      Height          =   435
      Left            =   1920
      MaxLength       =   50
      TabIndex        =   8
      Top             =   2100
      Width           =   5775
   End
   Begin VB.TextBox txtCodLivro 
      Height          =   435
      Left            =   1950
      MaxLength       =   2
      TabIndex        =   7
      Top             =   1410
      Width           =   1245
   End
   Begin MSComctlLib.ImageList ImageList5 
      Left            =   8820
      Top             =   840
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
            Picture         =   "frmCadLivros.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadLivros.frx":10DA
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadLivros.frx":39D4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmCadLivros.frx":4AAE
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar5 
      Align           =   1  'Align Top
      Height          =   840
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10935
      _ExtentX        =   19288
      _ExtentY        =   1482
      ButtonWidth     =   1164
      ButtonHeight    =   1429
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList5"
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
            Caption         =   "Ecluir"
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
   Begin VB.Label lblObservações 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Observações:"
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
      Left            =   480
      TabIndex        =   6
      Top             =   4440
      Width           =   1425
   End
   Begin VB.Label lblCategoria 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Categoria:"
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
      Left            =   480
      TabIndex        =   5
      Top             =   3840
      Width           =   1095
   End
   Begin VB.Label lblEditora 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Editora:"
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
      Left            =   480
      TabIndex        =   4
      Top             =   3270
      Width           =   840
   End
   Begin VB.Label lblAutor 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Autor:"
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
      Left            =   480
      TabIndex        =   3
      Top             =   2730
      Width           =   690
   End
   Begin VB.Label lblTitulo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Titulo:"
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
      Left            =   480
      TabIndex        =   2
      Top             =   2130
      Width           =   705
   End
   Begin VB.Label lblCódigo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Código:"
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
      Left            =   480
      TabIndex        =   1
      Top             =   1410
      Width           =   840
   End
End
Attribute VB_Name = "frmCadLivros"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Variaveis globais
Dim vInclusao As Boolean
Dim vCodEditora, vCodCategoria As Long
Dim vAcompCD, vAcompDisquete As Boolean
Dim vIdioma As Byte
Dim cnnBiblio As New ADODB.Connection

' configurações iniciais de nosso form
Private Sub Form_Load()
    Me.Left = (FrmBiblio.ScaleWidth - Me.Width) / 2
    Me.Top = (FrmBiblio.Height - Me.Height) / 2
    cnnBiblio.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
    cnnBiblio.CursorLocation = adUseClient
    cnnBiblio.Open
    vCodEditora = 0
    vCodCategoria = 0
    vAcompCD = False
    vAcompDisquete = False
    vIdioma = 0
    ComboCategorias CboCategoria
    ComboEditoras cboEditora
    cboEditora.ListIndex = -1
    CboCategoria.ListIndex = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set cnnBiblio = Nothing
End Sub

'Vereficando se esta marcado o button check CD
Private Sub chkAcompCD_Click()
    If chkAcompCD.Value = vbChecked Then
        vAcompCD = True
    Else
        vAcompCD = False
    End If
End Sub

'Vereficando se esta marcado o button check Disquete
Private Sub chkAcompDisquete_Click()
    If chkAcompDisquete.Value = vbChecked Then
        vAcompDisquete = True
    Else
        vAcompDisquete = False
    End If
End Sub


'Fazendo com que o option box só possa ser selecionado um dos 3
Private Sub OptIdioma_Click(Index As Integer)
    vIdioma = Index
End Sub

' Configura a seleção dos  ComboBox Editora
Private Sub cboEditora_Click()
    With cboEditora
        If .ListIndex <> -1 Then
            vCodEditora = .ItemData(.ListIndex)
        Else
            vCodEditora = 0
        End If
    End With
End Sub

' Configura a seleção dos  ComboBox Categoria
Private Sub CboCategoria_Click()
    With CboCategoria
        If .ListIndex <> -1 Then
            vCodCategoria = .ItemData(.ListIndex)
        Else
            vCodCategoria = 0
        End If
    End With
End Sub


'Configurando botôes e funções do toolbar
Private Sub Toolbar5_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
            SalvarDados
        Case 2
            limparTela
        Case 3
            ExcluirRegistro
        Case 4
            Set cnnBiblio = Nothing
            Unload Me
    End Select
End Sub

Private Sub SalvarDados()
    Dim cmd As New ADODB.Command
    Dim vSQL As String
    Dim vCod As Long
    Dim vConfMsg As Integer
    Dim vErro As Boolean

    vCod = Val(txtCodLivro.Text)
    vConfMsg = vbExclamation + vbOKOnly + vbApplicationModal
    vErro = False
    
    'Vereficando se algum dos valores requisitados não foi digitado
    If vCod = 0 Then
        MsgBox " O campo codigo não foi preenchido", vConfMsg, "Erro"
        vErro = True
    End If
    If txtTitulo.Text = Empty Then
        MsgBox " O campo Titulo não foi preenchido", vConfMsg, "Erro"
        vErro = True
    End If
    If txtAutor.Text = Empty Then
        MsgBox " O campo Autor não foi preenchido", vConfMsg, "Erro"
        vErro = True
    End If
    If vCodEditora = 0 Then
        MsgBox " O campo Editora não foi preenchido", vConfMsg, "Erro"
        vErro = True
    End If
    If vCodCategoria = 0 Then
        MsgBox " O campo Categoria não foi preenchido", vConfMsg, "Erro"
        vErro = True
    End If
    
    If vErro Then Exit Sub
    Screen.MousePointer = vbHoursglass
    
    If vAcompDisquete = False Then
        vDIS = 0
    Else:
        vDIS = 1
    End If
    If vAcompCD = False Then
        vCD = 0
    Else:
        vCD = 1
    End If
    zero = 0
    If vInclusao Then
        'Codigo SQL para inserir um novo registro em nosa tabela
        vSQL = "INSERT INTO Teste.dbo.Livros (CodLivro, Titulo, Autor, CodEditora, " & _
            "CodCategoria, AcompCD, AcompDisquete, Idioma, Observacoes, Emprestado) " & _
            "VALUES (" & vCod & ",'" & _
            txtTitulo.Text & "','" & _
            txtAutor.Text & "'," & _
            vCodEditora & "," & _
            vCodCategoria & "," & _
            vCD & "," & _
            vDIS & "," & _
            vIdioma & ",'" & _
            txtObservacoes.Text & "'," & _
            zero & ");"
    Else
        'Atualizando os dados de uma tabela
        vSQL = "UPDATE Teste.dbo.Livros SET Titulo = '" & txtTitulo.Text & _
            "', Autor = '" & txtAutor.Text & _
            "', CodEditora = " & vCodEditora & _
            ", CodCategoria = " & vCodCategoria & _
            ", AcompCD = " & vCD & _
            ", AcompDisquete = " & vDIS & _
            ", Idioma = " & vIdioma & _
            ", Observacoes = '" & txtObservacoes.Text & _
            "' WHERE CodLivro = " & vCod & ";"
    End If
    
    'Executando codigo SQL
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = vSQL
        .Execute
    End With
    MsgBox "Gravação concluidacom sucesso.", vbApplicationModal + vbInformation + vbOKOnly, "Gravação OK"
    limparTela
Saida:
    Screen.MousePointer = vbDefault
    Set cmd = Nothing
    Exit Sub
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Erro durante a gravação dos dados no registro." & vbCrLf & "A operação não foi completada.", vbExclamation + vbOKOnly + vbApplicationModal, "Operação cancelada"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

Private Sub ExcluirRegistro()
    Dim cmd As New ADODB.Command
    Dim vOk As Integer
    Dim vCod As Long
    On Error GoTo erro
    
    vOk = MsgBox("Confirma exclusão desse registro", vbApplicationModal + vbDefaultButton2 + vbQuestion + vbYesNo, "Exclusão")
    
    If vOk = vbYes Then
        Screen.MousePointer = vbHourglass
        vCod = Val(txtCodLivro.Text)
        
        'Executa o comando SQL para deletar o registro
        With cmd
            .ActiveConnection = cnnBiblio
            .CommandType = adCmdText
            .CommandText = "DELETE FROM Teste.dbo.Livros WHERE CodLivro = " & vCod & ";"
            .Execute
        End With
        
        MsgBox "Registro excluido com sucesso", vbApplicationModal + vbInformation + vbOKOnly, "Exclusão Ok"
        limparTela
    End If
    
Saida:
    Screen.MousePointer = vbDefault
    Set cmd = Nothing
    Exit Sub

erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Erro durante a exclusão do registro" & vbCrLf & "A operação não foi completada.", vbExclamation + vbOKOnly + vbApplicationModal, "Operação cancelada"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

'Criando a comboBox para categorias
Public Sub ComboCategorias(NomeCombo As ComboBox)
    Dim cmd As New ADODB.Command
    Dim rcd As New ADODB.Recordset
    Dim i As Integer
    'On Error GoTo erro
    
    ' Executando o codigo sql que captura os dados necessarios
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "SELECT CodCategoria AS Código, NomeCategoria AS Descrição From Categorias"
        Set rcd = .Execute
    End With
    
    'Para vereficar a existencia de uma editora em nosso registro
    With rcd
        If Not (.EOF And .BOF) Then
            .MoveFirst
            i = 0
            While Not .EOF
                NomeCombo.AddItem !Descrição, i
                NomeCombo.ItemData(i) = !Código
                .MoveNext
                i = i + 1
            Wend
        End If
    End With


Saida:
    Set cmd = Nothing
    Set rcd = Nothing
    Exit Sub
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Não foi possivel a leitura da tabela de editoras:", _
                    , vbinforamtiom, vbInformation + vbOKOnly + vbApplicationModal, _
                    "Erro ao carregar ComboBox"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

'Criando a comboBox para Editoras
Public Sub ComboEditoras(NomeCombo As ComboBox)
    Dim cmd As New ADODB.Command
    Dim rcd As New ADODB.Recordset
    Dim i As Integer
    On Error GoTo erro
   
    
    'Executando o codigo sql que seleciona os dados nescessarios
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "SELECT CodEditora AS Código, NomeEditora AS Descrição From Teste.dbo.Editoras"
        Set rcd = .Execute
    End With
    
    'Para vereficar se ja existe alguma editora  no registro
    With rcd
        If Not (.EOF And .BOF) Then
            .MoveFirst
            i = 0
            While Not .EOF
                NomeCombo.AddItem !Descrição, i
                NomeCombo.ItemData(i) = !Código
                .MoveNext
                i = i + 1
            Wend
        End If
    End With

Saida:
    Set cmd = Nothing
    Set rcd = Nothing
    Exit Sub
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Não foi possivel a leitura da tabela de editoras:", vbOKOnly + vbApplicationModal, "Erro ao carregar ComboBox"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

' Formatando entrada dos campos
Private Sub txtAutor_LostFocus()
    txtAutor.Text = StrConv(txtAutor.Text, vbProperCase)
End Sub
Private Sub txtTitulo_LostFocus()
    txtTitulo.Text = StrConv(txtTitulo.Text, vbProperCase)
End Sub

' Carregando dados caso ja exista em nossa tabela um registro
Private Sub txtCodLivro_LostFocus()
    Dim cmd As New ADODB.Command
    Dim rcd As New ADODB.Recordset
    Dim vCod As Long
    Dim i As Integer
    
    vCod = Val(txtCodLivro.Text)
    
    If vCod = 0 Then Exit Sub
    Screen.MousePointer = vbHoursglass
    
    ' Executando o codigo sql
    With cmd
        .ActiveConnection = cnnBiblio
        .CommandType = adCmdText
        .CommandText = "SELECT * FROM Teste.dbo.Livros WHERE CodLivro = " & vCod & ";"
        Set rcd = .Execute
    End With
    
    'Verefica se ja existe dados em nossa tabela segundo o codigo do Livro
    With rcd
        If .EOF And .BOF Then
            LimparDados
            vInclusao = True
        Else
            txtTitulo.Text = !Titulo
            txtAutor = !Autor
            vCodEditora = !CodEditora
            vCodCategoria = !CodCategoria
            vAcompCD = !AcompCD
            vAcompDisquete = !AcompDisquete
            vIdioma = !Idioma
            txtObservacoes = !Observacoes
            
            With cboEditora
                .ListIndex = -1
                For i = 0 To (.ListCount - 1)
                    If vCodEditora = .ItemData(i) Then
                        .ListIndex = i
                        Exit For
                    End If
                Next i
            
            End With
            
            With CboCategoria
                .ListIndex = -1
                For i = 0 To (.ListCount - 1)
                    If vCodCategoria = .ItemData(i) Then
                        .ListIndex = i
                        Exit For
                    End If
                Next i
            End With
            chkAcompCD.Value = IIf(vAcompCD, vbChecked, vbUnchecked)
            chkAcompDisquete.Value = IIf(vAcompDisquete, vbChecked, vbUnchecked)
            OptIdioma(vIdioma).Value = True
            Toolbar5.Buttons(3).Enabled = True
            vInclusao = False
        End If
    End With
    txtCodLivro.Enabled = False
    
Saida:
    Set rcd = Nothing
    Set cmd = Nothing
    Screen.MousePointer = vbDefault
    Exit Sub
erro:
    With Err
        If .Number <> 0 Then
            MsgBox "Erro na recuperação do registro solicitado:", _
                vbExclamation + vbOKOnly + vbApplicationModal, "Aviso"
            .Number = 0
            GoTo Saida
        End If
    End With
End Sub

'Para reiniciar os dados da dela
Private Sub LimparDados()
    txtTitulo.Text = Empty
    txtAutor.Text = Empty
    txtObservacoes.Text = Empty
    
    cboEditora.ListIndex = -1
    CboCategoria.ListIndex = -1
    
    chkAcompDisquete.Value = vbUnchecked
    chkAcompCD.Value = vbUnchecked
    
    For i = 0 To 2
        OptIdioma(i) = False
    Next i
    
    vCodEditora = 0
    vCodCategoria = 0
    vAcompCD = False
    vAcompDisquete = False
    vIdioma = 0
End Sub

' Para resetar os valores de nossa tela
Private Sub limparTela()
    LimparDados
    Toolbar5.Buttons(3).Enabled = False
    txtCodLivro.Text = Empty
    txtCodLivro.Enabled = True
    txtCodLivro.SetFocus
End Sub
                                                
