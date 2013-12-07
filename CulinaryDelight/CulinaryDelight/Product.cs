using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CulinaryDelight
{
    public class Product
    {
        public int Id { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }

        public Product(int id)
        {
            this.Id = id;

            // Create a connection to the "pubs" SQL database located on the 
            // local computer.
            SqlConnection myConnection = new SqlConnection("Server=(local); User ID =onlineordersystem;" +
                   "Password=password; database=OnlineOrderSystem;");
            // Connect to the SQL database using a SQL SELECT query to get all 
            // the data from the "Authors" table.
            SqlDataAdapter myCommand = new SqlDataAdapter("SELECT " +
               " * FROM Product Where id=" + id, myConnection);
            // Create and fill a DataSet.
            DataSet ds = new DataSet();
            myCommand.Fill(ds);

            this.Id = Convert.ToInt16(ds.Tables[0].Rows[0]["itemid"].ToString());

            this.Price = Convert.ToDecimal(ds.Tables[0].Rows[0]["price"].ToString());

            this.Description = ds.Tables[0].Rows[0]["itemname"].ToString();
        }  
    }
}