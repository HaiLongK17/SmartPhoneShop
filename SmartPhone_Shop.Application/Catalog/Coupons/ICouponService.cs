using SmartPhone_Shop.ViewModels.Catalog.Products;
using SmartPhone_Shop.ViewModels.Common;
using SmartPhone_Shop.ViewModels.Sales;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SmartPhone_Shop.Application.Catalog.Coupons
{
    public interface ICouponService
    {
        Task<int> Create(CouponCreateRequest request);

        Task<int> Update(CouponUpdateRequest request);

        Task<int> Delete(int couponId);

        Task<PagedResult<CouponViewModel>> GetAllPaging(GetManageProductPagingRequest request);

        Task<List<CouponViewModel>> GetAll();

        Task<CouponViewModel> GetById(int id);
    }
}