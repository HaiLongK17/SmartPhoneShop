﻿using SmartPhone_Shop.ViewModels.Catalog.Categories;
using SmartPhone_Shop.ViewModels.Catalog.Products;
using SmartPhone_Shop.ViewModels.Common;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SmartPhone_Shop.Application.Catalog.Categories
{
    public interface ICategoryService
    {
        Task<int> Create(CategoryCreateRequest request);

        Task<int> Update(CategoryUpdateRequest request);

        Task<int> Delete(int categoryId);

        Task<PagedResult<CategoryViewModel>> GetAllPaging(GetManageProductPagingRequest request);

        Task<CategoryViewModel> GetById(int id);

        Task<List<CategoryViewModel>> GetAll();
    }
}