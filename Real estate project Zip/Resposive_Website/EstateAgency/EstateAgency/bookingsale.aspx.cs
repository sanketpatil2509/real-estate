using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.IO;


namespace Resposive_Website.EstateAgency.EstateAgency
{
    public partial class bookingsaleaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Calendar2.Visible = false;

            }
            txtamount.Enabled = false;
            DDLagent.Items.Clear();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("get_agent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DDLagent.DataSource = dt;
            // DDLagent.SelectedValue = "0";
            // DDLagent.DataTextField = "Name";
            // DDLagent.DataValueField = "Id";
            //DDLagent.Items.Add("--Select Agent--");
            DDLagent.DataBind();
            TextBox11.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TextBox11.Enabled = false;
        }
       
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "0")
            {
                txtamount.Text = "30000000 4000000";
            }
            else if (RadioButtonList1.SelectedValue == "1")
            {
                txtamount.Text = "5000000-6000000";
            }
            else if (RadioButtonList1.SelectedValue == "2")
            {
                txtamount.Text = "7000000-8000000";
            }
            else if (RadioButtonList1.SelectedValue == "3")
            {
                txtamount.Text = "9000000-10000000";
            }
            else if (RadioButtonList1.SelectedValue == "4")
            {
                txtamount.Text = "15000000-20000000";
            }
            else if (RadioButtonList1.SelectedValue == "5")
            {
                txtamount.Text = "25000000-30000000";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("savesaledetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string property = string.Empty;
            if (type1.Selected)
            {
                property = "1BHK";
            }
            else if (type2.Selected)
            {
                property = "2BHK";
            }
            //else if (type3.Selected)
            //{
            //    property = "3BHK";
            //}
            else if (type4.Selected)
            {
                property = "4BHK";
            }
            else if (type5.Selected)
            {
                property = "Banglo";
            }
            else if (type6.Selected)
            {
                property = "Villa";
            }
            cmd.Parameters.AddWithValue("Location", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Building_Name", txtbuild.Text);
            cmd.Parameters.AddWithValue("Sector_No", txtsector.Text);
            cmd.Parameters.AddWithValue("Unit_No", txtunit.Text);
            cmd.Parameters.AddWithValue("Build_Types",property);
            cmd.Parameters.AddWithValue("Fname", txtfname.Text);
            cmd.Parameters.AddWithValue("Mname", txtmname.Text);
            cmd.Parameters.AddWithValue("Lname", txtlname.Text);
            cmd.Parameters.AddWithValue("Age", txtage.Text);
            cmd.Parameters.AddWithValue("Occupation", txtoccupation.Text);
            cmd.Parameters.AddWithValue("Mobile_No", txtmobile.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("Adhar_No", txtaadhar.Text);
            cmd.Parameters.AddWithValue("Pan_No", txtpan.Text);
            // DateTime dt = DateTime.ParseExact(txtdob.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
            //cmd.Parameters.AddWithValue("DOB", dt.ToString("dd-MM-yyyy"));
            //cmd.Parameters.AddWithValue("DOB",DateTime.ParseExact(txtDate.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture).ToString());
            cmd.Parameters.AddWithValue("DOB", txtDate.Text);
            cmd.Parameters.AddWithValue("Permanent_Add", txtparadd.Text);
            cmd.Parameters.AddWithValue("Correspond_Add", txtcorradd.Text);
            cmd.Parameters.AddWithValue("Country", txtcountry.Text);
            cmd.Parameters.AddWithValue("City", txtcity.Text);
            string saveFolder = @"C:\Upload"; 
            string filePath = Path.Combine(saveFolder, FileUpload1.FileName);
            FileUpload1.SaveAs(filePath);
            cmd.Parameters.AddWithValue("KYC_file_Path", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("Bank_Name ", txtbank.Text);
            cmd.Parameters.AddWithValue("Transaction_Id",txttran.Text);
            cmd.Parameters.AddWithValue("Agent_Id", DDLagent.SelectedValue);
            cmd.Parameters.AddWithValue("Sale_Amount", txtamount.Text);
            con.Open();
            cmd.ExecuteNonQuery();


            DropDownList1.SelectedItem.Value = "0";
            txtsector.Text = "";
            txtbuild.Text = "";
            txtunit.Text = "";
           // RadioButtonList1.SelectedItem.Text = "";
            Lblamount.Text = "";
            txtfname.Text = "";
            txtmname.Text = "";
            txtlname.Text = "";
            txtage.Text = "";
            txtoccupation.Text = "";
            txtmobile.Text = "";
            txtemail.Text = "";
            txtDate.Text = "";
            txtaadhar.Text = "";
            txtpan.Text = "";
            txtcorradd.Text = "";
            txtcountry.Text = "";
            txtcity.Text = "";
            txtbank.Text = "";
            txttran.Text = "";
            txtamount.Text = "";
            txtparadd.Text = "";
        }

        protected void txtage_TextChanged(object sender, EventArgs e)
        {
            if (txtage.Text.Length != 2)
            {
                txtage.Text = "";
                lblageerrormsg.Visible = true;
            }
            else
            {
                lblageerrormsg.Visible = false;
            }
        }
    }
}