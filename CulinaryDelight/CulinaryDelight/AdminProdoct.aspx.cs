using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CulinaryDelight
{
    public partial class AdminProdoct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {                
                // Load the products grid
                BindGrid();
            }

        }

        private void BindGrid()
        {           
            // Get a DataTable object containing the products
            ProductGrid.DataSource = ProductsAndOrders.GetAllProducts();
            // Needed to bind the data bound controls to the data source
            ProductGrid.DataBind();
        }

        //public void grid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    // Retrieve updated data
        //    try
        //    {                
        //        int id = Convert.ToInt32(ProductGrid.DataKeys[e.RowIndex].Value.ToString());
        //        int itemId = Convert.ToInt32(ProductGrid.Rows[e.RowIndex].Cells[0].Text);
        //        string name = ProductGrid.Rows[e.RowIndex].Cells[1].Text;
        //        decimal price = Convert.ToDecimal(ProductGrid.Rows[e.RowIndex].Cells[2].Text);
        //        string cat = ProductGrid.Rows[e.RowIndex].Cells[3].Text;
        //        // Execute the update command
        //        bool success = ProductsAndOrders.UpdateProduct(id, itemId, name, price, cat);
        //        // Cancel edit mode
        //        ProductGrid.EditIndex = -1;
        //        // Display status message
        //        statusLabel.Text = success ? "Product update successful" : "Product update failed";
        //    }
        //    catch
        //    {
        //        // Display error
        //        statusLabel.Text = "Product update failed";
        //    }
        //    // Reload grid
        //    BindGrid();
        //}

        public void grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                
                int id = Convert.ToInt32(ProductGrid.DataKeys[e.RowIndex].Value.ToString());
                // Execute the update command
                bool success = ProductsAndOrders.DeleteProduct(id);
                
                // Display status message
                statusLabel.Text = success ? "Product delete successful" : "Product delete failed";
            }
            catch
            {
                // Display error
                statusLabel.Text = "Product delete failed";
            }
            // Reload grid
            BindGrid();
        }

       

        protected void createProduct_Click(object sender, EventArgs e)
        {
            int itemId = Convert.ToInt32(newId.Text);
            string name = newName.Text;
            decimal price = Convert.ToDecimal(newPrice.Text);
            string category = DropDownList1.SelectedItem.Value;
            // Execute the insert command
            bool success = ProductsAndOrders.CreateProduct(itemId, name, price, category);
            // Display status message
            statusLabel.Text = success ? "Insert successful" : "Insert failed";
            // Reload the grid
            BindGrid();

            newId.Text = "";
            newName.Text = "";
            newPrice.Text = "";
        }
    }
}