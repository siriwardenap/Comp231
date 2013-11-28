using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace CulinaryDelight.Account
{
    public class UnitTestCancelAccount
    {
        public static void Main(string[] arge)
        {
            string userName = "testUser1";
            string notAUser = "not a user";
            Membership.CreateUser(userName, "!testPassword");
            

            if (CancelAccount.Cancel(notAUser))
            {
                Console.WriteLine("Unit test for cancel a not existing account false!");                
            }
            else
            {
                //you also should see a message box showing "Not an existing account!"
                Console.WriteLine("Unit test for cancel a not existing account pass!");
            }
            

            //Please click "No" when a message box comes up to test
            if (CancelAccount.Cancel(userName))
            {
                Console.WriteLine("Unit test for not to cancel a real user false!");
            }
            else
            {
                Console.WriteLine("Unit test for not to cancel a real user pass!");
            }

            //Please click "Yes" when a message box comes up to test
            if (CancelAccount.Cancel(userName))
            {
                Console.WriteLine("Unit test for cancelling a real user pass!");
            }
            else
            {
                Console.WriteLine("Unit test for cancelling a real user false!");
            }
             
            
        }
    }
}