using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery_Nhom7
{
    public class CartItem
    {
        public Product product { get; set; }
        public int quantity { get; set; }
        public int TongTien { get; set; }
        public CartItem()
        {
            product = new Product();
        }
        public override bool Equals(object obj)
        {
            CartItem c = (CartItem)obj;
            return this.product.MaSanPham.Equals(c.product.MaSanPham);
        }
    }
}