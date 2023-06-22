using SmartPhone_Shop.ViewModels.Catalog.Categories;
using SmartPhone_Shop.ViewModels.Catalog.Products;
using SmartPhone_Shop.ViewModels.Common;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SmartPhone_Shop.ApiIntegration
{
    public interface ICategoryApiClient
    {
        Task<PagedResult<CategoryViewModel>> GetAllPaging(GetManageProductPagingRequest request);

        Task<List<CategoryViewModel>> GetAll();

        Task<CategoryViewModel> GetById(int id);

        Task<bool> CreateCategory(CategoryCreateRequest request);

        Task<bool> UpdateCategory(CategoryUpdateRequest request);

        Task<bool> DeleteCategory(int id);
    }
}