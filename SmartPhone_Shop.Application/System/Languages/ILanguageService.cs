using SmartPhone_Shop.ViewModels.Common;
using SmartPhone_Shop.ViewModels.System.Languages;
using SmartPhone_Shop.ViewModels.System.Users;
using SmartPhone_Shop.ViewModels.Utilities.Slides;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SmartPhone_Shop.Application.System.Languages
{
    public interface ILanguageService
    {
        Task<ApiResult<List<LanguageViewModel>>> GetAll();
    }
}
