using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ViewModel
{
    public class Users_ImageVM:UserSignUpVM
    {
        public int id { get; set; }
        public int UserId { get; set; }
        public byte[] UserImageFile { get; set; }
    }
}