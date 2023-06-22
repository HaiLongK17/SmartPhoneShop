using SmartPhone_Shop.ViewModels.Catalog.Products;
using SmartPhone_Shop.ViewModels.Common;
using SmartPhone_Shop.ViewModels.Sales;
using SmartPhone_Shop.ViewModels.Utilities.Enums;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace SmartPhone_Shop.ApiIntegration
{
    public interface IOrderApiClient
    {
        Task<string> CreateOrder(CheckoutRequest request);

        Task<PagedResult<OrderViewModel>> GetPagings(GetManageOrderPagingRequest request);

        Task<bool> UpdateOrderStatus(int id);

        Task<bool> CancelOrderStatus(int id);

        Task<OrderByUserViewModel> GetOrderByUser(string id);

        Task<OrderViewModel> GetOrderById(int orderId);
    }
}