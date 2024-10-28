using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Resposive_Website.EstateAgency.EstateAgency
{
    public partial class agentdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TextBox3.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("saveagentdetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string gender=string.Empty;
            if (rmale.Selected)
            {
                gender = "Male";
            }
            else if (rfemale.Selected) 
            {
                gender = "Female";
            }
            cmd.Parameters.AddWithValue("FName", txtfname.Text);
            cmd.Parameters.AddWithValue("LName", txtlname.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("Gender", gender);
            cmd.Parameters.AddWithValue("Contact", txtcontact.Text);
            cmd.Parameters.AddWithValue("Address", txtaddress.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            txtfname.Text = "";
            txtlname.Text = "";
            txtemail.Text = "";
            RadioButtonList1.Text = "";
            txtcontact.Text = "";
            txtaddress.Text = "";
        }
    }
}