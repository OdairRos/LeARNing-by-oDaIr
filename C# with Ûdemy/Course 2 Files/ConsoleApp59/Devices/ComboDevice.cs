using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp59.Devices
{
    class ComboDevice : Device, IScanner, IPrinter
    {
        public void Print(string document)
        {
            Console.WriteLine($"Combo Device print {document}");
        }

        public override void ProcessDoc(string document)
        {
            Console.WriteLine($"Combo Device Procesing {document}");
        }

        public string Scan()
        {
            return $"Combo Device Result ";
        }
    }
}
