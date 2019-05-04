using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class USBController : Controller
    {
        // GET: USB
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();

            var ca = db.USBs.ToList();
            List<USBViewModel> bc = new List<USBViewModel>();
            foreach (var c in ca)
            {

                USBViewModel b = new USBViewModel();

                b.id = c.id;
                b.Type = c.Type;
                bc.Add(b);
            }
            return View(bc);
           
        }

        // GET: USB/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: USB/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: USB/Create
        [HttpPost]
        public ActionResult Create(USBViewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                USB bc = new USB();
                bc.Type = collection.Type;
                db.USBs.Add(bc);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: USB/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: USB/Edit/5
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

        // GET: USB/Delete/5
        public ActionResult Delete(int id)
        {
            dtbs15Entities db = new dtbs15Entities();
            var bc = db.USBs.Where(x => x.id == id).SingleOrDefault();
            var result = db.USBs.Remove(bc);
            db.SaveChanges();



            return RedirectToAction("Index");
        }

        // POST: USB/Delete/5
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
