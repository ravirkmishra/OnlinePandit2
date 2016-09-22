using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ViewModel
{
    public class UserDetailsVM:BaseViewModel
    {
        //public string UserName { get; set; }

        public int UserId { get; set; }
        public string UserEmail { get; set; }
        public string UserContact { get; set; }
    }
}