using System;


namespace ConsoleApp33.Entities
{
    class HoursContract
    {
        public DateTime Data { get; set; }
        public double ValorPorHora { get; set; }
        public int Horas { get; set; }

        public HoursContract()
        {

        }

        public HoursContract(DateTime data, double valorPorHora, int horas)
        {
            Data = data;
            ValorPorHora = valorPorHora;
            Horas = horas;
        }

        public double ValorTotal()
        {
            return (Horas * ValorPorHora);
        }
    }
}
