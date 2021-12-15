using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp67.Entities
{
    class LogRecord
    {

        public string Nome { get; set; }
        public DateTime Instant { get; set; }

        public LogRecord(string nome, DateTime instant)
        {
            Nome = nome;
            Instant = instant;
        }

        public override int GetHashCode()
        {
            return Nome.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            if (obj is not LogRecord)
                return false;

            LogRecord other = obj as LogRecord;
            return Nome.Equals(other.Nome);
        }
    }
}
