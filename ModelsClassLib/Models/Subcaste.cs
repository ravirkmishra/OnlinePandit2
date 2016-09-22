using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ModelClassLib.Models
{
    public class Subcaste
    {
        public int Id { get; set; }
        public int CasteId { get; set; }
        public String SubCasteName { get; set; }
    }
}