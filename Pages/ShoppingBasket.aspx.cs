using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commerce_website
{
    public partial class ShoppingBasket : System.Web.UI.Page
    {
        private BasketItemList basket;

        protected void Page_Load(object sender, EventArgs e)
        {
            basket = BasketItemList.GetBasket();
            if (!IsPostBack)
                this.DisplayBasket();
        }

        private void DisplayBasket()
        {
            lstBasket.Items.Clear();
            BasketItem item;
            for (int i = 0; i < basket.Count; i++)
            {
                item = basket[i];
                lstBasket.Items.Add(item.Display());
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if (basket.Count > 0)
            {
                if (lstBasket.SelectedIndex > -1)
                {
                    basket.RemoveAt(lstBasket.SelectedIndex);
                    this.DisplayBasket();
                }
                else
                {
                    lblMessage.Text = "Please select the item you want to remove.";
                }
            }
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if (basket.Count > 0)
            {
                basket.Clear();
                lstBasket.Items.Clear();
            }
        }
     
        public override void VerifyRenderingInServerForm(Control control)
        {
            /*Confirms that an HtmlForm control is rendered for the specified ASP.NET
         server control at run time. */
        }
    }
}