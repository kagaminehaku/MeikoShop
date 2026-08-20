using System.Web;
using System.Web.Mvc;
using MeikoShop.Models;

namespace MeikoShop
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }

    public class AdminAuthorizeAttribute : AuthorizeAttribute
    {
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            var user = httpContext.Session["use"] as Nguoidung;
            // Assuming IDQuyen = 1 is Admin. 
            if (user != null && user.IDQuyen == 1)
            {
                return true;
            }
            return false;
        }

        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            filterContext.Result = new RedirectResult("~/User/Dangnhap");
        }
    }
}
