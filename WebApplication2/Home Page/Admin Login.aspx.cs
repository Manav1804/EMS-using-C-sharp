using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast.Selectors;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


       


        protected void Button_Click1(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection("Data Source = RusteezBlaze\\SQLEXPRESS; Initial Catalog = Emp; Integrated Security = True");
                SqlCommand cmd = new SqlCommand("select * from Emp where name='"+ username.Text + "'"+ "and passwd='" + password.Text+ "'" , con);
                //select * from Emp where name='Test.' and Passwd='11100';
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("~/Details Page/Details.aspx");
                }

                else
                {

                    Label1.Text = "*invalid user*";

                    username.Text = "";
                    password.Text = "";
                    Response.AddHeader("Refresh", "1;url=Admin Login.aspx");
                }
            

            
        }

      
    }
}
