#pragma checksum "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "80f561976d96e0863fb7b0b661c39e47a3eb45fa"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared__Layout), @"mvc.1.0.view", @"/Views/Shared/_Layout.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using SmartPhone_Shop.WebApp;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using SmartPhone_Shop.WebApp.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using System.Globalization;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using Westwind.AspNetCore.Markdown;

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using System.Security.Claims;

#line default
#line hidden
#nullable disable
#nullable restore
#line 10 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 11 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using Newtonsoft.Json;

#line default
#line hidden
#nullable disable
#nullable restore
#line 12 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using SmartPhone_Shop.Utilities.Constants;

#line default
#line hidden
#nullable disable
#nullable restore
#line 13 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using SmartPhone_Shop.ViewModels.Sales;

#line default
#line hidden
#nullable disable
#nullable restore
#line 14 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\_ViewImports.cshtml"
using SmartPhone_Shop.WebApp.Controllers.Components;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"80f561976d96e0863fb7b0b661c39e47a3eb45fa", @"/Views/Shared/_Layout.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a591216cbbe5b5a5f0c7ea2ad9a4e51f94a360fa", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared__Layout : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Account", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("id", new global::Microsoft.AspNetCore.Html.HtmlString("logout_form"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Login", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Login", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Register", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "ViewBySearchProduct", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_8 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Home", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_9 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "get", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_10 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/site.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_11 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/cart.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
  
    var culture = CultureInfo.CurrentCulture.Name;

#line default
#line hidden
#nullable disable
            WriteLiteral("\n<!DOCTYPE html>\n<html lang=\"en\">\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa9520", async() => {
                WriteLiteral(@"
    <!-- favicon -->

    <meta charset=""utf-8"">
    <meta http-equiv=""X-UA-Compatible"" content=""IE=edge"">
    <meta name=""viewport"" content=""width=device-width, initial-scale=1"">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Google font -->
    <link href=""https://fonts.googleapis.com/css?family=Montserrat:400,500,700"" rel=""stylesheet"">

    <!-- Bootstrap -->
    <link type=""text/css"" rel=""stylesheet"" href=""/css/bootstrap.min.css"" />

    <!-- Slick -->
    <link type=""text/css"" rel=""stylesheet"" href=""/css/slick.css"" />
    <link type=""text/css"" rel=""stylesheet"" href=""/css/slick-theme.css"" />

    <!-- nouislider -->
    <link type=""text/css"" rel=""stylesheet"" href=""/css/nouislider.min.css"" />

    <!-- Font Awesome Icon -->
    <link rel=""stylesheet"" href=""/css/font-awesome.min.css"">

    <!-- Custom stlylesheet -->
    <link type=""text/css"" rel=""stylesheet"" href=""/css/style.css"" />

    <!-- HTML5 shim and Respond.js for IE8 ");
                WriteLiteral(@"support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src=""https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js""></script>
      <script src=""https://oss.maxcdn.com/respond/1.4.2/respond.min.js""></script>
    <![endif]-->
    <!--sweet aler 2-->
    <script src=""//cdn.jsdelivr.net/npm/sweetalert2@11""></script>
");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa12019", async() => {
                WriteLiteral("\n    <input type=\"hidden\" id=\"hidCulture\"");
                BeginWriteAttribute("value", " value=\"", 1672, "\"", 1688, 1);
#nullable restore
#line 44 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
WriteAttributeValue("", 1680, culture, 1680, 8, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" />\n    <input type=\"hidden\" id=\"hidBaseAddress\"");
                BeginWriteAttribute("value", " value=\"", 1737, "\"", 1774, 1);
#nullable restore
#line 45 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
WriteAttributeValue("", 1745, Configuration["BaseAddress"], 1745, 29, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" />\n    <!-- HEADER -->\n    <header class=\"header\">\n        <style>\n            .header {\n                background-color: red;\n            }\n        </style>\n        <!-- TOP HEADER -->\n        <div id=\"top-header\">\n            <div class=\"container\">\n\n");
#nullable restore
#line 57 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                 if (User.Identity.IsAuthenticated)
                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                <ul class=\"header-links pull-left\">\n");
#nullable restore
#line 60 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                       var claims = User.Claims.ToList();
                        var name = claims.FirstOrDefault(x => x.Type == ClaimTypes.GivenName).Value; 

#line default
#line hidden
#nullable disable
                WriteLiteral("                    <li><a href=\"#\">Xin chào <strong>");
#nullable restore
#line 62 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                                                Write(name);

#line default
#line hidden
#nullable disable
                WriteLiteral("</strong></a></li>\n                </ul> ");
#nullable restore
#line 63 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                      }
                else
                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                    <ul class=\"header-links pull-left\">\n                        <li><a href=\"#\">Xin chào <strong>quý khách!</strong></a></li>\n                    </ul>");
#nullable restore
#line 68 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                         }

#line default
#line hidden
#nullable disable
                WriteLiteral("\n");
#nullable restore
#line 70 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                 if (User.Identity.IsAuthenticated)
                {

#line default
#line hidden
#nullable disable
                WriteLiteral(@"                <style>
                    #logout-button {
                        padding: 0;
                        border: none;
                        background-color: transparent;
                    }

                    #logout_label {
                        color: #FFF;
                    }

                        #logout_label:hover {
                            color: #D10024;
                        }
                </style>
                                <ul class=""header-links pull-right"">
                        <li>");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa15998", async() => {
                    WriteLiteral("<i class=\"fa fa-user-o\"></i> Tài khoản");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("</li>\n                        <li><button form=\"logout_form\" id=\"logout-button\" type=\"submit\"><span id=\"logout_label\">Đăng xuất</span></button></li>\n                    </ul>\n                                    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa17684", async() => {
                    WriteLiteral("\n                                    ");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "action", 3, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                AddHtmlAttributeValue("", 3571, "/", 3571, 1, true);
#nullable restore
#line 91 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
AddHtmlAttributeValue("", 3572, culture, 3572, 8, false);

#line default
#line hidden
#nullable disable
                AddHtmlAttributeValue("", 3580, "/Login/Logout", 3580, 13, true);
                EndAddHtmlAttributeValues(__tagHelperExecutionContext);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_3.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(" ");
#nullable restore
#line 92 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                                            }
                                else
                                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                    <ul class=\"header-links pull-right\">\n                        <li>");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa20345", async() => {
                    WriteLiteral(" Đăng nhập");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_4.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_5.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("</li>\n                        <li>");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa21814", async() => {
                    WriteLiteral(" Đăng ký");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_6.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_5.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("</li>\n                    </ul>");
#nullable restore
#line 98 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                         }

#line default
#line hidden
#nullable disable
                WriteLiteral(@"            </div>
        </div>
        <!-- /TOP HEADER -->
        <!-- MAIN HEADER -->
        <style>
            #header {
            padding-top: 15px;
            padding-bottom: 15px;
            background-color: rgb(224,6,45);
        }
        </style>
        <div id=""header"">
            <!-- container -->
            <div class=""container"">
                <!-- row -->
                <div class=""row"">
                    <!-- LOGO -->
                    <div class=""col-md-3"">
                        <div class=""header-logo"">
                            <a href=""/"" class=""logo"">
                                <img src=""https://images.glints.com/unsafe/glints-dashboard.s3.amazonaws.com/company-logo/14f148d28df88bc5dbbabbfbb1332792.png"" style=""width: 250px; height: 70px;"">
                                <strong></strong>
                            </a>
                        </div>
                    </div>
                    <!-- /LOGO -->
                    <!-- SEARCH BAR -->
       ");
                WriteLiteral(@"             <style>
                    .header-search form .search-btn {
                        height: 40px;
                        width: 100px;
                        background: #1E1F29;
                        color: #FFF;
                        font-weight: 700;
                        border: none;
                        border-radius: 0px 40px 40px 0px;
                    }
                    </style>
                    <div class=""col-md-6"">
                        <div class=""header-search"">
                            ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa25139", async() => {
                    WriteLiteral("\n                                <input type=\"text\"");
                    BeginWriteAttribute("value", " value=\"", 5692, "\"", 5716, 1);
#nullable restore
#line 140 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
WriteAttributeValue("", 5700, ViewBag.Keyword, 5700, 16, false);

#line default
#line hidden
#nullable disable
                    EndWriteAttribute();
                    WriteLiteral(" name=\"keyword\" class=\"input\" placeholder=\"Tìm kiếm ở đây\" style=\"border-radius: 20px 0px 0px 20px  ;\" />\n                                <button type=\"submit\" class=\"search-btn\">Tìm</button>\n                            ");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_7.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_7);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_8.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_8);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_9.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_9);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"
                        </div>
                    </div>
                    <!-- /SEARCH BAR -->
                    <!-- ACCOUNT -->
                    <div class=""col-md-3 clearfix"">   
                        <div class=""header-ctn"">
                            <!-- Cart -->

");
#nullable restore
#line 151 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                             if (User.Identity.IsAuthenticated)
                            { 

#line default
#line hidden
#nullable disable
                WriteLiteral("                                <div class=\"dropdown\">\n                                <a");
                BeginWriteAttribute("href", " href=\"", 6412, "\"", 6433, 3);
                WriteAttributeValue("", 6419, "/", 6419, 1, true);
#nullable restore
#line 154 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
WriteAttributeValue("", 6420, culture, 6420, 8, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 6428, "/cart", 6428, 5, true);
                EndWriteAttribute();
                WriteLiteral(@" >
                                    <i class=""fa fa-shopping-cart""></i>
                                    <span>Giỏ hàng</span>
                                    <div class=""qty"" id=""lbl_number_of_items_header"">0</div>
                                </a>
                                </div>");
#nullable restore
#line 159 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
                                      }
                            else{
                            }

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
                        </div>
                        <!-- /Cart -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
        </div>
        <!-- /MAIN HEADER -->
    </header>
    <!-- /HEADER -->
    ");
#nullable restore
#line 176 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
Write(await Component.InvokeAsync("Navigation"));

#line default
#line hidden
#nullable disable
                WriteLiteral("\n    ");
#nullable restore
#line 177 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
Write(RenderBody());

#line default
#line hidden
#nullable disable
                WriteLiteral(@"
    <!-- NEWSLETTER -->
    <div id=""newsletter"" class=""section"">
        <!-- container -->
        <div class=""container"">
            <!-- row -->
            <div class=""row"">
                <div class=""col-md-12"">
                    <div class=""newsletter"">
                        <ul class=""newsletter-follow"">
                            <li>
                                <a href=""#""><i class=""fa fa-facebook""></i></a>
                            </li>
                            <li>
                                <a href=""#""><i class=""fa fa-twitter""></i></a>
                            </li>
                            <li>
                                <a href=""#""><i class=""fa fa-instagram""></i></a>
                            </li>
                            <li>
                                <a href=""#""><i class=""fa fa-pinterest""></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /r");
                WriteLiteral(@"ow -->
        </div>
        <!-- /container -->
    </div>
    <!-- /NEWSLETTER -->
    <!-- FOOTER -->
    <footer id=""footer"">
        <!-- top footer -->
        <div class=""section"">
            <!-- container -->
            <div class=""container"">
                <!-- row -->
                <div class=""row"">
                    <div class=""col-md-3 col-xs-6"">
                        <div class=""footer"">
                            <h3 class=""footer-title"">Về chúng tôi</h3>
                            <p>Hệ thống bán lẻ điện thoại di động, smartphone, iPad, laptop, phụ kiện chính hãng, giá tốt nhất. Kèm theo nhiều khuyến mãi hấp dẫn.</p>
                            <ul class=""footer-links"">
                                <li><a href=""#""><i class=""fa fa-map-marker""></i>123 TpHCM</a></li>
                                <li><a href=""#""><i class=""fa fa-phone""></i>0123456789</a></li>
                                <li><a href=""#""><i class=""fa fa-envelope-o""></i>carong904@gmail.com</a></li>
             ");
                WriteLiteral(@"               </ul>
                        </div>
                    </div>

                    <div class=""col-md-3 col-xs-6"">
                        <div class=""footer"">
                            <h3 class=""footer-title"">Danh mục</h3>
                            <ul class=""footer-links"">
                                <li><a href=""#"">iPhone</a></li>
                                <li><a href=""#"">Samsung</a></li>
                                <li><a href=""#"">Oppo</a></li>
                                <li><a href=""#"">Vivo</a></li>
                                <li><a href=""#"">Xiaomi</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class=""clearfix visible-xs""></div>

                    <div class=""col-md-3 col-xs-6"">
                        <div class=""footer"">
                            <h3 class=""footer-title"">Thông tin</h3>
                            <ul class=""footer-links"">
                                <li>");
                WriteLiteral(@"<a href=""#"">Về chúng tôi</a></li>
                                <li><a href=""#"">Liên hệ</a></li>
                                <li><a href=""#"">Chính sách bảo mật</a></li>
                                <li><a href=""#"">Điều khoản và điều kiện</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class=""col-md-3 col-xs-6"">
                        <div class=""footer"">
                            <h3 class=""footer-title"">Dịch vụ</h3>
                            <ul class=""footer-links"">
                                <li><a href=""#"">Tài khoản</a></li>
                                <li><a href=""#"">Giỏ hàng</a></li>
                                <li><a href=""#"">Trạng thái đơn hàng</a></li>
                                <li><a href=""#"">Hỗ trợ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /co");
                WriteLiteral(@"ntainer -->
        </div>
        <!-- /top footer -->
    </footer>
    <!-- /FOOTER -->
    <!-- jQuery Plugins -->
    <script src=""/js/jquery.min.js""></script>
    <script src=""/js/bootstrap.min.js""></script>
    <script src=""/js/slick.min.js""></script>
    <script src=""/js/nouislider.min.js""></script>
    <script src=""/js/jquery.zoom.min.js""></script>
    <script src=""/js/main.js""></script>
    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa35157", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_10);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "80f561976d96e0863fb7b0b661c39e47a3eb45fa36256", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_11);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n    <script>\n        var siteController = new SiteController();\n        siteController.initialize();\n    </script>\n    ");
#nullable restore
#line 287 "D:\.NET Core\ProjectPV\SmartPhone_Shop\SmartPhone_Shop.WebApp\Views\Shared\_Layout.cshtml"
Write(RenderSection("scripts", required: false));

#line default
#line hidden
#nullable disable
                WriteLiteral("\n");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n</html>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public Microsoft.Extensions.Configuration.IConfiguration Configuration { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591