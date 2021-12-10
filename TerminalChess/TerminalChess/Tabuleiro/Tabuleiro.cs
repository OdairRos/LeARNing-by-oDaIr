namespace tabuleiro
{
    class Tabuleiro
    {
        /*        ATRIBUTOS         */
        public int linhas { get; set; }
        public int colunas { get; set; }

        private Peca[,] Pecas;

        
        public Tabuleiro(int linhas, int colunas)
        {/*
          ENTRADA:
            Quantidade de linhas e colunas

          SAIDA(SEM RETORNO):
            Define o tamanho do tabuleiro

          */
            this.linhas = linhas;
            this.colunas = colunas;
            Pecas = new Peca[linhas, colunas];
        }


        /*        METODOS         */
        public Peca peca(int linha, int coluna)
        {/*
          ENTRADA:
            Recebe dois valores int: Linha, coluna
          SAIDA(RETORNO):
             Retorna a peça que esta na posição (Linha e coluna)
         */
            return Pecas[linha, coluna];
        }
        
        public Peca peca(Posicao posicao)
        {/* 
          ENTRADA:
            Recebe um objeto da classe Posição: que contem atributos Linha e Coluna
          SAIDA:
            Retorna a peça que esta na posição (Linha e coluna)
          */
            return Pecas[posicao.linha, posicao.coluna];
        }
        
        public void ColocarPeca(Peca peca, Posicao posicao)
        {/*
          ENTRADA:
            Um objeto da classe Peca - objeto da classe Posicao
          SAIDA(SEM RETORNO):
            coloca a peça na posição requerida

          */
            Pecas[posicao.linha, posicao.coluna] = peca;
            peca.posicao = posicao;
        }

        public bool ValidaPosicao(Posicao posicao)
        {/*
          ENTRADA: 
            Recebe um objeto instanciado da classe Posicao: que contem os atributos Linhas e colunas
          SAIDA(RETORNO):
            Retorna false se a posição for invalida ou true caso seja vaida
          
          */
            if (posicao.linha < 0 || posicao.linha >= linhas || posicao.coluna < 0 || posicao.coluna >= colunas)
                return false;

            return true;
        }
    }
}
