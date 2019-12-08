using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//Allows users to add items to shopping basket

namespace E_commerce_website
{
    public class Product
    {
        public string ProductID { get; set; }
        public string NameOfProduct { get; set; }
        public string Summary { get; set; }
        public string Price { get; set; }
        public string Image { get; set; }
    }
}