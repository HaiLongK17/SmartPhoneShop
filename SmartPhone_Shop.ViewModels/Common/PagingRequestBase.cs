using System;
using System.Collections.Generic;
using System.Text;

namespace SmartPhone_Shop.ViewModels.Common
{
    public class PagingRequestBase
    {
        // lấy trang số bao nhiêu
        public int PageIndex { get; set; }

        // kích cỡ của trang là bao nhiêu
        public int PageSize { get; set; }

    }
}
