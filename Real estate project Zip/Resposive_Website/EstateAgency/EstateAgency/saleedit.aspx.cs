using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resposive_Website.EstateAgency.EstateAgency
{
    public partial class saleedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);

            if (!Page.IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("getrecordbyid", con);
                cmd.CommandType = CommandType.StoredProcedure;
                string idd = Request.QueryString["id"];
                Session["updateid"] = idd;
                cmd.Parameters.AddWithValue("Id", idd);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string fname = ds.Tables[0].Rows[0]["Fname"].ToString();
                    string mname = ds.Tables[0].Rows[0]["Mname"].ToString();
                    string lname = ds.Tables[0].Rows[0]["Lname"].ToString();
                    string age = ds.Tables[0].Rows[0]["Age"].ToString();
                    string email = ds.Tables[0].Rows[0]["Email"].ToString();
                    string occupation = ds.Tables[0].Rows[0]["Occupation"].ToString();
                    string permanent_add = ds.Tables[0].Rows[0]["Permanent_Add"].ToString();
                    string country = ds.Tables[0].Rows[0]["Country"].ToString();
                    string city = ds.Tables[0].Rows[0]["City"].ToString();

                    txtfname.Text = fname;
                    txtmname.Text = mname;
                    txtlname.Text = lname;
                    txtage.Text = age;
                    txtemail.Text = email;
                    txtoccupation.Text = occupation;
                    txtparadd.Text = permanent_add;
                    txtcountry.Text = country;
                    txtcity.Text = city;
                }
            }con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);


                SqlCommand cmd = new SqlCommand("updaterecordbyid", con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Id", Session["updateid"].ToString());
                cmd.Parameters.AddWithValue("Fname", txtfname.Text);
                cmd.Parameters.AddWithValue("Mname", txtmname.Text);
                cmd.Parameters.AddWithValue("Lname", txtlname.Text);
                cmd.Parameters.AddWithValue("Age", txtage.Text);
                cmd.Parameters.AddWithValue("Email", txtemail.Text);
                cmd.Parameters.AddWithValue("Occupation", txtoccupation.Text);
                cmd.Parameters.AddWithValue("Permanent_Add", txtparadd.Text);
                cmd.Parameters.AddWithValue("Country", txtcountry.Text);
                cmd.Parameters.AddWithValue("City", txtcity.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("adminsale.aspx");
            con.Close();
        }
    }
}