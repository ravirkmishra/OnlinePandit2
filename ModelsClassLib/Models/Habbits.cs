using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ModelClassLib.Models
{
    public class Habbits
    {
        public int Id { get; set; }
        public int isVegetarian { get; set; }
        public int isEggetarian { get; set; }
        public int isSmoke { get; set; }
        public int isDrink { get; set; }
    }
}