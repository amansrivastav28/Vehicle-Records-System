using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Drawing;
namespace Vehicle_Records_System
{
    public partial class Vehicle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["Username"] != null) //check the sesseion
            {
                Label1.Text = Session["Username"].ToString();
               
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }


    }
}