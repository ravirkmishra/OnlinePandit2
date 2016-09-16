using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CompleteMVC.ViewModel
{
    public class LogInVM:BaseViewModel
    {
        [Required(ErrorMessage = "* Required Email Address"), EmailAddress(ErrorMessage = "*")]
        public string UserEmail { get; set; }

        [Required(ErrorMessage = "* Required Password")]
        public string UserPassword { get; set; }
    }
}