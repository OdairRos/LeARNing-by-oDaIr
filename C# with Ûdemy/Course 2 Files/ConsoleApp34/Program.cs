using System;
using ConsoleApp34.Entities;
namespace ConsoleApp34
{
    class Program
    {
        static void Main(string[] args)
        {
            Comentario comentario1 = new Comentario("If talk about money my conversation shiften");
            Comentario comentario2 = new Comentario("My dreams are big");

            Post post1 = new Post(
                    DateTime.Parse("21/06/2018 13:05:44"),
                    "El mejor titulo que tu ya viste",
                    "Estoy en brasil",
                    12);
            post1.AddComentario(comentario1);
            post1.AddComentario(comentario2);


            Comentario comentario3 = new Comentario("Lo mejor comentario que tu viste en su vida");
            Comentario comentario4 = new Comentario("La cosa mas bella que existiera en el mundo");

            Post post2 = new Post(
                DateTime.Parse("28/07/2018 22:13:19"),
                "The best of all",
                "Just confirm this, You are the greatest",
                5);

            post2.AddComentario(comentario3);
            post2.AddComentario(comentario4);

            Console.WriteLine(post1);
            Console.WriteLine(post2);

        }
    }
}
