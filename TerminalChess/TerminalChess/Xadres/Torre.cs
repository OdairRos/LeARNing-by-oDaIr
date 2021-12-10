using tabuleiro;

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
    }
}
