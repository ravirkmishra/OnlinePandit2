using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.Models
{
    [Table("tblGender")]
    public class Gender
    {
        public int Id { get; set; }
        [Column("GenderName")]
        public string GenderName { get; set; }
    }
}