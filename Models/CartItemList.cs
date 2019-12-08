using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_commerce_website
{
    public class BasketItemList
    {
        private List<BasketItem> basketItems;

        public BasketItemList()
        {
           basketItems = new List<BasketItem>();
        }

        public int Count
        {
            get { return basketItems.Count; }
        }

        public BasketItem this[int index]
        {
            get { return basketItems[index]; }
        }

        public BasketItem this[string id]
        {
            get
            {
                foreach (BasketItem b in basketItems)
                    if (b.Product.ProductID == id) return b;
                return null;
            }
        }

        public static BasketItemList GetBasket()
        {
            BasketItemList basket = (BasketItemList)HttpContext.Current.Session["Basket"];
            if (basket == null)
                HttpContext.Current.Session["Basket"] = new BasketItemList();
            return (BasketItemList)HttpContext.Current.Session["Basket"];
        }

        public void AddItem(Product product, int quantity)
        {
            BasketItem b = new BasketItem(product, quantity);
            basketItems.Add(b);
        }

        public void RemoveAt(int index)
        {
            basketItems.RemoveAt(index);
        }

        public void Clear()
        {
            basketItems.Clear();
        }
    }
}