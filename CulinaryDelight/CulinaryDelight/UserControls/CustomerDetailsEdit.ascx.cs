﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CulinaryDelight.UserControls
{
    public partial class CustomerDetailsEdit : System.Web.UI.UserControl
    {
        public bool Editable
        {
            get
            {
                if (ViewState["editable"] != null)
                {
                    return (bool)ViewState["editable"];
                }
                else
                {
                    return true;
                }
            }
            set
            {
                ViewState["editable"] = value;
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            //find and set edit button visibility
            Button EditButton = FormView1.FindControl("EditButton") as Button;
            if (EditButton != null)
            {
                EditButton.Visible = Editable;
            }
            //base.OnPreRender(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}