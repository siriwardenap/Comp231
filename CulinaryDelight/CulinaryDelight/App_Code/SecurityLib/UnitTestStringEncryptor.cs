using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SecurityLib
{
    public static class UnitTestStringEncryptor
    {
        static void Main(string[] arge)
        {
            string stringToEncrypt = "secret data";            
            string encryptedString = StringEncryptor.Encrypt(stringToEncrypt);
            string stringToDecrypt = encryptedString;
            string decryptedString = StringEncryptor.Decrypt(stringToDecrypt);

            Console.WriteLine("String to encrypt: " + stringToEncrypt);
            Console.WriteLine("String after encrypted: " + encryptedString);
            Console.WriteLine("String to decrypt: " + stringToDecrypt);
            Console.WriteLine("String after decrypted: " + decryptedString);

            if (encryptedString == stringToEncrypt || encryptedString == "")
            {
                Console.WriteLine("String can not be encrypt! False!");
            }
            else if (decryptedString == stringToDecrypt || decryptedString == "")
            {
                Console.WriteLine("Encrypted string can not be decrypted! False");
            }
            else if (stringToEncrypt == decryptedString)
            {
                Console.WriteLine("Encrypting and decrypting tests pass!");
            }
        }
    }
}