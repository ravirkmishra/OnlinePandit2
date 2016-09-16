using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace CompleteMVC.Models
{
    public class PanditBookingModel
    {
        [Key]
        public int BookingNumber { get; set; }
        public int PanditId { get; set; }
      
        public int UserId { get; set; }
    }
}