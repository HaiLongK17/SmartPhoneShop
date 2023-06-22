using SmartPhone_Shop.ViewModels.Catalog.Products;
using SmartPhone_Shop.ViewModels.Common;
using SmartPhone_Shop.ViewModels.Sales;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SmartPhone_Shop.ApiIntegration
{
    public interface ICouponApiClient
    {
        Task<List<CouponViewModel>> GetAll();

        Task<CouponViewModel> GetById(int id);

        Task<bool> CreateCoupon(CouponCreateRequest request);

        Task<bool> UpdateCoupon(CouponUpdateRequest request);

        Task<bool> DeleteCoupon(int id);

        Task<PagedResult<CouponViewModel>> GetAllPaging(GetManageProductPagingRequest request);
    }
}