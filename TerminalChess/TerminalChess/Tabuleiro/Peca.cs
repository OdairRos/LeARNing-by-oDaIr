namespace tabuleiro
{
    class Peca
    {
        /*        ATRIBUTOS         */
        public Posicao posicao { get; set; }
        public Cor cor { get; protected set; }
        public int QuantidadeMovimentos { get; protected set; }
        public Tabuleiro tabuleiro { get; protected set; }



        public Peca( Tabuleiro tabuleiro, Cor cor)
        {/*        CONSTRUTOR         */
            this.posicao = null;
            this.tabuleiro = tabuleiro;
            this.cor = cor;
            this.QuantidadeMovimentos = 0;
        }
    }
}
