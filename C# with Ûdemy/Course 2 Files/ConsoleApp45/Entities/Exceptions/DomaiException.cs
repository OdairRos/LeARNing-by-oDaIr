using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp45.Entities.Exceptions
{
    class DomaiException : ApplicationException
    {
        public DomaiException(string message) : base(message)
        {

        }
    }
}
