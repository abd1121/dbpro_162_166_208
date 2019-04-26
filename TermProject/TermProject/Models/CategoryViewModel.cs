using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TermProject.Models
{
    public class CategoryViewModel
    {
        public int id { get; set; }
        public string manufacturer { get; set; }
        public DateTime Add_Date { get; set; }
        public DateTime Update_Date { get; set; }
    }
}