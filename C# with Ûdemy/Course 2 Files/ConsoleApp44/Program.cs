using System;
using ConsoleApp44.Entities;
namespace ConsoleApp44
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Room Number: ");
            int number = int.Parse(Console.ReadLine());
            Console.Write("Check-in date (dd/MM/yyyy): ");
            DateTime checkIn = DateTime.Parse(Console.ReadLine());

            Console.Write("Check-out date (dd/MM/yyyy): ");
            DateTime checkOut = DateTime.Parse(Console.ReadLine());

            if (checkOut <= checkIn)
            {
                Console.WriteLine("Error in reservation: check-out date must be after check-in ");
            }
            else
            {
                Reserva reserva = new Reserva(checkIn, checkOut, number);
                Console.WriteLine($"Reservation: {reserva}");

                Console.WriteLine("Digite os dados para atualizar a reserva: ");
                Console.Write("Check-in date (dd/MM/yyyy): ");
                checkIn = DateTime.Parse(Console.ReadLine());

                Console.Write("Check-out date (dd/MM/yyyy): ");
                checkOut = DateTime.Parse(Console.ReadLine());

                string error = reserva.updateDates(checkIn, checkOut);

                if( error != null)
                {
                    Console.WriteLine("Error in reservation: " + error);
                }
                else
                {
                    Console.WriteLine($"Reservation: {reserva}");
                }
            }
        }
    }
}
