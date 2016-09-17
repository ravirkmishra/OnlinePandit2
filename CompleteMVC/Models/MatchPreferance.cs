using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.Models
{
    [Table("UserMatchPreferances")]
    public class MatchPreferance
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int MatchHeightFitFrom { get; set; }
        public int MatchHeightInchFrom { get; set; }
        public int MatchHeightFitTo { get; set; }
        public int MatchHeightInchTo { get; set; }
        public int MatchAgeRangeFrom { get; set; }
        public int MatchAgeRangeTo { get; set; }
        public int MatchCountry { get; set; }
        public int MatchState { get; set; }
        public int MatchCity { get; set; }
        public int MatchMarritalStatus { get; set; }
        public int MatchReligion { get; set; }
        public int MatchCaste { get; set; }
        public int MatchSubCaste { get; set; }
        public int MatchLanguage { get; set; }
        public int MatchManglikState { get; set; }
        public int MatchEducationClass { get; set; }
        public int MatchEducationField { get; set; }
        public int MatchJobField { get; set; }
        public int MatchFoodHabbit { get; set; }
        public int MatchIsEggetarian { get; set; }
        public int MatchIsSmoke { get; set; }
        public int MatchIsDrink { get; set; }
        public int MatchSkinComplexion { get; set; }
        public int MatchBodyType { get; set; }
        public int MatchPD { get; set; }
        public string MatchAboutPartner { get; set; }
        public string GotraName { get; set; }
        public int RashiId { get; set; }
    }
}