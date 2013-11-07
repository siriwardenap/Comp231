﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Web.Security;

namespace CulinaryDelight.Account
{
    public partial class RegisterCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            Roles.AddUserToRole((sender as CreateUserWizard).UserName, "Customers");
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);
            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/Account/CustomerDetails";
            }
            Response.Redirect(continueUrl);

            
        }
    }
}