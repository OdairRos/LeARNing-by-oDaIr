using System;
using System.IO;
using System.Collections.Generic;
using System.Globalization;
namespace ConsoleApp53
{
    class Program
    {
        static void Main(string[] args)
        {
            var FilePath = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp53\Dados.csv";
            var Path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp53";
            try
            {
                //Directory.CreateDirectory(Path + "\\Saida");
               
                //File.Create(Path + @"\Saida\saida.csv");
                Path += @"\Saida\saida.csv";
            }
            catch (IOException e )
            {
                Console.WriteLine($"Diretório ja existe\n"+ e.Message);
            }
            finally
            {
                
                string[] Entrada = File.ReadAllLines(FilePath);
                StreamWriter sw = new StreamWriter(Path);
                foreach(string linha in Entrada)
                {
                 
                    string[] li = linha.Split(",");
                    double valor1 = double.Parse(li[1], CultureInfo.InvariantCulture);
                    double valor2 = double.Parse(li[2], CultureInfo.InvariantCulture);

                    double total = valor1 * valor2;
                    sw.WriteLine($"{li[0]},{total:C}");      
                }
                sw.Close();

                string[] Saida = File.ReadAllLines(Path);
                foreach (string linha in Saida)
                {
                    Console.WriteLine(linha);
                }
        
            
            }
        }
    }
}
