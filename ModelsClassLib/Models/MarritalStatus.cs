using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.ModelClassLib.Models
{
    [Table("tblMarritalStatus")]
    public class MarritalStatus
    {
        public int Id { get; set; }
        [Column("MarritalStatus")]
        public string MarritalStatusName { get; set; }
    }
}