using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class ROMController : Controller
    {
        // GET: ROM
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();

            var ca = db.ROMs.ToList();
            List<RomViewModel> bc = new List<RomViewModel>();
            foreach (var c in ca)
            {

                RomViewModel b = new RomViewModel();

                b.rid = c.id;
                b.Capacity = c.ROM1;
                bc.Add(b);
            }
            return View(bc);
        }

        // GET: ROM/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ROM/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ROM/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ROM/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ROM/Edit/5
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

        // GET: ROM/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ROM/Delete/5
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
