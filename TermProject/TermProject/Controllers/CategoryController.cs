using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers

{
    public class CategoryController : Controller
    {
        // GET: Category
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();

            var cat = db.Categories.ToList();
            List<CategoryViewModel> fc = new List<CategoryViewModel>();
            foreach (var c in cat)
            {

                CategoryViewModel ct = new CategoryViewModel();

                ct.manufacturer = c.Manufacturer;
                ct.Add_Date = c.Add_Date;
                ct.Update_Date = Convert.ToDateTime(c.Update_Date);
                
                fc.Add(ct);
            }
            return View(fc);
        }

        // GET: Category/Details/5
        public ActionResult Details(int id)
        {

            return View();
        }

        // GET: Category/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Category/Create
        [HttpPost]
        public ActionResult Create(CategoryViewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                Category c = new Category();
                c.Add_Date = DateTime.Now.Date;
                c.Manufacturer = collection.manufacturer;
                
                db.Categories.Add(c);
                db.SaveChanges();


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Category/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Category/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, CategoryViewModel collection)
        {
            try
            {
                // TODO: Add update logic here

                dtbs15Entities db = new dtbs15Entities();
                Category con = new Category();
                var c = db.Categories.Where(x => x.id == id).SingleOrDefault();
                c.Manufacturer = collection.manufacturer;
                c.Add_Date = collection.Add_Date;
                c.Update_Date = collection.Update_Date;
                db.SaveChanges();
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Category/Delete/5
        public ActionResult Delete(int id)
        {
            dtbs15Entities db = new dtbs15Entities();
            var bc = db.Categories.Where(x => x.id == id).SingleOrDefault();
            var result = db.Categories.Remove(bc);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // POST: Category/Delete/5
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
