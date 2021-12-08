VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Begin VB.MDIForm FrmBiblio 
   BackColor       =   &H00404040&
   Caption         =   "Bibliotecario - Controle de acervo de Bibliotecas"
   ClientHeight    =   10635
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   17940
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   570
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   17940
      _ExtentX        =   31644
      _ExtentY        =   1005
      ButtonWidth     =   2408
      ButtonHeight    =   1005
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   5
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Cadastro Livros"
            Object.ToolTipText     =   "Cadastro de Livros"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Cadatro usuario"
            Object.ToolTipText     =   "Cadastro de Usúarios"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Empestimo"
            Object.ToolTipText     =   "Emprestimo de livros"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Devolução"
            Object.ToolTipText     =   "Devolução  de livros"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Sair"
            Object.ToolTipText     =   "Sair do sistema"
            ImageIndex      =   5
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   3930
      Top             =   1260
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483625
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   16777215
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   6
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBiblio.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBiblio.frx":10DA
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBiblio.frx":21B4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBiblio.frx":328E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBiblio.frx":4368
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBiblio.frx":5442
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuCadastros 
      Caption         =   "&Cadastros"
      Begin VB.Menu mnuCadLivros 
         Caption         =   "&Livros"
      End
      Begin VB.Menu mnuCadUsuarios 
         Caption         =   "&Usuarios"
      End
      Begin VB.Menu mnuCadCategorias 
         Caption         =   "&Categorias"
      End
      Begin VB.Menu mnuCadEditoras 
         Caption         =   "&Editoras"
      End
      Begin VB.Menu BS1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSair 
         Caption         =   "&Sair do sistema"
      End
   End
   Begin VB.Menu mnuOperacoes 
      Caption         =   "&Operações"
      Begin VB.Menu mnuEmprestimos 
         Caption         =   "&Emprestimo de livros"
      End
      Begin VB.Menu mnuDevolucoes 
         Caption         =   "&Devolução de Livros"
      End
   End
   Begin VB.Menu mnuconsultas 
      Caption         =   "C&onsultas"
      Begin VB.Menu mnuConLivros 
         Caption         =   "&Livros"
         Begin VB.Menu mnuConTodos 
            Caption         =   "&Todos"
         End
         Begin VB.Menu BS2 
            Caption         =   "-"
         End
         Begin VB.Menu mnuLivrosPorAutor 
            Caption         =   "Por A&utor"
         End
         Begin VB.Menu mnuLivrosPorCategoria 
            Caption         =   "Por &Categoria"
         End
         Begin VB.Menu mnuLivrosPorEditora 
            Caption         =   "Por &Editora"
         End
         Begin VB.Menu BS3 
            Caption         =   "-"
         End
         Begin VB.Menu mnuEmprestados 
            Caption         =   "&Emprestados"
         End
         Begin VB.Menu mnuConAtrasados 
            Caption         =   "Em &Atraso"
         End
      End
      Begin VB.Menu mnuConUsuarios 
         Caption         =   "&Usuarios"
      End
      Begin VB.Menu manuConCategorias 
         Caption         =   "&Categorias"
      End
      Begin VB.Menu mnuConEditoras 
         Caption         =   "&Editoras"
      End
   End
   Begin VB.Menu mnuRelatorios 
      Caption         =   "&Relatórios"
      Begin VB.Menu mnuRelLivros 
         Caption         =   "&Livros"
         Begin VB.Menu mnuRelTodos 
            Caption         =   "&Todos"
         End
         Begin VB.Menu BS4 
            Caption         =   "-"
         End
         Begin VB.Menu mnuRelPorAutor 
            Caption         =   "Por A&utor"
         End
         Begin VB.Menu mnuRelPorCategoria 
            Caption         =   "Por &Categoria"
         End
         Begin VB.Menu mnuRelLivrosPorEditora 
            Caption         =   "Por E&ditora"
         End
      End
      Begin VB.Menu mnuRelUsuarios 
         Caption         =   "&Usuários"
      End
      Begin VB.Menu mnuRelCategorias 
         Caption         =   "&Categorias"
      End
      Begin VB.Menu mnuRelEditoras 
         Caption         =   "&Editoras"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "About&?"
      Begin VB.Menu mnuSobre 
         Caption         =   "&Sobre o Bibliotecario"
      End
   End
End
Attribute VB_Name = "FrmBiblio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Variaveis globais
Dim cnnBiblio As New ADODB.Connection

Private Sub manuConCategorias_Click()
    frmConsultaCategorias.Show
End Sub

'Estabelecendo conexão com o banco de dados
Private Sub MDIForm_Load()
        Set cnnBiblio = Nothing
        cnnBiblio.ConnectionString = "Provider=SQLOLEDB.1;Password=V6352s;Persist Security Info=True;User ID=sa;Initial Catalog=Teste;Data Source =localhost,433"
        cnnBiblio.CursorLocation = adUseClient
        cnnBiblio.Open
End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Criando os atalhos para os botões de nosssa aplicação, cada um levando para o frame respectivo '
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'Para adicionar o frame no botão respectivo a função
Private Sub mnuCadCategorias_Click()
    frmCadCategorias.Show
End Sub

'Para carrregar a tela de cadastro editora
Private Sub mnuCadEditoras_Click()
    frmCadEditora.Show
End Sub

Private Sub mnuCadLivros_Click()
    frmCadLivros.Show
End Sub

'Para carregar o frame de cadastro de ususarios
Private Sub mnuCadUsuarios_Click()
    frmCadUsuarios.Show
End Sub

Private Sub mnuConAtrasados_Click()
    frmConsultaLivrosEmAtraso.Show
End Sub



Private Sub mnuConEditoras_Click()
    frmConsultaEditoras.Show
End Sub

' Para carregar o frame de consulta de todos livros
Private Sub mnuConTodos_Click()
    frmConsultaTodosLivros.Show
End Sub

' Para carregar o frame de consulta de usuarios
Private Sub mnuConUsuarios_Click()
    frmConsultaCadastroUsuarios.Show
End Sub

' Para carregar o frame de devoluções
Private Sub mnuDevolucoes_Click()
    frmDevolucaoLivros.Show
End Sub

' Para carregar o frame de consulta livros emprestados
Private Sub mnuEmprestados_Click()
    frmConsultaLivrosEmprestado.Show
End Sub

' Para carregar o framde de emprestimos
Private Sub mnuEmprestimos_Click()
    frmEmprestimoLivros.Show
End Sub

Private Sub mnuLivrosPorAutor_Click()
    frmConLivrosPorAutor.Show
End Sub

Private Sub mnuLivrosPorCategoria_Click()
    frmConLivrosPorCategoria.Show
End Sub

Private Sub mnuLivrosPorEditora_Click()
    frmConLivrosPorEditora.Show
End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Parte de comunicado que não foi possivel desenvolver a parte de relatorio por falta de DATA ENVIROMENT '
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub mnuRelCategorias_Click()
    MsgBox " Funcionalidade Não desenvolvida porque falta Data Environment neste vb6", vbApplicationModal, "Comunicado"
End Sub

Private Sub mnuRelEditoras_Click()
    MsgBox " Funcionalidade Não desenvolvida porque falta Data Environment neste vb6", vbApplicationModal, "Comunicado"
End Sub

Private Sub mnuRelLivrosPorEditora_Click()
    MsgBox " Funcionalidade Não desenvolvida porque falta Data Environment neste vb6", vbApplicationModal, "Comunicado"
End Sub

Private Sub mnuRelPorAutor_Click()
    MsgBox " Funcionalidade Não desenvolvida porque falta Data Environment neste vb6", vbApplicationModal, "Comunicado"
End Sub

Private Sub mnuRelTodos_Click()
        MsgBox " Funcionalidade Não desenvolvida porque falta Data Environment neste vb6", vbApplicationModal, "Comunicado"
End Sub

Private Sub mnuRelUsuarios_Click()
    MsgBox " Funcionalidade Não desenvolvida porque falta Data Environment neste vb6", vbApplicationModal, "Comunicado"
End Sub

'Menu de confirmação para sair da Aplciação
Private Sub mnuSair_Click()
    Dim vOk As Integer
        vOk = MsgBox("Confirma o encerramento da aplicação?", vbYesNo + vbQuestion + vbApplicationModal, "saida")
        cnnBiblio.Close
        If vOk = vbYes Then End
End Sub

'Menu sobre a Aplicação
Private Sub mnuSobre_Click()
    frmAbout.Show vbModal
End Sub
'''''''''''''''''''''''''''''''''''''''''''''''''''
'          Criando o menu de nossa ToolBar        '
'''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    If Button.Index = 1 Then
        frmCadLivros.Show
    End If
    If Button.Index = 2 Then
        frmCadUsuarios.Show
    End If
    If Button.Index = 3 Then
        frmEmprestimoLivros.Show
    End If
    If Button.Index = 4 Then
        frmDevolucaoLivros.Show
    End If
    If Button.Index = 5 Then
        mnuSair_Click
    End If
End Sub
