using tabuleiro;

namespace Xadres
{
    class Rei : Peca
    {
        /*        CONSTRUTOR         */
        public Rei(Tabuleiro tabuleiro, Cor cor) : base(tabuleiro, cor) { }

        private bool podeMover(Posicao pos)
        {
            /*  Verefica se a posição é nula ou diferente da posição de uma peça adversaria  */
            Peca p = tabuleiro.peca(pos);
            return p == null || p.cor != this.cor;
        }


        public override bool[,] movimentosPossiveis()
        {/*
            Define os movimetnos possiveis para o Rei
        */
            bool[,] mat = new bool[tabuleiro.linhas, tabuleiro.colunas];
            Posicao pos = new Posicao(0, 0);

            // Acima
            pos.definirValores(posicao.linha - 1, posicao.coluna);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }
            // Ne
            pos.definirValores(posicao.linha - 1, posicao.coluna + 1);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }
            // Direita
            pos.definirValores(posicao.linha, posicao.coluna + 1);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }
            // Se 
            pos.definirValores(posicao.linha + 1, posicao.coluna + 1);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }
            // Abaixo 
            pos.definirValores(posicao.linha + 1, posicao.coluna);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }
            // So 
            pos.definirValores(posicao.linha + 1, posicao.coluna - 1);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }
            // Esquerda
            pos.definirValores(posicao.linha, posicao.coluna - 1);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }
            // No
            pos.definirValores(posicao.linha - 1, posicao.coluna - 1);
            if (tabuleiro.PosicaoValida(pos) && podeMover(pos))
            {
                mat[pos.linha, pos.coluna] = true;
            }

            return mat;
        }
        public override string ToString()
        {/* 
            Retorna primeira letra de uma peça para representa-la no tabuleiro
         */
            return "R";
        }
    }
}