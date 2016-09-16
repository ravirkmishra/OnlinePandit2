using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CompleteMVC.Models
{
    public class PanditModel
    {
        [Key]
        public int PanditId { get; set; }
        public string PanditName { get; set; }
        public string PanditEmail { get; set; }
        public string PanditAddress { get; set; }
    }
}