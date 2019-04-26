using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class OperatinSystemController : Controller
    {
        // GET: OperatinSystem
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();

            var ca = db.OperatingSystems.ToList();
            List<OSViewModel> bc = new List<OSViewModel>();
            foreach (var c in ca)
            {
            
                OSViewModel b = new OSViewModel();

                b.id = c.Id;
                b.OS = c.OS;
                bc.Add(b);
            }
            return View(bc);
        }

        // GET: OperatinSystem/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: OperatinSystem/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: OperatinSystem/Create
        [HttpPost]
        public ActionResult Create(OSViewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                OperatingSystem bc = new OperatingSystem();
                bc.OS = collection.OS;
                db.OperatingSystems.Add(bc);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: OperatinSystem/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: OperatinSystem/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, OSViewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                OperatingSystem bc = new OperatingSystem();
                var c = db.OperatingSystems.Where(x => x.Id == id).SingleOrDefault();
                c.OS = collection.OS;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: OperatinSystem/Delete/5
        public ActionResult Delete(int id)
        {
            dtbs15Entities db = new dtbs15Entities();
            var bc = db.OperatingSystems.Where(x => x.Id == id).SingleOrDefault();
            var result = db.OperatingSystems.Remove(bc);
            db.SaveChanges();



            return RedirectToAction("Index");
        }

        // POST: OperatinSystem/Delete/5
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
