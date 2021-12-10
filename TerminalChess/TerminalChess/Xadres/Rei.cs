using tabuleiro;

namespace Xadres
{
    class Rei : Peca
    {
        /*        CONSTRUTOR         */
        public Rei(Tabuleiro tabuleiro, Cor cor) : base(tabuleiro, cor){}

        public override string ToString()
        {/* 
            Retorna primeira letra de uma peça para representa-la no tabuleiro
         */
            return "R";
        }
    }
}
