using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

namespace Vehicle_Records_System
{
    public partial class Login : System.Web.UI.Page
    {
              protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
            TextBox2.Focus();
        }
        protected void Button1_Click1(object sender, EventArgs e)   //Login Button
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0TJ68E0;Initial Catalog=VehicleSystem;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from Login where UserName=@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ada.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["Username"] = TextBox1.Text;
                Response.Redirect("Vehicle.aspx");
               
            }
            else
            {
                Label1.Text = "Invalid Username and Password";
                        
            }
        
        }
    }
}
