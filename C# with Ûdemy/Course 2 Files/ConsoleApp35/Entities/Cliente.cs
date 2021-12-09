using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp35.Entities.Enums;

namespace ConsoleApp35.Entities
{
    class Cliente
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public DateTime BirthDay { get; set; }

        public OrderStatus Status { get; set; }
        public ORDEM ordem { get; set; }
        public Cliente()
        {
        }
        public Cliente(string name, string email, DateTime birthDay, OrderStatus status)
        {
            Name = name;
            Email = email;
            BirthDay = birthDay;
            Status = status ;
        }
    }


}
