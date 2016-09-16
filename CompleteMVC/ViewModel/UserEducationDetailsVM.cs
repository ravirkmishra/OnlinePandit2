using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ViewModel
{
    public class UserEducationDetailsVM: UserSignUpVM
    {
        public int id { get; set; }
        public int UserId { get; set; }
        public string UserMaxQualificationClass { get; set; }
        public string UserEducationField { get; set; }
        public string UserEducationSchool { get; set; }
        public int UserJobStatus { get; set; }
        public string UserJobCompany { get; set; }
        public string UserJobField { get; set; }
        public string UserJobDesc { get; set; }
        public string UserJobCountry { get; set; }
        public string UserJobState { get; set; }
        public string UserJobCity { get; set; }
        public int UserIncomeId { get; set; }
        public string Designation { get; set; }
        public Dictionary<int, string> listQualificationClass { get; set; }
        public Dictionary<int, string> listEducationField { get; set; }
        public Dictionary<int, string> listJobField { get; set; }
        public Dictionary<int, string> listCountry { get; set; }
        public Dictionary<int, string> listState { get; set; }
        public Dictionary<int, string> listCity{ get; set; }
        public Dictionary<int, string> listUserIncome { get; set; }

    }
}
