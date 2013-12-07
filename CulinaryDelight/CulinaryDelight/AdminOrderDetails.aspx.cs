using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CulinaryDelight
{
    public partial class AdminOrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // check if we must display order details       
            if (!Page.IsPostBack && Request.QueryString["OrderID"] != null)
            {
                string orderId = Request.QueryString["OrderID"];
                // fill constituent controls with data
                PopulateControls(orderId);
                // set edit mode
                SetEditMode(false);
            }
        }

        // populate the form with data
        private void PopulateControls(string orderId)
        {
            // obtain order info
            OrderInfo orderInfo = ProductsAndOrders.GetInfo(orderId);
            // populate labels and text boxes with order info
            orderIdLabel.Text = "Displaying Order #" + orderId;
            totalAmountLabel.Text = String.Format("{0:c}", orderInfo.TotalAmount);
            dateCreatedTextBox.Text = orderInfo.DateCreated;
            dateShippedTextBox.Text = orderInfo.DateShipped;
            StatusList.SelectedItem.Value = orderInfo.OrderStatus;            
            commentsTextBox.Text = orderInfo.Comments;
            customerNameTextBox.Text = orderInfo.CustomerName;            
            // by default the Edit button is enabled, and the
            // Update and Cancel buttons are disabled
            editButton.Enabled = true;
            updateButton.Enabled = false;
            cancelButton.Enabled = false;
            
            // fill the data grid with order details
            grid.DataSource = ProductsAndOrders.GetDetails(orderId);
            grid.DataBind();
        }

        // enable or disable edit mode
        private void SetEditMode(bool enable)
        {
            dateCreatedTextBox.Enabled = enable;
            dateShippedTextBox.Enabled = enable;
            StatusList.Enabled = enable;            
            commentsTextBox.Enabled = enable;
            customerNameTextBox.Enabled = enable;            
            editButton.Enabled = !enable;
            updateButton.Enabled = enable;
            cancelButton.Enabled = enable;
        }

        // enter edit mode
        protected void editButton_Click(object sender, EventArgs e)
        {
            string orderId = Request.QueryString["OrderID"];
            PopulateControls(orderId);
            SetEditMode(true);
        }

        // cancel edit mode
        protected void cancelButton_Click(object sender, EventArgs e)
        {
            string orderId = Request.QueryString["OrderID"];
            PopulateControls(orderId);
            SetEditMode(false);
        }

        // update order information
        protected void updateButton_Click(object sender, EventArgs e)
        {
            // Store the new order details in an OrderInfo object
            OrderInfo orderInfo = new OrderInfo();
            string orderId = Request.QueryString["OrderID"];
            orderInfo.OrderID = Int32.Parse(orderId);
            orderInfo.DateCreated = dateCreatedTextBox.Text;
            orderInfo.DateShipped = dateShippedTextBox.Text;
            orderInfo.OrderStatus = StatusList.SelectedItem.Value;            
            orderInfo.Comments = commentsTextBox.Text;                       
            // try to update the order 
            try
            {
                // Update the order
                ProductsAndOrders.Update(orderInfo);
            }
            catch (Exception ex)
            {
                // In case of an error, we simply ignore it
            }
            // Exit edit mode 
            SetEditMode(false);
            // Update the form
            PopulateControls(orderId);
        }
    }
}