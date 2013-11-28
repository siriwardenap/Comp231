using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Windows.Forms;

namespace CulinaryDelight.Account
{
    public class CancelAccount
    {
       
        public static bool Cancel(string username)
        {
            string message = "Are you sure to cancel your account?";
            string caption = "Cancel Account Warning!";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result;
            bool success = false;

            // Displays the MessageBox.

            result = MessageBox.Show(message, caption, buttons, MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                try
                {
                   success = Membership.DeleteUser(username, true);                    
                }
                catch
                {
                    MessageBox.Show("Not an existing account!");
                }
            }

            return success;
            
        }
        
    }
}