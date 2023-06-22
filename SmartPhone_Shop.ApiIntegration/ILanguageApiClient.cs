using SmartPhone_Shop.ViewModels.Common;
using SmartPhone_Shop.ViewModels.System.Languages;
using SmartPhone_Shop.ViewModels.Utilities.Slides;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartPhone_Shop.ApiIntegration
{
    public interface ILanguageApiClient
    {
        Task<ApiResult<List<LanguageViewModel>>> GetAll();
    }
}