using System;
using System.Collections.Generic;
using System.Text;


/// <summary>
/// Summary description for StringEncryptorException
/// </summary>
/// 
namespace SecurityLib
{
    public class StringEncryptorException : Exception
    {
        public StringEncryptorException(string message):base(message)
        {
           
        }
    }
}