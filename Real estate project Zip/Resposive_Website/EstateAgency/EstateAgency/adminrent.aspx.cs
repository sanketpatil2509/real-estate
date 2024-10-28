using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resposive_Website.EstateAgency.EstateAgency.startbootstrap_sb_admin_gh_pages.startbootstrap_sb_admin_gh_pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayrecord();
            if (!this.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
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

        }
        void displayrecord()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("saverentdatatoadmin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            con.Open();
            sda.Fill(ds);
            rptrentdeatils.DataSource = ds;
            rptrentdeatils.DataBind();
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("deleterentrecords", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string idd = (((sender as LinkButton).NamingContainer.FindControl("Label1") as Label).Text);
            cmd.Parameters.AddWithValue("Id", idd);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            displayrecord();
        }

        //protected void lbtnedit_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("editrent.aspx?Parameter=" + Server.UrlEncode(txteditid.Text));
        //   // Response.Redirect("editrent.aspx ? Parameter =” +Label2.Text);

        //}

        protected void lbtnedit_Click1(object sender, EventArgs e)
        {
            string sessionid = (((sender as LinkButton).NamingContainer.FindControl("txteditid") as TextBox).Text);
            Response.Redirect("editrent.aspx?Id=" + (((sender as LinkButton).NamingContainer.FindControl("txteditid") as TextBox).Text));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("filterrentrecords", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Email", txtsearch.Text);
            cmd.Parameters.AddWithValue("Fname", txtsearch.Text);
            cmd.Parameters.AddWithValue("Mname", txtsearch.Text);
            cmd.Parameters.AddWithValue("Lname", txtsearch.Text);
            cmd.Parameters.AddWithValue("Location", txtsearch.Text);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            rptrentdeatils.DataSource = ds;
            rptrentdeatils.DataBind();

            con.Close();
        }
    }
}