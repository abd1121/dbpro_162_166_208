using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }

        // GET: Product/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Product/Create
        [HttpGet]
        public ActionResult Create()
        {
            dtbs15Entities db = new dtbs15Entities();
            

            List<Category> h = db.Categories.ToList();
            ViewBag.Hos = h;
            List<Front_Camera> fc = db.Front_Camera.ToList();
            ViewBag.cam = fc;
            List<Back_Camera> bc = db.Back_Camera.ToList();
            ViewBag.bcam = bc;
            List<OperatingSystem> os = db.OperatingSystems.ToList();
            ViewBag.ops = os;
            List<RAM> rm = db.RAMs.ToList();
            ViewBag.rms = rm;
            List<Display> dp = db.Displays.ToList();
            ViewBag.dis = dp;
            List<ROM> rom = db.ROMs.ToList();
            ViewBag.roms = rom;
            List<Connectivity> con = db.Connectivities.ToList();
            ViewBag.cnc = con;
            List<USB> usb = db.USBs.ToList();
            ViewBag.usbs = usb;
            List<Browser> brs = db.Browsers.ToList();
            ViewBag.brw = brs;
            List<Processor> prs = db.Processors.ToList();
            ViewBag.pro = prs;


            return View();
        }

        // POST: Product/Create
        [HttpPost]
          
        public ActionResult Create(ProductViewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                Product bc = new Product();
                
                
                
                bc.Add_Date = collection.Add_Date;
                bc.Browser_Id = collection.Browser_Id;
                bc.RamId = collection.RAMid;
                bc.ROM_Id = collection.ROM_Id;
                bc.Name = collection.name;
                bc.OS_Id = collection.OS_Id;
                bc.Processor_Id = collection.Processor_Id;
                bc.DPT_Id = collection.DPT_Id;
                bc.BcamId = collection.BcamId;
                bc.Price = collection.price;
                bc.Wifi = collection.WIFI;
                bc.USB_Id = collection.USB_Id;
                bc.Resolution = collection.Resolution;
                bc.CategoryId = collection.categoryID;
                bc.CardSupport = collection.card_support;
                bc.Connectivity_Id = collection.Connectivity_Id;
                bc.FcamId = collection.FcamId;
                bc.Size = collection.size;

                  
                db.Products.Add(bc);
                db.SaveChanges();
              
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Product/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Product/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Product/Delete/5
        public ActionResult Delete(int id)
        {
            dtbs15Entities db = new dtbs15Entities();

            var c = db.Products.Where(x => x.Id == id).First();
            db.Products.Remove(c);
            return RedirectToAction("Index");
        }

        // POST: Product/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
