﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.Models
{
    public class User_PhysiqueDetails
    {
         public int id { get; set; }
        public int UserId { get; set; }
        public int UserHeightInch { get; set; }
        public int UserHeightFit { get; set; }
        public int UserBodyColour { get; set; }
        public DateTime UserDOB { get; set; }
        [Column("UserDOBTimeHHMMSS")]
        public DateTime UserDOBTimeHHMMSS { get; set; }
        [Column("WeightMeasure")]
        public int WeightMeasure { get; set; }
    }
}
