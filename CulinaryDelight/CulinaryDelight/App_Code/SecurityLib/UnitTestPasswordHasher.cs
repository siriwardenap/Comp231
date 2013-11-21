using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SecurityLib
{
    public static class UnitTestPasswordHasher
    {
         static void Main(string[] arge)
         {
             string resultPassword = PasswordHasher.Hash("Abc123");
             if (resultPassword == "Abc123" || resultPassword.Length < 1)
             {
                 Console.WriteLine("Password Hasher test false!");
             }
             else
             {
                 Console.WriteLine("Password Hasher test pass!");
             }
    
        }
    }
}