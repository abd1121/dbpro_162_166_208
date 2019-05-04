using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TermProject.Models;
using CrystalDecisions.CrystalReports.Engine;
using System.IO;


namespace TermProject.Controllers
{
    public class ByBAckCameraController : Controller
    {
        // GET: ByBAckCamera
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ShowByBackCamera()
        {
            dtbs15Entities db = new dtbs15Entities();

            var c = (from b in db.BY_BackCamera16MP select b).ToList();

            BackCamera rpt = new BackCamera();
            rpt.Load();
            rpt.SetDataSource(c);
            Stream s = rpt.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            return File(s, "application/pdf", "BackCamera.pdf");
        }
    }

}