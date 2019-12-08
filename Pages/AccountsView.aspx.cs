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
    public partial class AccountsView : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnection"].ConnectionString);

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
            ID_txtbox.Text = User_txtbox.Text = pass_txtbox.Text = email_txtbox.Text = "";
            labelSuccess.Text = "";            
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand sqlCom = new SqlCommand("AccountUpdate", conn);
            sqlCom.CommandType = CommandType.StoredProcedure;
            sqlCom.Parameters.AddWithValue("@Id", ID_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@Username", User_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@Email", email_txtbox.Text.Trim());
            sqlCom.Parameters.AddWithValue("@Password", pass_txtbox.Text.Trim());
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
            SqlCommand sqlCom = new SqlCommand("AccountDelete", conn);
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