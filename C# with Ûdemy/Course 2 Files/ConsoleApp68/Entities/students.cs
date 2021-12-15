using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp68.Entities
{
    class students
    {
        public int codigo { get; set; }

        public students(int codigo)
        {
            this.codigo = codigo;
        }

        public override int GetHashCode()
        {
            return codigo.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            if (obj is not students)
                return false;

            students other = obj as students;

            return codigo.Equals(other.codigo);
        }
    }
}
