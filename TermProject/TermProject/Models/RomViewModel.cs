using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TermProject.Models
{
    public class RomViewModel
    {
        [Key]
        public int rid { get; set; }
        public string Capacity { get; set; }
    }
}