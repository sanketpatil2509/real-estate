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
    public partial class rentedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);

            if (!Page.IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("getrentrecordbyid", con);
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
                    string mobile = ds.Tables[0].Rows[0]["Mobile_No"].ToString();
                    string permanent_add = ds.Tables[0].Rows[0]["Permenant_Add"].ToString();
                   
                    

                    txtfname.Text = fname;
                    txtmname.Text = mname;
                    txtlname.Text = lname;
                    txtage.Text = age;
                    txtemail.Text = email;
                    txtoccupation.Text = occupation;
                    txtmobile.Text = mobile;
                    txtparadd.Text = permanent_add;
                    
                }
                con.Close();
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);


            SqlCommand cmd = new SqlCommand("updaterentrecordsbyid", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Id", Session["updateid"].ToString());
            cmd.Parameters.AddWithValue("Fname", txtfname.Text);
            cmd.Parameters.AddWithValue("Mname", txtmname.Text);
            cmd.Parameters.AddWithValue("Lname", txtlname.Text);
            cmd.Parameters.AddWithValue("Age", txtage.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("Occupation", txtoccupation.Text);
            cmd.Parameters.AddWithValue("Mobile_No", txtmobile.Text);
            cmd.Parameters.AddWithValue("Permenant_Add", txtparadd.Text);
            
            

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("adminrent.aspx");
            con.Close();
        }
    }
}