namespace tabuleiro
{
    abstract class Peca
    {
        /*        ATRIBUTOS         */
        public Posicao posicao { get; set; }
        public Cor cor { get; protected set; }
        public int QuantidadeMovimentos { get; protected set; }
        public Tabuleiro tabuleiro { get; protected set; }


        /*        CONSTRUTOR         */
        public Peca(Tabuleiro tabuleiro, Cor cor)
        {
            this.posicao = null;
            this.tabuleiro = tabuleiro;
            this.cor = cor;
            this.QuantidadeMovimentos = 0;
        }

        public void incrementoQteMovimento()
        {
            QuantidadeMovimentos++;
        }
        public void DecrementoQteMovimento()
        {
            QuantidadeMovimentos--;
        }

        public bool existeMovimentosPossiveis()
        {
            bool[,] mat = movimentosPossiveis();
            for (int i = 0; i < tabuleiro.linhas; i++)
            {
                for (int j = 0; j < tabuleiro.colunas; j++)
                {
                    if (mat[i, j])
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        public bool podeMoverPara(Posicao pos)
        {
            return movimentosPossiveis()[pos.linha, pos.coluna];
        }
        public abstract bool[,] movimentosPossiveis();

    }
}
