using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace OnlineShop
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
            name: "lienhe",
            url: "lien-he",
            defaults: new { controller = "LienHe", action = "Index", id = UrlParameter.Optional },
            namespaces: new string[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
       name: "tintuc",
       url: "tin-tuc",
       defaults: new { controller = "TinTuc", action = "Index", id = UrlParameter.Optional },
       namespaces: new string[] { "OnlineShop.Controllers" }
       );
            routes.MapRoute(
       name: "danhmucsanpham",
       url: "danh-muc-san-pham/danh-muc/{id}",
       defaults: new { controller = "SanPham", action = "SanPhamTheoDanhMuc", id = UrlParameter.Optional },
       namespaces: new string[] { "OnlineShop.Controllers" }
       );
            routes.MapRoute(
            name: "trangchu",
            url: "trang-chu/gioi-thieu",
            defaults: new { controller = "Home", action = "GioiThieu" },
            namespaces: new string[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineShop.Controllers" }
            );
        }
    }
}
