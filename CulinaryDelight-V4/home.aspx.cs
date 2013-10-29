using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CulinaryDelight
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SetImage();
            }

            
            
           
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int i = SetImage();
            Image1.ImageUrl = "~/Images/" + i.ToString()+".jpg";
        }

        private static int SetImage()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 13);
            return i;
        }

        
        
    }
}