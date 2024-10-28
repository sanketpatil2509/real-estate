using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Resposive_Website.EstateAgency.EstateAgency
{
    public partial class admincontact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);

         
            if (!this.IsPostBack)
            {
                con.Open();
                SqlCommand command = new SqlCommand("Select count(*) as SaleAmt from Sale_details", con);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                using (SqlDataReader sdr = command.ExecuteReader())
                {
                    sdr.Read();
                    lblsalescount.Text = "0";
                    lblsalescount.Text = sdr["SaleAmt"].ToString();
                }
                SqlCommand command3 = new SqlCommand("Select Count(*) as RentAmt from Rent_Details", con);
                command3.CommandType = CommandType.Text;
                command3.Connection = con;
                using (SqlDataReader sdr = command3.ExecuteReader())
                {
                    sdr.Read();
                    LBLRentcount.Text = "0";
                    LBLRentcount.Text = sdr["RentAmt"].ToString();
                }
                SqlCommand command2 = new SqlCommand("Select count(*) as AgentAmt from Agent_details", con);
                command2.CommandType = CommandType.Text;
                command2.Connection = con;
                using (SqlDataReader sdr = command2.ExecuteReader())
                {
                    sdr.Read();
                    LBLAgentCount.Text = sdr["AgentAmt"].ToString();
                }

                SqlCommand command4 = new SqlCommand("Select count(*) as ContactCount from Tbl_Contact", con);
                command4.CommandType = CommandType.Text;
                command4.Connection = con;
                using (SqlDataReader sdr = command4.ExecuteReader())
                {
                    sdr.Read();
                    lblcontactcount.Text = sdr["ContactCount"].ToString();
                }
                con.Close();
            }
            SqlCommand cmd = new SqlCommand("getcontactdetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            contactrecordid.DataSource = ds;
            contactrecordid.DataBind();
            con.Close();

        }
    }
}