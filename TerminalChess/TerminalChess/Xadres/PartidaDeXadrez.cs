using tabuleiro;
using System.Collections.Generic;
using System;
using TerminalChess;
namespace Xadres
{
    class PartidaDeXadrez
    {
        /*        ATRIBUTOS         */
        public Tabuleiro tabu { get; private set; }
        public int turno { get; private set; }
        public Cor JogadorAtual { get; private set; }
        public bool terminada { get; private set; }
        private HashSet<Peca> pecas { get; set; }
        private HashSet<Peca> capturadas { get; set; }
        public bool xeque { get; private set; }


        /*        Construtor         */
        public PartidaDeXadrez()
        {
            tabu = new Tabuleiro(8, 8);
            turno = 1;
            JogadorAtual = Cor.Branca;
            terminada = false;
            xeque = false;
            pecas = new HashSet<Peca>(); ;
            capturadas = new HashSet<Peca>();
            colocarPecas();
        }

        /*         Metodos          */
        private Peca executaMovimento(Posicao origem, Posicao destino)
        {
            Peca pe = tabu.RetirarPeca(origem);
            pe.incrementoQteMovimento();
            Peca pecaCapturada = tabu.RetirarPeca(destino);
            tabu.ColocarPeca(pe, destino);
            if (pecaCapturada != null)
            {
                capturadas.Add(pecaCapturada);
            }
            return pecaCapturada;
        }

        public void desfazMovimento(Posicao origem, Posicao destino, Peca pecaCapturada)
        {
            Peca pe = tabu.RetirarPeca(destino);
            pe.DecrementoQteMovimento();
            if (pecaCapturada != null)
            {
                tabu.ColocarPeca(pe, destino);
                capturadas.Remove(pecaCapturada);
            }
            tabu.ColocarPeca(pe, origem);
        }

        public void realizaJogada(Posicao origem, Posicao destino, PartidaDeXadrez partida)
        {
            Peca pecaCapturada = executaMovimento(origem, destino);

            if (Tela.estaEmXeque(JogadorAtual, partida))
            {
                desfazMovimento(origem, destino, pecaCapturada);
                throw new TabuleiroException("Você não pode se colocar em cheque");
            }

            if (Tela.estaEmXeque(JogadorAtual, partida))
            {
                xeque = true;
            }
            else
            {
                xeque = false;
            }


            turno++;
            mudaJogador();
        }

        public void validarPosicaoOrigem(Posicao pos)
        {
            if (tabu.peca(pos) == null)
            {
                throw new TabuleiroException("Não existe peça na posição origem escolhida");
            }
            if (JogadorAtual != tabu.peca(pos).cor)
            {
                throw new TabuleiroException("A peça de origem escolhida não é sua");
            }
            if (!tabu.peca(pos).existeMovimentosPossiveis())
            {
                throw new TabuleiroException("Não há movimentos possiveis para a peça de origem");
            }
        }

        public void validarPosicaoDestino(Posicao origem, Posicao destino)
        {
            if (!tabu.peca(origem).podeMoverPara(destino))
            {
                throw new TabuleiroException("Posição de destino invalida!");
            }
        }

        private void mudaJogador()
        {
            if (JogadorAtual == Cor.Branca)
            {
                JogadorAtual = Cor.Preta;
            }
            else
            {
                JogadorAtual = Cor.Branca;
            }
        }

        public HashSet<Peca> pecasCapturadas(Cor cor)
        {
            HashSet<Peca> aux = new HashSet<Peca>();
            foreach (Peca x in capturadas)
            {
                if (x.cor == cor)
                    aux.Add(x);
            }
            return aux;
        }

        public HashSet<Peca> pecasEmJogo(Cor cor)
        {
            HashSet<Peca> aux = new HashSet<Peca>();
            foreach (Peca x in pecas)
            {
                if (x.cor == cor)
                    aux.Add(x);
            }
            aux.ExceptWith(pecasCapturadas(cor));
            return aux;
        }

        public void colorcarNovaPeca(char coluna, int linha, Peca peca)
        {
            tabu.ColocarPeca(peca, new PosicaoXadrez(coluna, linha).ToPosicao());
            pecas.Add(peca);
        }

        private void colocarPecas()
        {
            colorcarNovaPeca('c', 1, new Torre(tabu, Cor.Branca));
            colorcarNovaPeca('c', 2, new Torre(tabu, Cor.Branca));
            colorcarNovaPeca('d', 2, new Torre(tabu, Cor.Branca));
            colorcarNovaPeca('e', 2, new Torre(tabu, Cor.Branca));
            colorcarNovaPeca('e', 1, new Torre(tabu, Cor.Branca));
            colorcarNovaPeca('d', 1, new Rei(tabu, Cor.Branca));

            colorcarNovaPeca('c', 7, new Torre(tabu, Cor.Preta));
            colorcarNovaPeca('c', 8, new Torre(tabu, Cor.Preta));
            colorcarNovaPeca('d', 7, new Torre(tabu, Cor.Preta));
            colorcarNovaPeca('e', 7, new Torre(tabu, Cor.Preta));
            colorcarNovaPeca('e', 8, new Torre(tabu, Cor.Preta));
            colorcarNovaPeca('d', 8, new Rei(tabu, Cor.Preta));
        }

    }
}
