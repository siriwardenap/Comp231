using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Web.Security;

public partial class Account_RegisterCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        ViewState["__AntiXsrfUserName"] = Context.User.Identity.Name ?? String.Empty;
        Roles.AddUserToRole((sender as CreateUserWizard).UserName, "Customers");
    }
}