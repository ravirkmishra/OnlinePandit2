using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.ModelClassLib.Models
{
    public class UserSocialDetails
    {
         public int id { get; set; }
        public int UserId { get; set; }
        public int UserReligionId { get; set; }
        public int UserCasteId { get; set; }
        public int UserSubCasteId { get; set; }
        public int RashiId { get; set; }
        public string GotraName { get; set; }
        public int UserLivingCountryId { get; set; }
        public int UserLivingStateId { get; set; }
        public int UserLivingCityId { get; set; }

        public int UserLivingZipCode { get; set; }
        public string UserCompleteAddress { get; set; }
        public string AboutYou { get; set; }
        public string AboutFamily { get; set; }
        public int NoOfBrothers { get; set; }

        public int NoOfSisters { get; set; }
        public int NoOfBrothersMarried { get; set; }
        public int NoOfSistersMarried { get; set; }

        public int FamilyIncomeId { get; set; }
        public bool IsJointFamily { get; set; }
        public int FamilyResidingCountryId { get; set; }
        public int FamilyResidingStateId { get; set; }
        public int FamilyResidingCityId { get; set; }

        public int FatherWorkingStatus { get; set; }
        public int FatherOccupation { get; set; }
        public int MotherWorkingStatus { get; set; }
        public int MotherOccupation { get; set; }
        public int LanguageKnown { get; set; }
        public int DressingStyle { get; set; }

        [Column("ProfileManagerName")]
        public int ProfileManager { get; set; }

        //public Dictionary<int, string> listReligion { get; set; }
        //public Dictionary<int, string> listCaste { get; set; }
        //public Dictionary<int, string> listSubCaste { get; set; }
        //public Dictionary<int, string> listRashi { get; set; }

        //public Dictionary<int, string> listLivingCountryId { get; set; }
        //public Dictionary<int, string> listLivingStateId { get; set; }
        //public Dictionary<int, string> listLivingCityId { get; set; }
        //public Dictionary<int, string> listFamilyIncome { get; set; }
        //public Dictionary<int, string> listFamilyResidingCountry { get; set; }
        //public Dictionary<int, string> listFamilyResidingState { get; set; }
        //public Dictionary<int, string> listFamilyResidingCity { get; set; }
    }
}
