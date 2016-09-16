using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.Models
{
    [Table("UserEducationCareer")]
    public class UserEducationCareer
    {
          [Column("id")]
        public int id { get; set; }
        [Column("UserId")]
        public int UserId { get; set; }
        [Column("UserMaxQualificationClass")]
        public string UserMaxQualificationClass { get; set; }
        [Column("UserEducationField")]
        public string UserEducationField { get; set; }
        [Column("UserEducationSchool")]
        public string UserEducationSchool { get; set; }
        [Column("UserJobStatus")]
        public int UserJobStatus { get; set; }
        [Column("UserJobCompany")]
        public string UserJobCompany { get; set; }
        [Column("UserJobField")]
        public string UserJobField { get; set; }
        [Column("UserJobDesc")]
        public string UserJobDesc { get; set; }
        [Column("UserJobCountry")]
        public string UserJobCountry { get; set; }
        [Column("UserJobState")]
        public string UserJobState { get; set; }
        [Column("UserJobCity")]
        public string UserJobCity { get; set; }

        [Column("UserIncomeId")]
        public int UserIncomeId { get; set; }
        [Column("Designation")]
        public string Designation { get; set; }
    }
}
