using SmartPhone_Shop.ViewModels.System.Languages;
using SmartPhone_Shop.ViewModels.Utilities.Slides;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartPhone_Shop.AdminApp.Models
{
    public class NavigationViewModel
    {
        public List<LanguageViewModel> Languages { get; set; }

        public string CurrentLanguageId { get; set; }
        public string ReturnUrl { get; set; }
    }
}