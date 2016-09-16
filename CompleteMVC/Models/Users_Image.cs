using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.Models
{
    public class Users_Image
    {
        public int id { get; set; }
        public int UserId { get; set; }
        public byte[] UserImageFile { get; set; }
    }
}