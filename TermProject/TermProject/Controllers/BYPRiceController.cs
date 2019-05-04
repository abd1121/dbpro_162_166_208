using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using TermProject.Models;
using CrystalDecisions.CrystalReports.Engine;

namespace TermProject.Controllers
{
    public class BYPRiceController : Controller
    {
        // GET: BYPRice
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShowByPrice()
        {
            dtbs15Entities db = new dtbs15Entities();

            var c = (from b in db.Price_60000 select b).ToList();

            BYPRICE rpt = new BYPRICE();
            rpt.Load();
            rpt.SetDataSource(c);
            Stream s = rpt.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            return File(s, "application/pdf", "BYPRice.pdf");
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

        public ActionResult ShowByRam()
        {
            dtbs15Entities db = new dtbs15Entities();

            var c = (from b in db.BY_RAM select b).ToList();

            ByRam rpt = new ByRam();
            rpt.Load();
            rpt.SetDataSource(c);
            Stream s = rpt.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            return File(s, "application/pdf", "ByRam.pdf");
        }

        public ActionResult ShowByDisplay()
        {
            dtbs15Entities db = new dtbs15Entities();

            var c = (from b in db.By_Display select b).ToList();

            ByDisplay rpt = new ByDisplay();
            rpt.Load();
            rpt.SetDataSource(c);
            Stream s = rpt.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            return File(s, "application/pdf", "ByDisplay.pdf");
        }

        public ActionResult ShowByBrowser()
        {
            dtbs15Entities db = new dtbs15Entities();

            var c = (from b in db.By_Browser select b).ToList();

            ByBrowser rpt = new ByBrowser();
            rpt.Load();
            rpt.SetDataSource(c);
            Stream s = rpt.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            return File(s, "application/pdf", "Bybrowser.pdf");
        }

        public ActionResult ShowByOS()
        {
            dtbs15Entities db = new dtbs15Entities();

            var c = (from b in db.By_OS select b).ToList();

            ByOS rpt = new ByOS();
            rpt.Load();
            rpt.SetDataSource(c);
            Stream s = rpt.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            return File(s, "application/pdf", "ByOS.pdf");
        }

    }
}