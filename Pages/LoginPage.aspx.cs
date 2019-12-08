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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Establish connection with database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnection"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from AccountDetails where Username = '" + TextBoxUsername.Text + "'";
            //Checking if username already exists in database
            SqlCommand userCom = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(userCom.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();                
                string checkPass = "select password from AccountDetails where Username = '" + TextBoxUsername.Text + "'";
                SqlCommand passCom = new SqlCommand(checkPass, conn);
                string pass = passCom.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxPassword.Text;
                    Response.Write("Login successful.");
                    HttpCookie userInfo = new HttpCookie("userInfo");
                    userInfo["Username"] = TextBoxUsername.Text;
                    userInfo["Password"] = TextBoxPassword.Text;
                    Response.Cookies.Add(userInfo);
                    Response.Redirect("DetailsPage.aspx");
                }
                else
                {
                    Response.Write("Password incorrect.");
                }
                
            }
            else
            {
                Response.Write("Username incorrect.");
            }

           

            //this.LoadCustomerData();
            //Response.Redirect("~/Index.aspx");
        }

        private void LoadCustomerData()
        {
            if (Page.IsValid)
            {
                DateTime expiry = DateTime.Now.AddMinutes(5);
                this.SetResponseCookie("Username", TextBoxUsername.Text, expiry);
                this.SetResponseCookie("Password", TextBoxPassword.Text, expiry);
            }
        }

        private void SetResponseCookie(string name, string value, DateTime expiry)
        {
            HttpCookie cookie = new HttpCookie(name, value);
            cookie.Expires = expiry;
            Response.Cookies.Add(cookie);
        }
    }
}