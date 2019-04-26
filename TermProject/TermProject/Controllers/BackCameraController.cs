using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;
using Microsoft.AspNet;
namespace TermProject.Controllers
{
    public class BackCameraController : Controller
    {
        // GET: BackCamera
        public ActionResult Index()
        {
            dtbs15Entities db = new dtbs15Entities();
            
            var ca = db.Back_Camera.ToList();
            List<BacKCameraVIewModel> bc = new List<BacKCameraVIewModel>();
            foreach(var c in ca)
            {

                BacKCameraVIewModel b = new BacKCameraVIewModel();

                b.bid = c.Id;
                b.Pixel = c.Pixel;
                bc.Add(b);
            }
                    return View(bc);
        }

        // GET: BackCamera/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: BackCamera/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BackCamera/Create
        [HttpPost]
        public ActionResult Create(BacKCameraVIewModel collection)
        {
            try
            {
                // TODO: Add insert logic here
                dtbs15Entities db = new dtbs15Entities();
                Back_Camera bc = new Back_Camera();
                bc.Pixel = collection.Pixel;
                db.Back_Camera.Add(bc);
                db.SaveChanges();
                return RedirectToAction("~/Home/AdminPanel");
            }
            catch
            {
                return View();
            }
        }

        // GET: BackCamera/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: BackCamera/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, BacKCameraVIewModel collection)
        {
            try
            {
                dtbs15Entities db = new dtbs15Entities();
                Back_Camera bc = new Back_Camera();
                var c = db.Back_Camera.Where(x => x.Id == id).SingleOrDefault();
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

        // GET: BackCamera/Delete/5
        public ActionResult Delete(int? id)
        {
            dtbs15Entities db = new dtbs15Entities();
            var bc = db.Back_Camera.Where(x => x.Id == id).SingleOrDefault();
            var result = db.Back_Camera.Remove(bc);
            db.SaveChanges();



            return RedirectToAction("Index");
        }

        // POST: BackCamera/Delete/5
        [HttpPost]
        public ActionResult Delete(int? id, BacKCameraVIewModel collection)
        {
            try
            {
                // TODO: Add delete logic here
                dtbs15Entities db = new dtbs15Entities();
              
                var c = db.Back_Camera.Where(x => x.Id == id).First();
                db.Back_Camera.Remove(c);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
