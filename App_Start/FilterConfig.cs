using System.Web;
using System.Web.Mvc;

namespace Empresa_All_Stars_Control_Alquiler
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
