using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Resposive_Website.EstateAgency.EstateAgency
{
    public partial class bookingrent : System.Web.UI.Page
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
            // DDLagent.Items.Add("--Select Agent--");
            DDLagent.DataBind();
            TextBox12.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TextBox12.Enabled = false;
            //RangeValidator2.MinimumValue=DateTime.Now.AddYears(-80).ToShortDateString();
            //RangeValidator2.MaximumValue=DateTime.Now.AddYears(-21).ToShortDateString();
            //RangeValidator1.MinimumValue = DateTime.Now.AddYears(-80).ToShortDateString();
            //RangeValidator1.MaximumValue = DateTime.Now.AddYears(-21).ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("saverentdetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string property=string.Empty;
            if (type1.Selected)
            {
                property = "1RK";
            }
            else if (type2.Selected)
            {
                property = "1BHK";
            }
            else if (type4.Selected)
            {
                property = "2BHK";
            }
            else if (type5.Selected)
            {
                property = "3BHK";
            }
            else if (commercial.Selected)
            {
                property = "Commercial";
            }
            cmd.Parameters.AddWithValue("Location", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Sector_No", txtsector.Text);
            cmd.Parameters.AddWithValue("Unit_No", txtunit.Text);
            cmd.Parameters.AddWithValue("Build_Types", property);
            cmd.Parameters.AddWithValue("Fname", txtfname.Text);
            cmd.Parameters.AddWithValue("Mname", txtmname.Text);
            cmd.Parameters.AddWithValue("Lname", txtlname.Text);
            cmd.Parameters.AddWithValue("Age", txtage.Text);
            cmd.Parameters.AddWithValue("Occupation", txtoccupation.Text);
            cmd.Parameters.AddWithValue("Mobile_No", txtmobile.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("Adhar_No", txtaadhar.Text);
            cmd.Parameters.AddWithValue("Permenant_Add", txtparadd.Text);
            cmd.Parameters.AddWithValue("Agent_Id", DDLagent.SelectedValue);
            cmd.Parameters.AddWithValue("Rent_Amount", txtamount.Text);
            cmd.Parameters.AddWithValue("Build_Name", txtbuild.Text);
            cmd.Parameters.AddWithValue("DOB",txtdate.Text);
            //Date DOB = Convert.ToDateTime(txtdate.Text).ToString("dd-MM-yyyy");
            //DateTime dt = DateTime.ParseExact(txtdate.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
            //cmd.Parameters.AddWithValue("DOB", dt.ToString("dd-MM-yyyy"));


            con.Open();
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Booking Successfully";
            DropDownList1.SelectedItem.Text = "";
            txtsector.Text = "";
            txtbuild.Text = "";
            txtunit.Text = "";
            RadioButtonList1.SelectedItem.Text = "";
            Lblamount.Text = "";
            txtfname.Text = "";
            txtmname.Text = "";
            txtlname.Text = "";
            txtage.Text = "";
            txtoccupation.Text = "";
            txtmobile.Text = "";
            txtemail.Text = "";
            txtdate.Text = "";
            txtaadhar.Text = "";
            txtparadd.Text = "";
            con.Close();
        }
        //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        //{
        //    if (Calendar2.Visible)
        //    {
        //        Calendar2.Visible = false;
        //    }
        //    else
        //    {
        //        Calendar2.Visible = true;
        //    }
        //    Calendar2.Attributes.Add("style", "position:absolute");
        //}
        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    txtdob.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
        //    Calendar2.Visible = false;
        //}



        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedValue=="0")
            {
                txtamount.Text = "6000-8000";
            }
            else if (RadioButtonList1.SelectedValue == "1")
            {
                txtamount.Text = "10000-15000";
            }
            else if(RadioButtonList1.SelectedValue == "2")
            {
                txtamount.Text = "15000-20000";
            }
            else if (RadioButtonList1.SelectedValue == "3")
            {
                txtamount.Text = "25000-30000";
            }
            else if (RadioButtonList1.SelectedValue == "4")
            {
                txtamount.Text = "40000-50000";
            }
        }

        protected void txtdate_TextChanged(object sender, EventArgs e)
        {
            //DateTime dob=txtdate.Text.ToString("dd-MM-yyyy");
            //// Save today's date.
            //var today = DateTime.Today;

            //// Calculate the age.
            //var age = today.Year - DateTime.Now.Year;

            //// Go back to the year in which the person was born in case of a leap year
            //if (txtdate.Text.ToString("dd/MM/yyyy").Date > today.AddYears(-age)) age--;
            //RangeValidator2.MinimumValue = DateTime.Now.AddYears(-80).ToShortDateString();
            //RangeValidator2.MaximumValue = DateTime.Now.AddYears(-21).ToShortDateString();
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