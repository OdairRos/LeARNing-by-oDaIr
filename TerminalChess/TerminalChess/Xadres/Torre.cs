using tabuleiro;
using Xadres;
namespace Xadres
{
    class Torre : Peca
    {
        /*        CONSTRUTOR         */
        public Torre(Tabuleiro tabuleiro, Cor cor) : base(tabuleiro, cor) { }

        public override string ToString()
        {/* 
            Retorna primeira letra de uma peça para representa-la no tabuleiro
         */
            return "T";
        }
        private bool podeMover(Posicao pos)
        {
            /*  Verefica se a posição é nula ou diferente da posição de uma peça adversaria  */
            Peca p = tabuleiro.peca(pos);
            return p == null || p.cor != this.cor;
        }

        public override bool[,] movimentosPossiveis()
        {/*
            Define os movimetnos possiveis para a Torre
        */
            bool[,] mat = new bool[tabuleiro.linhas, tabuleiro.colunas];
            Posicao pos = new Posicao(0, 0);

            // Acima
            pos.definirValores(posicao.linha - 1, posicao.coluna);
            while (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
                if (tabuleiro.peca(pos) != null && tabuleiro.peca(pos).cor != cor)
                    break;

                pos.linha = pos.linha - 1;
            }
            // Abaixo
            pos.definirValores(posicao.linha + 1, posicao.coluna);
            while (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
                if (tabuleiro.peca(pos) != null && tabuleiro.peca(pos).cor != cor)
                    break;

                pos.linha = pos.linha + 1;
            }
            // esquerda
            pos.definirValores(posicao.linha, posicao.coluna - 1);
            while (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
                if (tabuleiro.peca(pos) != null && tabuleiro.peca(pos).cor != cor)
                    break;

                pos.coluna = pos.coluna - 1;
            }
            // direita
            pos.definirValores(posicao.linha, posicao.coluna + 1);
            while (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
                if (tabuleiro.peca(pos) != null && tabuleiro.peca(pos).cor != cor)
                    break;

                pos.coluna = pos.coluna + 1;
            }
            return mat;
        }
    }
}
