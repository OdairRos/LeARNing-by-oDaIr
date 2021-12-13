using System;
using tabuleiro;
using Xadres;

using System.Collections.Generic;
namespace TerminalChess

{
    class Tela
    {
        public static void ImprimirPartida(PartidaDeXadrez partida)
        {
            ImprimirTabuleiro(partida.tabu);
            Console.WriteLine("");
            ImprimirPecasCapturadas(partida);
            Console.WriteLine($"\nTurno: {partida.turno}");
            Console.WriteLine($"Aguardando jogada: " + partida.JogadorAtual);
            if (partida.xeque)
            {
                Console.WriteLine($"XEQUE");
            }
        }

        private static Peca rei(Cor cor, PartidaDeXadrez partida)
        {
            foreach (Peca x in (partida.pecasEmJogo(cor)))
            {
                if (x is Rei)
                    return x;
            }
            return null;

        }

        public static void ImprimirPecasCapturadas(PartidaDeXadrez partida)
        {
            Console.WriteLine("Peças capturadas");
            Console.Write("Brancas: ");
            imprimirConjunto(partida.pecasCapturadas(Cor.Branca));
            Console.WriteLine();
            Console.Write("Pretos: ");
            ConsoleColor aux = Console.ForegroundColor;
            Console.ForegroundColor = ConsoleColor.Yellow;
            imprimirConjunto(partida.pecasCapturadas(Cor.Preta));
            Console.ForegroundColor = aux;
            Console.WriteLine();
        }

        public static bool estaEmXeque(Cor cor, PartidaDeXadrez partida)
        {
            Peca R = rei(cor, partida);
            if (R == null)
            {
                throw new TabuleiroException($"Não tem rei da cor {cor} no tabuleiro");
            }
            foreach (Peca x in partida.pecasEmJogo(cor))
            {
                bool[,] mat = x.movimentosPossiveis();
                if (mat[R.posicao.linha, R.posicao.coluna])
                {
                    return true;
                }
            }
            return false;
        }

        public static void imprimirConjunto(HashSet<Peca> conjunto)
        {
            Console.Write("[");
            foreach (Peca x in conjunto)
            {
                Console.Write(x + " ");
            }
            Console.Write("]");

        }

        public static void ImprimirTabuleiro(tabuleiro.Tabuleiro tabuleiro)
        {/*  
             Recebe um tabuleiro junto com seus atributos: linhas e colunas
             Desenha o tabuleiro conforme seu tamanho e aloca as peças
         */
            for (int i = 0; i < tabuleiro.linhas; i++)
            {
                Console.Write(8 - i + " ");
                for (int j = 0; j < tabuleiro.colunas; j++)
                {
                    imprimirPeca(tabuleiro.peca(i, j));
                }
                Console.WriteLine();
            }
            Console.WriteLine("  a b c d e f g h");
        }

        public static void ImprimirTabuleiro(tabuleiro.Tabuleiro tabuleiro, bool[,] posicoesPossiveis)
        {/*  
             Recebe um tabuleiro junto com seus atributos: linhas e colunas 
             e uma matriz booleana que contem os movimentos possiveis dentro do tamanho de nosso tabuleiro
             Desenha o tabuleiro conforme seu tamanho e aloca as peças
         */
            ConsoleColor fundoOriginal = Console.BackgroundColor;
            ConsoleColor fundoalterado = ConsoleColor.DarkGray;

            for (int i = 0; i < tabuleiro.linhas; i++)
            {
                Console.Write(8 - i + " ");
                for (int j = 0; j < tabuleiro.colunas; j++)
                {
                    if (posicoesPossiveis[i, j])
                    {
                        Console.BackgroundColor = fundoalterado;
                    }
                    else
                    {
                        Console.BackgroundColor = fundoOriginal;
                    }
                    imprimirPeca(tabuleiro.peca(i, j));
                    Console.BackgroundColor = fundoOriginal;
                }
                Console.WriteLine();
            }
            Console.WriteLine("  a b c d e f g h");
            Console.BackgroundColor = fundoOriginal;
        }

        public static void imprimirPeca(Peca peca)
        {

            if (peca == null)
            {
                Console.Write("- ");
            }
            else
            {
                if (peca.cor == Cor.Branca)
                {
                    Console.Write(peca + " ");
                }
                else
                {
                    ConsoleColor aux = Console.ForegroundColor;
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.Write(peca + " ");
                    Console.ForegroundColor = aux;
                }
            }
        }

        public static PosicaoXadrez lerPosicaoXadrez()
        {
            string s = Console.ReadLine();
            char coluna = s[0];
            int linha = int.Parse(s[1] + "");
            return new PosicaoXadrez(coluna, linha);

        }
    }
}


