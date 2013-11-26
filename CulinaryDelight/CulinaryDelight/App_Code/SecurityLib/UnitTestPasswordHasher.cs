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
             string password1 = "Abc123";
             string password2 = "Abc123";

             string passwordHash1 = PasswordHasher.Hash(password1);
             string passwordHash2 = PasswordHasher.Hash(password2);

             Console.WriteLine("Password 1: " + password1);
             Console.WriteLine("Password 2: " + password2);
             Console.WriteLine("Hash password 1: " + passwordHash1);
             Console.WriteLine("Hash password 2: " + passwordHash2);

             if (passwordHash1 == "Abc123" || passwordHash1.Length < 1)
             {
                 Console.WriteLine("Password Hasher test false!");
             }
             else if (passwordHash1 == passwordHash2)
             {
                 Console.WriteLine("Passwords match! Password Hasher test pass!");
             }
             else
             {
                 Console.WriteLine("Passwords not match! Password Hasher test false!");
             }
    
        }
    }
}