using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using CulinaryDelight;

namespace CulinaryDelight
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ASP.NET keeps track of the state of all server controls
            // (like the GridView). Because of this, we don't need to supply it with
            // the data every time the page loads. (No more re-checking checkboxes
            // that were checked or re-selecting the right item in the drop-down when
            // the page is submitted. It's all done for you!)
            if (!IsPostBack)
                BindData();
        }

        protected void BindData()
        {
            // Let’s give the data to the GridView and let it work!
            // The GridView will take our cart items one by one and use the properties
            // that we declared as column names (DataFields)
            ShoppingCart cart = ShoppingCart.Instance;
            gvShoppingCart.DataSource = cart.Items;
            gvShoppingCart.DataBind();
        }

        protected void gvShoppingCart_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // If we are binding the footer row, let's add in our total

            if (e.Row.RowType == DataControlRowType.Footer)
            {
                ShoppingCart cart = ShoppingCart.Instance;
                e.Row.Cells[3].Text = "Total: " + cart.GetSubTotal().ToString("C");
            }
        }

        /**
        * This is the method that responds to the Remove button's click event
        */
        protected void gvShoppingCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                ShoppingCart cart = ShoppingCart.Instance;
                cart.RemoveItem(productId);
            }

            // We now have to re-setup the data so that the GridView doesn't keep
            // displaying the old data
            BindData();
        }

        protected void btnUpdateCart_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvShoppingCart.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    // We'll use a try catch block in case something other than a number is typed in
                    // If so, we'll just ignore it.
                    try
                    {
                        // Get the productId from the GridView's datakeys
                        int productId = Convert.ToInt32(gvShoppingCart.DataKeys[row.RowIndex].Value);
                        // Find the quantity TextBox and retrieve the value
                        int quantity = int.Parse(((TextBox)row.Cells[1].FindControl("txtQuantity")).Text);
                        ShoppingCart cart = ShoppingCart.Instance;
                        cart.SetItemQuantity(productId, quantity);
                    }
                    catch (FormatException) { }
                }
            }

            BindData();
        }

        protected void checkoutButton_Click(object sender, EventArgs e)
        {
            string user = HttpContext.Current.User.Identity.Name;
            if (user == null || user == "" || user == string.Empty)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
            else
            {
                // Redirect to the checkout page
                Response.Redirect("~/Checkout.aspx");
            }
            
        }

    }
}