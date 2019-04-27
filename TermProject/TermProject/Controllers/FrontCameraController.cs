using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;

namespace TermProject.Controllers
{
    public class FrontCameraController : Controller
    {
        // GET: FrontCamera
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();

            var ca = db.Front_Camera.ToList();
            List<FrontCameraViewModel> fc = new List<FrontCameraViewModel>();
            foreach (var c in ca)
            {

                FrontCameraViewModel b = new FrontCameraViewModel();

                b.id = c.Id;
                b.Pixel = c.Pixel;
                fc.Add(b);
            }
            return View(fc);
        }

        // GET: FrontCamera/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: FrontCamera/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: FrontCamera/Create
        [HttpPost]
        public ActionResult Create(FrontCameraViewModel Collection)
        {
            try
            {
                // TODO: Add insert logic here
                dtbs15Entities db = new dtbs15Entities();
                Front_Camera fc = new Front_Camera();
                fc.Pixel = Collection.Pixel;
                db.Front_Camera.Add(fc);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: FrontCamera/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: FrontCamera/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FrontCameraViewModel collection)
        {
            try
            {
                // TODO: Add update logic here
                dtbs15Entities db = new dtbs15Entities();
                Front_Camera fc = new Front_Camera();
                var c = db.Front_Camera.Where(x => x.Id == id).SingleOrDefault();
                c.Pixel = collection.Pixel;
                db.SaveChanges();

                // TODO: Add update logic here

                return RedirectToAction("Index");
                
            }
            catch
            {
                return View();
            }
        }

        // GET: FrontCamera/Delete/5
        public ActionResult Delete(int id)
        {
            dtbs15Entities db = new dtbs15Entities();
            var fc = db.Front_Camera.Where(x => x.Id == id).SingleOrDefault();
            var result = db.Front_Camera.Remove(fc);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // POST: FrontCamera/Delete/5
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
