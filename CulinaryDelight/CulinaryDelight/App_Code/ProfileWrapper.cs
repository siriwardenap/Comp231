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
        }
    }
