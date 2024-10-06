// See https://aka.ms/new-console-template for more information

using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using trilha_net_banco_de_dados.Models;

string[] todasAsLinhas = File.ReadAllLines("text/textSql.txt");
//System.Console.WriteLine(todasAsLinhas[0]);

  string[] split = todasAsLinhas[1].Split("'"); // Com base em um delimitador são divididas e armazenadas em uma arry de string.
  string[] data = split[7].Split(" ");   // Dividindo a data e hora;
  foreach (string item in data)
  {
    System.Console.WriteLine(item);
  }
  System.Console.WriteLine("\n---------------saida todasAsLinhas-----------------------");
  System.Console.WriteLine(todasAsLinhas[0]);
  //System.Console.WriteLine($"{_split[0]}'{_split[1]}'{_split[2]}'{_split[3]}'{_split[4]}'{_split[5]}'{_split[6]}'{dataFormatada}'{_split[8]}");

  System.Console.WriteLine("\n---------------saida todasAsLinhasFormatada-----------------------");
//   foreach(string s in _split)
//   {
//     System.Console.WriteLine(s);
//   }

 string[] todasAsLinhasFormatada = new string[todasAsLinhas.Length];
 ConvertDate dataMoth = new ConvertDate();
 int lengthFormatacao = 10;//todasAsLinhas.Length; 


 for(int i=0; i < lengthFormatacao; i++)
 {
     string[] _split = todasAsLinhas[i].Split("'");
     string[] dataTime = _split[7].Split(" ");
     string dataTimeFormatada;
     int month = dataMoth.DateMonthStringForNumber(dataTime[0]); 
     if( int.Parse(dataTime[2]) >= 10)
      {
        dataTimeFormatada = $"{dataTime[2]}-{month}-{dataTime[1]} {dataTime[3].Replace("AM","")}";
      }else
        {
          dataTimeFormatada = $"{dataTime[3]}-{month}-{dataTime[2]} {dataTime[4].Replace("AM","")}";
        }
     todasAsLinhasFormatada[i] = $"{_split[0]}'{_split[1]}'{_split[2]}'{_split[3]}'{_split[4]}'{_split[5]}'{_split[6]}'{dataTimeFormatada}'{_split[8]}";
 }

System.Console.WriteLine("==============================Formatado==============================================");
 for(int i = 0; i < lengthFormatacao; i++)
 {
    System.Console.WriteLine(todasAsLinhasFormatada[i]);
 }
System.Console.WriteLine("===============================Normal=============================================");
 for(int i = 0; i < lengthFormatacao; i++)
 {
    System.Console.WriteLine(todasAsLinhas[i]);
 }

 //File.WriteAllLines("text/todasAsLinhasFormatada.txt",todasAsLinhasFormatada);



