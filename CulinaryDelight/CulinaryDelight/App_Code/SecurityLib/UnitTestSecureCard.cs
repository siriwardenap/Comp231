using System;
using System.Collections.Generic;
using System.Text;

namespace SecurityLib
{
    public static class UnitTestSecureCard
    {
        static void Main(string[] arge)
        {
            string cardHolder = "John Doe";
            string cardNumber = "123456789";
            string issueDate = "08/08/2013";
            string expiryDate = "10/10/2014";
            string issueNumber = "778";
            string cardType = "VISA";

            SecureCard encryptedCard = new SecureCard(cardHolder, cardNumber, issueDate, expiryDate, issueNumber, cardType);
            Console.WriteLine("Secure Card before encrypted: \n{0}, {1}, {2}, {3}, {4}, {5}", cardHolder,
                cardNumber, issueDate, expiryDate, issueNumber, cardType);

            string encryptedData = encryptedCard.EncryptedData;
            Console.WriteLine("Secure Card after encryted: " + encryptedData);

            SecureCard decryptedCard = new SecureCard(encryptedData);
            Console.WriteLine("Secure Card after decrypted:\n{0}, {1}, {2}, {3}, {4}, {5}", decryptedCard.CardHolder, decryptedCard.CardNumber,
                decryptedCard.IssueDate, decryptedCard.ExpiryDate, decryptedCard.IssueNumber, decryptedCard.CardType);

            if (decryptedCard.CardHolder == cardHolder && decryptedCard.CardNumber == cardNumber &&
                decryptedCard.IssueDate == issueDate && decryptedCard.ExpiryDate == expiryDate &&
                decryptedCard.IssueNumber == issueNumber && decryptedCard.CardType == cardType)
            {
                Console.WriteLine("Secure Card test pass!");
            }
            else
            {
                Console.WriteLine("Secure Card test false!");
            }


        }
    }
}