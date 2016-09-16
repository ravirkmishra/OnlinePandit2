using CompleteMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CompleteMVC.ViewModel
{
    public class UserPhysicalDetailsVM: UserSignUpVM
    {
        public int id { get; set; }
        public int UserId { get; set; }
        public int UserHeightInch { get; set; }
        public int UserHeightFit { get; set; }
        public int UserBodyColourId { get; set; }
        public int UserDOBDD { get; set; }
        public int UserDOBMM { get; set; }
        public int UserDOBYYYY { get; set; }
        public DateTime UserDOBTime { get; set; }
        public DateTime UserDOBTimeHHMMSS { get; set; }
        public int UserDOBTimeHH { get; set; }
        public int UserDOBTimeMM { get; set; }
        public int UserDOBTimeSS { get; set; }
        public int WeightMeasure { get; set; }
        public Dictionary<int, string> listBodyColourId { get; set; }
    }
}
