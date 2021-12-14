using System;
using ConsoleApp56.Services;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp56.Entities
{
    class Contract : IInstallments
    {
        public int number { get; set; }
        public DateTime date { get; set; }
        public double totalValue { get; set; }
        public Installment prestacao { get; set; }
        public int qtParcelas { get; set; }

        public Contract(int number, DateTime date, double ValorPestacao, int qtParcelas)
        {
            this.number = number;
            this.date = date;
            this.totalValue = ValorPestacao;
            this.qtParcelas = qtParcelas;
            this.prestacao = new Installment(date, totalValue);
        }

        public void CalculaPrestacao()
        {
            Console.WriteLine("Intallments");

            double valor;
            for (int i = 1; i <= this.qtParcelas; i++)
            {
                 valor = this.totalValue / this.qtParcelas;

                valor = valor + ((valor * 1) / 100) * i;
                valor = valor + (valor * 2) / 100;

                Console.WriteLine($"{prestacao.Date.AddMonths(i).ToString("dd/MM/yyyy")} - {valor.ToString("F2")}");
            }
        }
    }
}
