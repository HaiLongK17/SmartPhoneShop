﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SmartPhone_Shop.ViewModels.System.Users
{
    public class ForgotPasswordViewModel
    {
        [EmailAddress]
        public string Email { get; set; }
    }
}