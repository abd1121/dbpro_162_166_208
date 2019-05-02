using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class DisplayController : Controller
    {
        // GET: Display
        public ActionResult Index()
        {
            return View();
        }

        // GET: Display/Details/5
        public ActionResult Details(int id)
        {
            dtbs15Entities db = new dtbs15Entities();

            var ca = db.Displays.ToList();
            List<DisplayViewModel> bc = new List<DisplayViewModel>();
            foreach (var c in ca)
            {

                DisplayViewModel b = new DisplayViewModel();

                b.id= c.id;
                b.Technology = c.Technology;
                bc.Add(b);
            }
            return View(bc);
        }

        // GET: Display/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Display/Create
        [HttpPost]
        public ActionResult Create(DisplayViewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                Display bc = new Display();
                bc.Technology = collection.Technology;
                db.Displays.Add(bc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Display/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Display/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, DisplayViewModel collection)
        {
            try
            {
                // TODO: Add update logic here
                dtbs15Entities db = new dtbs15Entities();
                Display bc = new Display();
                var c = db.Displays.Where(x => x.id == id).SingleOrDefault();
                c.Technology = collection.Technology;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Display/Delete/5
        public ActionResult Delete(int id)
        {
            dtbs15Entities db = new dtbs15Entities();
            var bc = db.Displays.Where(x => x.id == id).SingleOrDefault();
            var result = db.Displays.Remove(bc);
            db.SaveChanges();



            return RedirectToAction("Index");
        }

        // POST: Display/Delete/5
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
