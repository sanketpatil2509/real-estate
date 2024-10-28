using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resposive_Website.EstateAgency.EstateAgency
{
    public partial class agents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBWEBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("get_agent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            foreach (DataRow row in dt.Rows)
            {
                agent1.Text = dt.Rows[0]["Name"].ToString();
            }
            foreach (DataRow row in dt.Rows)
            {
                agent2.Text = dt.Rows[1]["Name"].ToString();
            }
            foreach (DataRow row in dt.Rows)
            {
                agent3.Text = dt.Rows[2]["Name"].ToString();
            }
            con.Close();
        }
    }
}