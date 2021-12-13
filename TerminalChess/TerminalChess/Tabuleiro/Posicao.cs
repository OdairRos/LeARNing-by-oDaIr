namespace tabuleiro
{
    class Posicao
    {
        /*        ATRIBUTOS         */
        public int linha { get; set; }
        public int coluna { get; set; }


        /*        CONSTRUTOR         */
        public Posicao(int linha, int coluna)
        {
            this.linha = linha;
            this.coluna = coluna;
        }

        /*        METODOS           */
        public override string ToString() { return $"{linha}, {coluna}"; }

        public void definirValores(int linha, int coluna)
        {
            this.linha = linha;
            this.coluna = coluna;
        }
    }
}
