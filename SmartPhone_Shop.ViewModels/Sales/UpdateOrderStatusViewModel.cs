using SmartPhone_Shop.ViewModels.Utilities.Enums;
using System;
using System.Collections.Generic;
using System.Text;

namespace SmartPhone_Shop.ViewModels.Sales
{
    public class UpdateOrderStatusViewModel
    {
        public int OrderId { get; set; }
        public OrderStatus status { get; set; }
    }
}
