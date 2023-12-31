﻿using SmartPhone_Shop.Data.Entities;
using SmartPhone_Shop.ViewModels.Utilities.Enums;
using System;
using System.Collections.Generic;

namespace SmartPhone_Shop.Data.Entities
{
    public class Order
    {
        public int Id { set; get; }
        public Guid? UserId { set; get; }
        public int? CouponId { get; set; }
        public DateTime OrderDate { set; get; }
        public Enums.OrderStatus Status { set; get; }
        public string ShipName { set; get; }
        public string ShipAddress { set; get; }
        public string ShipPhoneNumber { set; get; }
        public decimal Total { get; set; }
        public string PaymentMethod { get; set; }
        public List<OrderDetail> OrderDetails { get; set; }

        // có property Guid UserId cho nên có khóa ngoại AppUser
        public AppUser AppUser { get; set; }

        public Coupon Coupon { get; set; }
    }
}