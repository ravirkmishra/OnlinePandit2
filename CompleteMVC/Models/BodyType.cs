using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.Models
{
    [Table("tblBodyType")]
    public class BodyType
    {
        public int Id { get; set; }
        [Column("BodyType")]
        public string BodyTypeName { get; set; }
    }
}