using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Net;
using System.Web.Services.Description;
using System.Web.UI.WebControls.WebParts;


namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            UpdateDatabase();
        }


        public void UpdateDatabase()
        {


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1_user.Text=="admin" && TextBox_password.Text=="12345")
            {
               // Response.Redirect("Contact.aspx");
            }
            else
            {
                TextBox1_user.Text = "Invalid user";
            }
        }
    }
}

