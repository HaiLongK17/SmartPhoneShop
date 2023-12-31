﻿using SmartPhone_Shop.Data.Entities;
using SmartPhone_Shop.Data.Enums;
using System;
using System.Collections.Generic;
using System.Text;

namespace SmartPhone_Shop.Data.Entities
{
    public class Category
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public List<Product> Products { get; set; }
    }
}
