using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CulinaryDelight
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                PopulateControls();
        }        

        private void PopulateControls()
        {
            // get the items in the shopping cart
            ShoppingCart cart = ShoppingCart.Instance;            
            // populate the list with the shopping cart contents
            grid.DataSource = cart.Items;
            grid.DataBind();
            grid.Visible = true;
            // display the total amount
            decimal amount = cart.GetSubTotal();
            totalAmountLabel.Text = String.Format("{0:c}", amount);

            
        }

        protected void placeOrderButton_Click(object sender, EventArgs e)
        {
            ShoppingCart cart = ShoppingCart.Instance;
            // Get the total amount
            decimal amount = cart.GetSubTotal();
            // Create the order and store the order ID
            string id = ProductsAndOrders.CreateOrder();
            ProductsAndOrders.CreateOrderDetails(id);
            // remove shopping cart items after place order
            cart.Items.Clear();

            string ordername = CulinaryDelightConfiguration.SiteName + " Order " + id;             
            // Go to PayPal Checkout
            string destination = Link.ToPayPalCheckout(ordername, amount);
              
            Response.Redirect(destination);
        }
    }
}