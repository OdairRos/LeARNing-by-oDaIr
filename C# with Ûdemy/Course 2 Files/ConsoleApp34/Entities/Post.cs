using System;
using System.Collections.Generic;
using ConsoleApp34.Entities;
using System.Text;

namespace ConsoleApp34.Entities

{
    class Post
    {
        public DateTime Momento { get; set; }
        public string Titulo { get; set; }
        public string Conteudo  { get; set; }

        public int Likes { get; set; }

        public List<Comentario> Comentarios { get; set; } = new List<Comentario>();

        public Post()
        {

        }

        public Post(DateTime momento, string titulo, string conteudo, int likes)
        {
            Momento = momento;
            Titulo = titulo;
            Conteudo = conteudo;
            Likes = likes;
        }

        public void AddComentario(Comentario texto)
        {
            Comentarios.Add(texto);
        }

        public void RemoveComentario(Comentario text)
        {
            Comentarios.Remove(text);
        }

        public override string ToString()
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.AppendLine(Titulo);
            stringBuilder.AppendLine($"{Likes} Likes - {Momento.ToString("dd/MM/yyyy HH:mm:ss")}");
            stringBuilder.AppendLine(Conteudo);
            stringBuilder.AppendLine($"Comentarios");

            foreach(Comentario comentario in Comentarios)
            {
                stringBuilder.AppendLine(comentario.Text);
            }

            return stringBuilder.ToString();

        }
    }
}
