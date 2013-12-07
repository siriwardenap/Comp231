using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Web.Security;

namespace CulinaryDelight
{
    public struct OrderInfo
    {
        public int OrderID;
        public decimal TotalAmount;
        public string DateCreated;
        public string DateShipped;
        public string OrderStatus;
        public string Comments;
        public string CustomerName;
        
    }

    public static class ProductsAndOrders
    {
        public static string CreateOrder()
        {
            string orderId;
            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "CreateOrder";
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@CustomerId";
            param.Value = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            param.DbType = DbType.Guid;
            param.Size = 16;
            comm.Parameters.Add(param);
            // return the result table
            orderId = GenericDataAccess.ExecuteScalar(comm).ToString();

            return orderId;
        }

        public static void CreateOrderDetails(string orderId)
        {
            int id = Convert.ToInt32(orderId);
            ShoppingCart cart = ShoppingCart.Instance;
            // Get the total amount
            decimal amount = cart.GetSubTotal();

            List<CartItem> Items = cart.Items;

            foreach (CartItem item in Items)
            {
                // get a configured DbCommand object
                DbCommand comm = GenericDataAccess.CreateCommand();
                // set the stored procedure name
                comm.CommandText = "CreateOrderDetails";
                // create a new parameter
                DbParameter param = comm.CreateParameter();  
                param.ParameterName = "@OrderID";
                param.Value = id;
                param.DbType = DbType.Int32;               
                comm.Parameters.Add(param);
                // create a new parameter 
                param = comm.CreateParameter();
                param.ParameterName = "@ProductID";
                param.Value = item.ProductId;
                param.DbType = DbType.Int32;               
                comm.Parameters.Add(param);
                // create a new parameter
                param = comm.CreateParameter();
                param.ParameterName = "@OrderQuantity";
                param.Value = item.Quantity;
                param.DbType = DbType.Int32;                
                comm.Parameters.Add(param);

                GenericDataAccess.ExecuteNonQuery(comm);
            }
        }

        public static DataTable GetAllProducts()
        {
            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "GetAllProducts";
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            return table;
        }

        public static bool UpdateProduct(int id, int itemId, string name, decimal price, string cat)
        {
            bool success = false;
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "UpdateProduct";
            
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@Id";
            param.Value = id;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);
            // create a new parameter 
            param = comm.CreateParameter();
            param.ParameterName = "@ItemId";
            param.Value = itemId;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@Name";
            param.Value = name;
            param.DbType = DbType.String;
            comm.Parameters.Add(param);
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@Price";
            param.Value = price;
            param.DbType = DbType.Currency;
            comm.Parameters.Add(param);
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@Cat";
            param.Value = cat;
            param.DbType = DbType.String;
            comm.Parameters.Add(param);

            int result = GenericDataAccess.ExecuteNonQuery(comm);
            if (result == 1)
                success = true;

            return success;
        }

        public static bool DeleteProduct(int id)
        {
            bool success = false;
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "DeleteProduct";

            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@Id";
            param.Value = id;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);

            int result = GenericDataAccess.ExecuteNonQuery(comm);
            if (result == 1)
                success = true;

            return success;
        }

        public static bool CreateProduct(int itemId, string name, decimal price, string category)
        {
            bool success = false;

            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "CreateProduct";
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@ItemId";
            param.Value = itemId;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);
            // create a new parameter 
            param = comm.CreateParameter();
            param.ParameterName = "@Name";
            param.Value = name;
            param.DbType = DbType.String;
            comm.Parameters.Add(param);
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@Price";
            param.Value = price;
            param.DbType = DbType.Currency;
            comm.Parameters.Add(param);
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@Cat";
            param.Value = category;
            param.DbType = DbType.String;
            comm.Parameters.Add(param);

            int result = GenericDataAccess.ExecuteNonQuery(comm);

            if (result == 1)
                success = true;

            return success;

        }

        // Retrieve the recent orders
        public static DataTable GetByRecent(int count)
        {
            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "OrdersGetByRecent";
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@Count";
            param.Value = count;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);
            // return the result table
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            return table;
        }

        // Retrieve orders that have been placed in a specified period of time
        public static DataTable GetByDate(string startDate, string endDate)
        {
            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();

            // set the stored procedure name
            comm.CommandText = "OrdersGetByDate";
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@StartDate";
            param.Value = startDate;
            param.DbType = DbType.Date;
            comm.Parameters.Add(param);
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@EndDate";
            param.Value = endDate;
            param.DbType = DbType.Date;
            comm.Parameters.Add(param);
            // return the result table
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            return table;
        }

        // Retrieve order information
        public static OrderInfo GetInfo(string orderID)
        {
            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "OrderGetInfo";
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@OrderID";
            param.Value = orderID;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);

            // obtain the results
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            DataRow orderRow = table.Rows[0];
            // save the results into an OrderInfo object
            OrderInfo orderInfo;
            orderInfo.OrderID = Int32.Parse(orderRow["OrderID"].ToString());
            orderInfo.TotalAmount = Decimal.Parse(orderRow["TotalAmount"].ToString());
            orderInfo.DateCreated = orderRow["DateCreated"].ToString();
            orderInfo.DateShipped = orderRow["DateShipped"].ToString();
            orderInfo.OrderStatus = orderRow["OrderStatus"].ToString();            
            orderInfo.Comments = orderRow["Comments"].ToString();
            orderInfo.CustomerName = orderRow["UserName"].ToString();            
            // return the OrderInfo object
            return orderInfo;
        }

        // Retrieve the order details (the products that are part of that order)
        public static DataTable GetDetails(string orderID)
        {
            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "OrderGetDetails";
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@OrderID";
            param.Value = orderID;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);
            // return the results
            DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
            return table;
        }

        // Update an order
        public static void Update(OrderInfo orderInfo)
        {
            // get a configured DbCommand object
            DbCommand comm = GenericDataAccess.CreateCommand();
            // set the stored procedure name
            comm.CommandText = "OrderUpdate";
            // create a new parameter
            DbParameter param = comm.CreateParameter();
            param.ParameterName = "@OrderID";
            param.Value = orderInfo.OrderID;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@DateCreated";
            param.Value = orderInfo.DateCreated;
            param.DbType = DbType.DateTime;
            comm.Parameters.Add(param);
            // The DateShipped parameter is sent only if data is available
            if (orderInfo.DateShipped.Trim() != "")
            {
                param = comm.CreateParameter();
                param.ParameterName = "@DateShipped";
                param.Value = orderInfo.DateShipped;
                param.DbType = DbType.DateTime;
                comm.Parameters.Add(param);
            }
            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@OrderStatus";
            param.Value = orderInfo.OrderStatus;
            param.DbType = DbType.String;
            comm.Parameters.Add(param);            

            // create a new parameter
            param = comm.CreateParameter();
            param.ParameterName = "@Comments";
            param.Value = orderInfo.Comments;
            param.DbType = DbType.String;
            comm.Parameters.Add(param);            
            
            // return the results
            GenericDataAccess.ExecuteNonQuery(comm);
        }
    }
}