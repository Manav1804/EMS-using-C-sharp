using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using static System.Net.Mime.MediaTypeNames;

namespace WebApplication2.Home_Page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = RusteezBlaze\\SQLEXPRESS; Initial Catalog = Emp; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }
        public void GetData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Emp", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        public void ClrData()
        {
            GetData();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            DropDown.Text = "";
            TextBox7.Text = "";

        }
        public void Show()
        {
            SqlCommand cmd = new SqlCommand("Select * from emp where id = '" + TextBox1.Text + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into emp values('" + TextBox1.Text + "', '" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + TextBox4.Text + "' , '" + TextBox5.Text + "' , '" + TextBox6.Text + "' , '" + DropDown.Text + "' , '" + TextBox7.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            ClrData();
        }

        
        protected void DELETE_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Delete from emp where id='" + TextBox1.Text + "';";
            cmd.ExecuteNonQuery();
            con.Close();
           
        }

        protected void EDIT_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update emp set Id= '" + TextBox1.Text + "', Name= '" + TextBox2.Text + "' , DOB= '" + TextBox3.Text + "' , Email= '" + TextBox4.Text + "' , Contact= '" + TextBox5.Text + "' , Salary= '" + TextBox6.Text + "' , Gender= '" + DropDown.Text + "' , Passwd= '" + TextBox7.Text + "' Where Id= '" + TextBox1.Text + "';";
            cmd.ExecuteNonQuery();
            Show();
            con.Close();
            //ClrData();
        }

        protected void VIEW_Click(object sender, EventArgs e)
        {
           
            if (TextBox1.Text == null || TextBox1.Text=="" )
            {

                ClrData();
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from emp where id = '" + TextBox1.Text + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
                TextBox2.Text = dt.Rows[0][1].ToString();
                TextBox3.Text = dt.Rows[0][2].ToString();
                TextBox4.Text = dt.Rows[0][3].ToString();
                TextBox5.Text = dt.Rows[0][4].ToString();
                TextBox6.Text = dt.Rows[0][5].ToString(); 
                DropDown.Text = dt.Rows[0][6].ToString();
                TextBox7.Text = dt.Rows[0][7].ToString();

            }


        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }


        
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType== DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "Action";
                e.Row.Cells[1].Text = "ID";
                e.Row.Cells[2].Text = "Name";
                e.Row.Cells[3].Text = "DOB";
                e.Row.Cells[4].Text = "Email";
                e.Row.Cells[5].Text = "Contact";
                e.Row.Cells[6].Text = "Salary";
                e.Row.Cells[7].Text = "Gender"; 
                e.Row.Cells[8].Text = "Passwd";
               

            }
        }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
            TextBox4.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
            TextBox5.Text= GridView1.SelectedRow.Cells[5].Text.ToString();
            TextBox6.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            DropDown.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            TextBox7.Text = GridView1.SelectedRow.Cells[8].Text.ToString();


        }
    }
}