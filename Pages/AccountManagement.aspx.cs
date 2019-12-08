using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace E_commerce_website
{
    public partial class AccountManagement : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnection"].ConnectionString);
        string userName = string.Empty;        

         
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["userInfo"];
            if (cookie != null)
            {
                userName = cookie["Username"].ToString();
            }
        }    

        protected void clearbtn_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            User_txtbox.Text = pass_txtbox.Text = email_txtbox.Text = "";
            labelSuccess.Text = "";
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            if (userName == User_txtbox.Text.ToString())
            {
                SqlCommand sqlCom = new SqlCommand("UserAccountUpdate", conn);
                sqlCom.CommandType = CommandType.StoredProcedure;
                sqlCom.Parameters.AddWithValue("@Username", User_txtbox.Text.Trim());
                sqlCom.Parameters.AddWithValue("@Email", email_txtbox.Text.Trim());
                sqlCom.Parameters.AddWithValue("@Password", pass_txtbox.Text.Trim());
                sqlCom.ExecuteNonQuery();
                Clear();
                labelSuccess.Text = "Updated Successfully.";
            }
            else
            {
                labelSuccess.Text = "Wrong Username Entered.";
            }           
            conn.Close();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /*Confirms that an HtmlForm control is rendered for the specified ASP.NET
         server control at run time. */
        }
    }
}