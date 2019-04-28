using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class RAMController : Controller
    {
        // GET: RAM
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();

            var ca = db.RAMs.ToList();
            List<RamViewModel> bc = new List<RamViewModel>();
            foreach (var c in ca)
            {
            
                RamViewModel b = new RamViewModel();

                b.id= c.Id;
                b.Capacity = c.Capacity;
                bc.Add(b);
            }
            return View(bc);
        }

        // GET: RAM/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: RAM/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: RAM/Create
        [HttpPost]
        public ActionResult Create(RamViewModel collection)
        {
            try
            {
                // TODO: Add insert logic here

                dtbs15Entities db = new dtbs15Entities();
                RAM bc = new RAM();
                bc.Capacity = collection.Capacity;
                db.RAMs.Add(bc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: RAM/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: RAM/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, RamViewModel collection)
        {
            try
            {
                // TODO: Add update logic here

                dtbs15Entities db = new dtbs15Entities();
                RAM bc = new RAM();
                var c = db.RAMs.Where(x => x.Id == id).SingleOrDefault();
                c.Capacity = collection.Capacity;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: RAM/Delete/5
        public ActionResult Delete(int id)
        {
            dtbs15Entities db = new dtbs15Entities();
            var bc = db.RAMs.Where(x => x.Id == id).SingleOrDefault();
            var result = db.RAMs.Remove(bc);
            db.SaveChanges();



            return RedirectToAction("Index");
        }

        // POST: RAM/Delete/5
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
