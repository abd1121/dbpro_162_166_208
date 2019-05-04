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
        public ActionResult Create()
        {
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
                bc.BcamId = collection.BcamId;
                bc.Price = collection.price;
                bc.Wifi = collection.WIFI;
                bc.USB_Id = collection.USB_Id;
                bc.Resolution = collection.Resolution;
                bc.CategoryId = collection.categoryID;
                bc.CardSupport = collection.card_support;
                bc.Connectivity_Id = collection.Connectivity_Id;
                bc.FcamId = collection.FcamId;

                  
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
