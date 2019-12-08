using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Principal;

namespace E_commerce_website
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {       
        string userName = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["userInfo"];
            if (cookie != null)
            {
                userName = cookie["Username"].ToString();
            }

            if (!IsPostBack)
            {
                Label1.Text += userName;
            }
        }             

        protected void B_Logout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();

            //Session.Abandon();
            //Response.Redirect("~/Index.aspx");
        }      
    }
}