using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class UnitTestProfileWrapper
    {
        static void Main(string[] arge)
        {
            ProfileWrapper warpper = new ProfileWrapper();
            warpper.FirstName = "testFName";
            warpper.LastName = "testLName";
            warpper.StreetNo = "10";
            warpper.StreetName = "testStreetName";
            warpper.City = "testCity";
            warpper.Province = "Ontario";
            warpper.PostalCode = "m1t3g8";
            warpper.Phone = "416-999-9999";
            warpper.Email = "test@test.com";

            //unit testing code for the story of "Customer update personal information"
            warpper.UpdateProfile();

            if (warpper.FirstName == "testFName" && warpper.LastName == "testLName"
                && warpper.StreetNo == "10" && warpper.StreetName == "testStreetName"
                && warpper.City == "testCity" && warpper.Province == "Ontario"
                && warpper.PostalCode == "m1t3g8" && warpper.Phone == "416-999-9999"
                && warpper.Email == "test@test.com")
            {
                Console.WriteLine("Profile Wrapper UpdateProfile Test Pass!");
            }
            else 
            {
                Console.WriteLine("Profile Wrapper UpdateProfile Test False!");
            }

        }
    }
