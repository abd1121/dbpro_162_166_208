using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TermProject.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();


            List<Category> h = db.Categories.ToList();
            
            ViewBag.Hos = h;
            
            
            return View();
        }

        public ActionResult Index1(int id)
        {
            dtbs15Entities db = new dtbs15Entities();



           
            var product = from s in db.Products select s;
            product = product.Where(s => s.CategoryId == id);


            return View(product.ToList());
        }
        public ActionResult Test()
        {
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult AdminPanel()
        {
            return View();
        }
        public ActionResult ManageSpecs()
        {
            return View();
        }


    }
}