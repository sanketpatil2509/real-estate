using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Resposive_Website.EstateAgency.EstateAgency
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("contactdetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Name",txtname.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("Subject", txtsubject.Text);
            cmd.Parameters.AddWithValue("Message", txtmessage.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            
            txtname.Text = "";
            txtemail.Text = "";
            txtsubject.Text = "";
            txtmessage.Text = "";
        }
    }
}