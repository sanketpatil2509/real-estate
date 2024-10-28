using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resposive_Website.EstateAgency.EstateAgency.startbootstrap_sb_admin_gh_pages.startbootstrap_sb_admin_gh_pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("checklogindetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Username", txtuser.Text);
            cmd.Parameters.AddWithValue("Password", txtpassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("adminsale.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Username Or Password";
            }
        }
    }
}