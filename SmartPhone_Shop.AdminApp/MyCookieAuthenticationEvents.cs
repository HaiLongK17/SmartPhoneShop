﻿using Microsoft.AspNetCore.Authentication.Cookies;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartPhone_Shop.AdminApp
{
    public class MyCookieAuthenticationEvents : CookieAuthenticationEvents
    {
        public override async Task ValidatePrincipal(CookieValidatePrincipalContext context)
        {
            context.Request.HttpContext.Items.Add("ExpiresUTC", context.Properties.ExpiresUtc);
        }
    }
}
