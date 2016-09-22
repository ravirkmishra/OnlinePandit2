using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace CompleteMVC.ModelClassLib.Models
{
    public class PujaModel
    {
        [Key]
        public int PujaId { get; set; }
        public string PujaName { get; set; }
        public string PujaDescription { get; set; }
        public string PanditId { get; set; }
    }
}