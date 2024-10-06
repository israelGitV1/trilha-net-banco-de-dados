using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace trilha_net_banco_de_dados.Models
{
    public class ConvertDate
    {
           
        public int DateMonthStringForNumber (String month){

            string monthUpper = month.ToUpper();

            switch(monthUpper)
            {
                case "JAN" : return 1 ; break;
                case "FEB" : return 2 ; break;
                case "MAR" : return 3 ; break;
                case "APR" : return 4 ; break;
                case "MAY" : return 5 ; break;
                case "JUN" : return 6 ; break;
                case "JUL" : return 7 ; break;
                case "AUG" : return 8 ; break;
                case "SEP" : return 9 ; break;
                case "OCT" : return 10 ; break;
                case "NOV" : return 11 ; break;
                case "DEC" : return 12 ; break;
                default : return 0 ;
            }
        }
    }
}