using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TermProject.Models
{
    public class ProductViewModel
    {
        public int id { get; set; }
        public string name { get; set; }
        public int categoryID { get; set; }
        public DateTime Add_Date { get; set; }
        public DateTime Update_Date { get; set; }
        public bool WIFI { get; set; }
        public float size { get; set; }
        public string Resolution { get; set; }
        public string image1 { get; set; }
        public string image2 { get; set; }
        public string image3 { get; set; }
        public bool card_support { get; set; }
        public int price { get; set; }
        public int RAMid { get; set; }
        public int BcamId { get; set; }
        public int FcamId { get; set; }
        public int DPT_Id { get; set; }
        public int USB_Id { get; set; }
        public int OS_Id { get; set; }
        public int ROM_Id { get; set; }
        public int Connectivity_Id { get; set; }
        public int Processor_Id { get; set; }
        public int Browser_Id { get; set; }






    }
}