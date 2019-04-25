using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class ConnectivityController : Controller
    {
        // GET: Connectivity
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();

            var con = db.Connectivities.ToList();
            List<FrequencyViewModel> fc = new List<FrequencyViewModel>();
            foreach (var c in con)
            {

                FrequencyViewModel f = new FrequencyViewModel();

                f._2G_Band = c.C2G_Band;
                f._3G_Band = c.C3G_Band;
                f._4G_Band = c.C4G_Band;
                fc.Add(f);
            }
            return View(fc);
        }

        // GET: Connectivity/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Connectivity/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Connectivity/Create
        [HttpPost]
        public ActionResult Create(FrequencyViewModel collection)
        {
            try
            {
                // TODO: Add insert logic here

                dtbs15Entities db = new dtbs15Entities();
                Connectivity c = new Connectivity();
                c.C2G_Band = collection._2G_Band;
                c.C3G_Band = collection._3G_Band;
                c.C4G_Band = collection._4G_Band;
                db.Connectivities.Add(c);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Connectivity/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Connectivity/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FrequencyViewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                Connectivity con = new Connectivity();
                var c = db.Connectivities.Where(x => x.id == id).SingleOrDefault();
                c.C2G_Band = collection._2G_Band;
                c.C3G_Band = collection._3G_Band;
                c.C4G_Band = collection._4G_Band;
                db.SaveChanges();
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Connectivity/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Connectivity/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                dtbs15Entities db = new dtbs15Entities();
                var bc = db.Connectivities.Where(x => x.id == id).SingleOrDefault();
                var result = db.Connectivities.Remove(bc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
