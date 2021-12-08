using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp11
{
    class Funcionario
    {
        public string Nome;
        public double SalarioBruto;
        public double Imposto;

        public double SalarioLiquido()
        {
            return (SalarioBruto - Imposto);
        }

        public void AumentarSalario(double Porcentagem)
        {
            SalarioBruto += (SalarioBruto * Porcentagem) / 100;
        }
    }
}
