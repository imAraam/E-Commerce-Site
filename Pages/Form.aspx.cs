using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace E_commerce_website
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Code to check if a username exists
            if (IsPostBack)
            {
                //Establish connection with database
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnection"].ConnectionString);
                conn.Open();
                string checkUser = "select count(*) from AccountDetails where Username = '"+ TextBox1.Text +"'";
                //Checking if username already exists in database
                SqlCommand com = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if(temp == 1)
                {
                    labelSuccess.Text = "User already exists.";
                }

                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack)
                {              
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnection"].ConnectionString);
                    conn.Open();
                    //Write insert query to enter values to the database
                    string insert = "insert into AccountDetails (Username, Email, Password) values (@User, @email, @psw)";
                    
                    //Add values to the database
                    SqlCommand com = new SqlCommand(insert, conn);
                    com.Parameters.AddWithValue("@User", TextBox1.Text);
                    com.Parameters.AddWithValue("@email", TextBox2.Text);
                    com.Parameters.AddWithValue("@psw", TextBox3.Text);

                    com.ExecuteNonQuery();

                    labelSuccess.Text =  "Registration Successful.";//This appears at top of header----------------------------

                    conn.Close();
                }
            } catch(Exception ex)
            {
                Response.Write("Error: "+ex.ToString());
            }
        }
    }
}