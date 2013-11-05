using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CulinaryDelight.App_Code;

namespace CulinaryDelight.UserControls
{
    public partial class DepartmentsList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // don't reload data during postbacks
            if (!IsPostBack)
            {
                // CatalogAccess.GetDepartments returns a DataTable object containing
                // department data, which is read in the ItemTemplate of the DataList
                list.DataSource = CatalogAccess.GetDepartments();
                // Needed to bind the data bound controls to the data source
                list.DataBind();
            }
        }
    }
}