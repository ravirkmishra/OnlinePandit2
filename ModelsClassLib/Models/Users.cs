using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;

namespace CompleteMVC.ModelClassLib.Models
{
    public class Users
    {
        [Key]
        public int UserId { get; set; }
        public string UserFirstName { get; set; }
        public string UserMiddleName { get; set; }
        public string UserLastName { get; set; }
        public int Gender { get; set; }
        public string UserEmail { get; set; }
        public string UserPassword { get; set; }
        public string UserContact { get; set; }
        
    }
}