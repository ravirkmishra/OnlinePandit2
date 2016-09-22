using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.ModelClassLib.Models
{
    [Table("tblManglikState")]
    public class ManglikState
    {
        public int Id { get; set; }
        [Column("ManglikState")]
        public string ManglikStateName { get; set; }
    }
}