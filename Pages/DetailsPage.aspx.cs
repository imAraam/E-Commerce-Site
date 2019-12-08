using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace E_commerce_website
{
    public partial class DetailsPage : System.Web.UI.Page
    {
       
        private Product selectedProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            //bind drop-down list on first load   
            if (!IsPostBack) DropDownList1.DataBind();

            //get and show product on every load
            selectedProduct = this.GetSelectedProduct();
            l_PID.Text = selectedProduct.ProductID;
            l_Name.Text = selectedProduct.NameOfProduct;
            l_Desc.Text = selectedProduct.Summary;
            l_Price.Text = selectedProduct.Price + " each";
            imageOfProduct.ImageUrl = "images/IndexImages/" + selectedProduct.Image;
        }

        private Product GetSelectedProduct()
        {
            //get row from SqlDataSource based on value in drop-down list
            DataView productsTable = (DataView)
                SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter =
                "NameOfProduct = '" + DropDownList1.SelectedValue + "'";
            DataRowView row = productsTable[0];

            //create a new product object and load with data from row
            Product p = new Product();
            p.ProductID = row["ProductID"].ToString(); 
            p.NameOfProduct = row["NameOfProduct"].ToString();
            p.Summary = row["Summary"].ToString();
            p.Price = row["Price"].ToString();
            p.Image = row["Image"].ToString();
            return p;
        }


        public override void VerifyRenderingInServerForm(Control control)
        {
             /*Confirms that an HtmlForm control is rendered for the specified ASP.NET
          server control at run time. */
        }

        protected void AddItemsBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //get cart from session and selected item from cart
                BasketItemList basket = BasketItemList.GetBasket();
                BasketItem basketItem = basket[selectedProduct.ProductID];

                //if item isn’t in cart, add it; otherwise, increase its quantity
                if (basketItem == null)
                {
                    basket.AddItem(selectedProduct,
                                 Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    basketItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("ShoppingBasket.aspx", false);
            }
        }
    }
}