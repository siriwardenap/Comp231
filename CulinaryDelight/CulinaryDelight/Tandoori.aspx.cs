using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CulinaryDelight
{
    public partial class Tandoori : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Create a connection to the "pubs" SQL database located on the 
                // local computer.
                SqlConnection myConnection = new SqlConnection(" Server=(local); User ID =onlineordersystem;" +
                   "Password=password; database=OnlineOrderSystem;");
                // Connect to the SQL database using a SQL SELECT query to get all 

                // the data from the "Authors" table.
                SqlDataAdapter myCommand = new SqlDataAdapter("SELECT " +
                         " * FROM Product Where productcat = 'Tandoori'", myConnection);
                // Create and fill a DataSet.
                DataSet ds = new DataSet();
                myCommand.Fill(ds);
                // Bind MyDataGrid to the DataSet. MyDataGrid is the ID for the 
                // DataGrid control in the HTML section.
                DataView source = new DataView(ds.Tables[0]);
                GridView1.DataSource = source;
                GridView1.DataBind();
            }
        }

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "AddtoCart") return;
            int id = Convert.ToInt32(e.CommandArgument);
            ShoppingCart.Instance.AddItem(id);
            Response.Redirect("ViewCart.aspx");
        }
    }
}