using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CompleteMVC.ViewModel
{
    public class UserSignUpVM:BaseViewModel
    {
        [Required(ErrorMessage ="* Required First Name")]
        public string UserFirstName { get; set; }
        public string UserMiddleName { get; set; }
        [Required(ErrorMessage = "* Required Last Name")]
        public string UserLastName { get; set; }
        [Required(ErrorMessage = "* Required Password")]
        public string UserPassword { get; set; }

        [Required(ErrorMessage = "* Confirm Password"), Compare("UserPassword")]
        public string UserConfirmPassword { get; set; }
        [Required(ErrorMessage = "* Required Email Address"), EmailAddress(ErrorMessage = "*")]
        public string UserEmail { get; set; }
        [Required(ErrorMessage = "* Required Contact Details")]
        public string UserContact { get; set; }

    }
}