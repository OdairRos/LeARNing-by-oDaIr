using System;
using ConsoleApp45.Entities;
using ConsoleApp45.Entities.Exceptions;
namespace ConsoleApp45
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.Write("Room Number: ");
                int number = int.Parse(Console.ReadLine());
                Console.Write("Check-in date (dd/MM/yyyy): ");
                DateTime checkIn = DateTime.Parse(Console.ReadLine());

                Console.Write("Check-out date (dd/MM/yyyy): ");
                DateTime checkOut = DateTime.Parse(Console.ReadLine());


                Reserva reserva = new Reserva(checkIn, checkOut, number);
                Console.WriteLine($"Reservation: {reserva}");

                Console.WriteLine("Digite os dados para atualizar a reserva: ");
                Console.Write("Check-in date (dd/MM/yyyy): ");
                checkIn = DateTime.Parse(Console.ReadLine());

                Console.Write("Check-out date (dd/MM/yyyy): ");
                checkOut = DateTime.Parse(Console.ReadLine());

                reserva.updateDates(checkIn, checkOut);

                Console.WriteLine($"Reservation: {reserva}");
            }
            catch (DomaiException e)
            {
                Console.WriteLine("Error in reservation: "+ e.Message);
            }
            catch(FormatException e)
            {
                Console.WriteLine("Format error: " + e.Message);
            }
            catch (Exception e)
            {
                Console.WriteLine("Unexpected error: " + e.Message);
            }

        }
    }
}
