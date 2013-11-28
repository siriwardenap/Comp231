using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;


namespace CulinaryDelight.Account
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Title = "Customer Details";
        }

        protected void CancelAccountButton_Click(object sender, EventArgs e)
        {            
            string userName = Membership.GetUser().ToString();           
            
            bool success = CancelAccount.Cancel(userName);
            if (success)
            {
                FormsAuthentication.SignOut();
                FormsAuthentication.RedirectToLoginPage();
            }
        }
    }
}