using System.Web.Mvc; 

namespace OdeToFood.Controllers
{
    public class CuisineController : Controller
    {
        // GET: Cuisine
        public ActionResult Search()
        {
            return View();
        }
    }
}