using ConsoleApp33.Entities.Enums;
using System.Collections.Generic;
namespace ConsoleApp33.Entities
{
    class Worker
    {
        public string Nome { get; set; }
        public WorkerLevel Nivel { get; set; }
        public double SalarioBase { get; set; }
        public Department Departamento { get; set; }

        public List<HoursContract> Contratos { get; set; } = new List<HoursContract>();

        public Worker()
        {

        }

        public Worker(string nome, WorkerLevel nivel, double salarioBase, Department departamento)
        {
            Nome = nome;
            Nivel = nivel;
            SalarioBase = salarioBase;
            Departamento = departamento;
        }

        public void AdicionarContrato(HoursContract contrato)
        {
            Contratos.Add(contrato);
        }

        public void RemoverContrato(HoursContract contrato)
        {
            Contratos.Remove(contrato);
        }

        public double Income(int Ano, int Mes)
        {
            double sum = SalarioBase;
            foreach(HoursContract contrato in Contratos)
            {
                if (contrato.Data.Year == Ano && contrato.Data.Month == Mes)
                {
                    sum += contrato.ValorTotal();

                }
            }

            return sum;
        }
    }
}
