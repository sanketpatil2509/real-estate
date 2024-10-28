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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("savedatatoadmin_reg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string gender = string.Empty;
            if (rmale.Selected)
            {
                gender = "Male";
            }
            else if (rfemale.Selected)
            {
                gender = "Female";
            }

            cmd.Parameters.AddWithValue("Fname", txtfname.Text);
            cmd.Parameters.AddWithValue("Lname", txtlname.Text);
            cmd.Parameters.AddWithValue("Username", txtuser.Text);
            cmd.Parameters.AddWithValue("EmailID", txtemail.Text);
            cmd.Parameters.AddWithValue("Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("CPassword", txtcpassword.Text);
            cmd.Parameters.AddWithValue("Role", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Gender", gender);
            con.Open();
            cmd.ExecuteNonQuery();

            lblmsg.Text = "Regisration Done";
            txtfname.Text = "";
            txtlname.Text = "";
            txtuser.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
            txtcpassword.Text = "";
            DropDownList1.SelectedItem.Text = "";
            RadioButtonList1.Text = "";

            con.Close();

        }

        protected void txtlname_TextChanged(object sender, EventArgs e)
        {
            string username=txtfname.Text+txtlname.Text;
            txtuser.Text=username;
            txtuser.Enabled = false;

        }
    }
}