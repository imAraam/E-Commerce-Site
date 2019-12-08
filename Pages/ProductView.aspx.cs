using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace E_commerce_website
{
    public partial class ProductView : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProductNameConnection"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void clearbtn_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            ID_txtbox.Text = PID_txtbox.Text = name_txtbox.Text = summary_txtbox.Text = image_txtbox.Text = price_txtbox.Text = "";
            labelSuccess.Text = "";
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand sqlCom = new SqlCommand("ProductUpdate", conn);
            sqlCom.CommandType = CommandType.StoredProcedure;
            sqlCom.Parameters.AddWithValue("@Id", ID_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@ProductID", PID_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@NameOfProduct", name_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@Summary", summary_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@Image", image_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@Price", price_txtbox.Text.Trim());
            sqlCom.ExecuteNonQuery();
            conn.Close();
            Clear();
            labelSuccess.Text = "Updated Successfully. Please Refresh the page";

        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand sqlCom = new SqlCommand("ProductDelete", conn);
            sqlCom.CommandType = CommandType.StoredProcedure;
            sqlCom.Parameters.AddWithValue("@Id", ID_txtbox.Text.Trim());
            sqlCom.ExecuteNonQuery();
            conn.Close();
            Clear();
            labelSuccess.Text = "Deleted Successfully. Please Refresh the page";
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /*Confirms that an HtmlForm control is rendered for the specified ASP.NET
         server control at run time. */
        }
    }
}