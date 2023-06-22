using SmartPhone_Shop.ViewModels.Sales;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartPhone_Shop.WebApp.Models
{
    public class CartViewModel
    {
        public List<CartItemViewModel> CartItems { get; set; }
        public int Promotion { get; set; }
        public string CouponCode { get; set; }
    }
}