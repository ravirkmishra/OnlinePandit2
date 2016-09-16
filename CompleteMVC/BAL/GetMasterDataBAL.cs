using CompleteMVC.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.BAL
{
       public class GetMasterDataBAL
    {
        GetMasterDataDAL obj = new GetMasterDataDAL();
        public Dictionary<int, string> GetCountryListBAL(int countryId)
        {
            //GetMasterDataDAL obj = new GetMasterDataDAL();
            return obj.GetCountryListDAL(countryId);
        }
        public Dictionary<int, string> GetCountryListBAL()
        {
            //GetMasterDataDAL obj = new GetMasterDataDAL();
            return obj.GetCountryListDAL();
        }
        public Dictionary<int, string> GetStateLisByCountryIdBAL(int countryId)
        {
            return obj.GetStateLisByCountryIdDAL(countryId);
        }
        public Dictionary<int, string> GetDistrictListByStateIdBAL(int stateId)
        {
            return obj.GetDistrictListByStateIdDAL(stateId);
        }
        public Dictionary<int, string> GetQualificationClassBAL(int qualificationClassId)
        {
            return obj.GetQualificationClassDAL(qualificationClassId);
        }
        public Dictionary<int, string> GetQualificationClassBAL()
        {
            return obj.GetQualificationClassDAL();
        }
        public Dictionary<int, string> GetEducationFieldsByClassIdBAL(int qualificationClassId)
        {
            return obj.GetEducationFieldsByClassIdDAL(qualificationClassId);
        }
        public Dictionary<int, string> GetJobFieldsBAL(int jobFieldId)
        {
            return obj.GetJobFieldsDAL(jobFieldId);
        }

        public Dictionary<int, string> GetJobFieldsBAL()
        {
            return obj.GetJobFieldsDAL();
        }

        public Dictionary<int, string> GetReligionListBAL()
        {
            return obj.GetReligionListDAL();
        }
        public Dictionary<int, string> GetCasteListByReligionIdBAL(int religionId)
        {
            return obj.GetCasteListByReligionIdDAL(religionId);
        }
        public Dictionary<int, string> GetSubCasteListByCasteIdBAL(int casteId)
        {
            return obj.GetSubCasteListByCasteIdDAL(casteId);
        }
        public Dictionary<int, string> GetRashiListBAL()
        {
            return obj.GetRashiListDAL();
        }

        public Dictionary<int, string> GetIncomeRangeBAL()
        {
            return obj.GetIncomeRangeDAL();
        }

        public Dictionary<int, string> GetAllLangueagesBAL()
        {
            return obj.GetAllLangueagesDAL();
        }

        public Dictionary<int, string> GetYesNoValuesBAL()
        {
            return obj.GetYesNoValuesDAL();
        }

        public Dictionary<int, string> GetDressingStylesBAL()
        {
            return obj.GetDressingStylesDAL();
        }

        public Dictionary<int, string> GetProfileManagerBAL()
        {
            return obj.GetProfileManagerDAL();
        }

        public Dictionary<int, string> GetHabbitsTypeBAL()
        {
            return obj.GetHabbitsTypeDAL();
        }

        public Dictionary<int, string> GetFoodHabbitsBAL()
        {
            return obj.GetFoodHabbitsDAL();
        }
    }
}
