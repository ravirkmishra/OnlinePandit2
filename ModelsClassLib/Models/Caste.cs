using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ModelClassLib.Models
{
    public class Caste
    {
        public int Id { get; set; }
        public int ReligionId { get; set; }
        public string CasteName { get; set; }
    }
}