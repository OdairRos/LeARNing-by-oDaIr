using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp54.Entities
{
    class CarRental
    {
        public DateTime StartDate { get; set; }
        public DateTime FinishDate { get; set; }
        public Vehicle Veiculo { get; set; }
        public Invoice Invoice { get; set; }

        public CarRental(DateTime startDate, DateTime finishDate, Vehicle veiculo)
        {
            StartDate = startDate;
            FinishDate = finishDate;
            Veiculo = veiculo;
            this.Invoice = null;
        }
    }
}
