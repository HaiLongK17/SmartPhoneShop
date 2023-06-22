using SmartPhone_Shop.ViewModels.Common;
using System;
using System.Collections.Generic;
using System.Text;

namespace SmartPhone_Shop.ViewModels.Sales
{
    public class GetManageOrderPagingRequest : PagingRequestBase
    {
        public string Keyword { get; set; }
        public string SortOption { get; set; }
    }
}