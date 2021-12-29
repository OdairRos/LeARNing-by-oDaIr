using System;

public class Class1
{
	public Class1()
	{
	}
    //Print definition
    static void Print() { Console.WriteLine(""); }
    static void Print(string value) { Console.WriteLine(value); }
    static void Print<T>(string message, T value) { Console.WriteLine($"{message}{value}"); }
    static void Print(string value1, int value2) { Console.WriteLine($"{value1}{value2}"); }
    static void Print(string value1, double value2) { Console.WriteLine($"{value1}{value2}"); }
    static void Print<T>(T value, string message) { Console.WriteLine($"{value}{message}"); }
    static void Print<T>(T value) { Console.WriteLine(value); }
    static void Print(int value) { Console.WriteLine(value); }
    static void Print(double value) { Console.WriteLine(value); }
    static void Print(bool value) { Console.WriteLine(value); }
    static void Print(char value) { Console.WriteLine(value); }


    // Input defininition
    static string Input(string message) { Console.Write(message); return Console.ReadLine(); }
}
