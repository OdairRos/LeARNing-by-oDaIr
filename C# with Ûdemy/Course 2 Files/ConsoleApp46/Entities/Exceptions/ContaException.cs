using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp46.Entities.Exceptions
{
    class ContaException : ApplicationException
    {
        public ContaException(string message) : base(message)
        {

        }
    }
}
