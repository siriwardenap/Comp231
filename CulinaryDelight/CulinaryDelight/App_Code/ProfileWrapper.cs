using System;
using SecurityLib;
using System.Web.Security;
using System.Web;


    /// <summary>
    /// Summary description for ProfileWrapper
    /// </summary>
    public class ProfileWrapper
    {
        private string firstName;

        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }
        private string lastName;

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }
        private string streetNo;

        public string StreetNo
        {
            get { return streetNo; }
            set { streetNo = value; }
        }
        private string streetName;

        public string StreetName
        {
            get { return streetName; }
            set { streetName = value; }
        }
        private string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }
        private string province;

        public string Province
        {
            get { return province; }
            set { province = value; }
        }
        private string postalCode;

        public string PostalCode
        {
            get { return postalCode; }
            set { postalCode = value; }
        }
        private string phone;

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }

        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        //begin block1 of code adding in the story of user can save his credit card info in account        
        private string creditCard;

        public string CreditCard
        {
            get { return creditCard; }
            set { creditCard = value; }
        }
        private string creditCardHolder;

        public string CreditCardHolder
        {
            get { return creditCardHolder; }
            set { creditCardHolder = value; }
        }
        private string creditCardNumber;

        public string CreditCardNumber
        {
            get { return creditCardNumber; }
            set { creditCardNumber = value; }
        }
        private string creditCardIssueDate;

        public string CreditCardIssueDate
        {
            get { return creditCardIssueDate; }
            set { creditCardIssueDate = value; }
        }
        private string creditCardIssueNumber;

        public string CreditCardIssueNumber
        {
            get { return creditCardIssueNumber; }
            set { creditCardIssueNumber = value; }
        }
        private string creditCardExpiryDate;

        public string CreditCardExpiryDate
        {
            get { return creditCardExpiryDate; }
            set { creditCardExpiryDate = value; }
        }
        private string creditCardType;

        public string CreditCardType
        {
            get { return creditCardType; }
            set { creditCardType = value; }
        }
        //end block1 of code for story of user can save his credit card info in account

        public ProfileWrapper()
        {
            ProfileCommon profile = HttpContext.Current.Profile as ProfileCommon;
            firstName = profile.FirstName;
            lastName = profile.LastName;
            streetNo = profile.StreetNo;
            streetName = profile.StreetName;
            city = profile.City;
            province = (profile.Province == null || profile.Province == "" ? "Ontario" : profile.Province);
            postalCode = profile.PostalCode;
            phone = profile.Phone;
            email = Membership.GetUser(profile.UserName).Email;

            //begin block2 of code adding in the story of user can save his credit card info in account
            try
            {
                SecureCard secureCard = new SecureCard(profile.CreditCard);
                creditCard = secureCard.CardNumberX;
                creditCardHolder = secureCard.CardHolder;
                creditCardNumber = secureCard.CardNumber;
                creditCardIssueDate = secureCard.IssueDate;
                creditCardIssueNumber = secureCard.IssueNumber;
                creditCardExpiryDate = secureCard.ExpiryDate;
                creditCardType = secureCard.CardType;
            }
            catch
            {
                creditCard = "Not entered.";
            }
            //end block2 of code for story of user can save his credit card info in account
        }

        public void UpdateProfile()
        {
            ProfileCommon profile = HttpContext.Current.Profile as ProfileCommon;
            profile.FirstName = firstName;
            profile.LastName = lastName;
            profile.StreetNo = streetNo;
            profile.StreetName = streetName;
            profile.City = city;
            profile.Province = province;
            profile.PostalCode = postalCode;
            profile.Phone = phone;
            MembershipUser user = Membership.GetUser(profile.UserName);
            user.Email = email;
            Membership.UpdateUser(user);

            //begin block3 of code adding in the story of user can save his credit card info in account
            try
            {
                SecureCard secureCard = new SecureCard(creditCardHolder, creditCardNumber,
                    creditCardIssueDate, creditCardExpiryDate, creditCardIssueNumber, creditCardType);
                profile.CreditCard = secureCard.EncryptedData;
               
            }
            catch
            {
                creditCard = "";
            }
            //end block3 of code for story of user can save his credit card info in account
        }
    }
