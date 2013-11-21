using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class UnitTestProfileDataSource
    {
        static void Main(string[] arge)
        {
            ProfileWrapper warpper = new ProfileWrapper();
            warpper.FirstName = "testFName2";
            warpper.LastName = "testLName2";
            warpper.StreetNo = "10";
            warpper.StreetName = "testStreetName";
            warpper.City = "testCity";
            warpper.Province = "Ontario";
            warpper.PostalCode = "m1t3g8";
            warpper.Phone = "416-999-9999";

            ProfileDataSource source = new ProfileDataSource();
            source.UpdateData(warpper);

            List<ProfileWrapper> list = source.GetData();
            if (list.Count >= 1)
            {
                Console.WriteLine("Profile Data Source GetData method test pass!");

                foreach (ProfileWrapper profileWrapper in list)
                {
                    if (profileWrapper.FirstName == "testFName2" && profileWrapper.LastName == "testLName2"
                    && profileWrapper.StreetNo == "10" && profileWrapper.StreetName == "testStreetName"
                    && profileWrapper.City == "testCity" && profileWrapper.Province == "Ontario"
                    && profileWrapper.PostalCode == "m1t3g8" && profileWrapper.Phone == "416-999-9999")
                    {
                        Console.WriteLine("Profile Data Source UpdateData Test Pass!");
                    }
                    else
                    {
                        Console.WriteLine("Profile Data Source UpdateData Test False!");
                    }
                }

            }
            else
            {
                Console.WriteLine("Profile Data Source GetData method test false! \n Profile Data Source UpdateData Test False!");
            }

            
        }
    }
