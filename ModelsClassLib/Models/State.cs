using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ModelClassLib.Models
{
    public class State
    {
        public int Id { get; set; }
        public int CountryId { get; set; }
        public string StateName { get; set; }
    }
}