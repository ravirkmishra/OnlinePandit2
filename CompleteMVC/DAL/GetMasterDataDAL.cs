using CompleteMVC.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;

namespace CompleteMVC.DAL
{
    public class GetMasterDataDAL
    {
        UserContext dbcontext = new UserContext();
        public Dictionary<int, string> GetCountryListDAL(int countryId)
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "countryId",
                    Value = countryId
                };

                var result = dbcontext.Database.SqlQuery<Country>("exec sp_GetCountryList @countryId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.CountryName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetCountryListDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "countryId",
                //    Value = countryId
                //};

                var result = dbcontext.Database.SqlQuery<Country>("exec sp_GetAllCountryList");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.CountryName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetListGenderDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "countryId",
                //    Value = countryId
                //};

                var result = dbcontext.Database.SqlQuery<Gender>("exec sp_GetListGender");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.GenderName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetStateLisByCountryIdDAL(int countryId)
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "countryId",
                    Value = countryId
                };

                var result = dbcontext.Database.SqlQuery<State>("exec sp_GetStateList @countryId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.StateName);
                }
            }
            return dict;
        }


        public Dictionary<int, string> GetDistrictListByStateIdDAL(int stateId)
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "stateId",
                    Value = stateId
                };

                var result = dbcontext.Database.SqlQuery<District>("exec sp_GetDistrictList @stateId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.DistrictName);
                }
            }
            return dict;
        }



        public Dictionary<int, string> GetQualificationClassDAL(int qualificationClassId)
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "qualificationClassId",
                    Value = qualificationClassId
                };

                var result = dbcontext.Database.SqlQuery<MaxEducationClassNames>("exec sp_GetQualificationClass @qualificationClassId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.QualificationName);
                }
            }
            return dict;
        }



        public Dictionary<int, string> GetQualificationClassDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "qualificationClassId",
                //    Value = qualificationClassId
                //};

                var result = dbcontext.Database.SqlQuery<MaxEducationClassNames>("exec sp_GetAllQualificationClass");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.QualificationName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetEducationFieldsByClassIdDAL(int qualificationClassId)
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "qualificationClassId",
                    Value = qualificationClassId
                };

                var result = dbcontext.Database.SqlQuery<EducationFields>("exec sp_EducationFieldsByClassId @qualificationClassId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.EducationAreaName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetJobFieldsDAL(int jobFieldId)
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "jobFieldId",
                    Value = jobFieldId
                };

                var result = dbcontext.Database.SqlQuery<JobFields>("exec sp_GetJobFields @jobFieldId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.JobFieldName);
                }
            }
            return dict;
        }
        public Dictionary<int, string> GetJobFieldsDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<JobFields>("exec sp_GetAllJobFields");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.JobFieldName);
                    if (item.Id == 56)
                    {
                        dict.Remove(56);
                    }
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetReligionListDAL()
        {

            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<Religion>("exec sp_GetAllReligions");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.ReligionName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetCasteListByReligionIdDAL(int religionId)
        {

            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "religionId",
                    Value = religionId
                };

                var result = dbcontext.Database.SqlQuery<Caste>("exec sp_GetCasteByReligionId @religionId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.CasteName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetSubCasteListByCasteIdDAL(int casteId)
        {

            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "casteId",
                    Value = casteId
                };

                var result = dbcontext.Database.SqlQuery<Subcaste>("exec sp_GetSubCasteByCasteId @casteId", idParam);

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.SubCasteName);
                }
            }
            return dict;
        }


        public Dictionary<int, string> GetRashiListDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<Rashi>("exec sp_GetAllRashi");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.RashiName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetIncomeRangeDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<IncomeRange>("exec sp_GetIncomeRange");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.IncomeValue);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetAllLangueagesDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<Language>("exec sp_GetAllLanguages");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.LaunguageName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetYesNoValuesDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<YesNoValue>("exec sp_GetYesNoValues");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.YesNoValues);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetDressingStylesDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<DressingStyles>("exec sp_GetDressignStyles");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.StyleName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetProfileManagerDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<ProfileManagers>("exec sp_GetProfileManagers");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.ProfileManagerName);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetHabbitsTypeDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<HabbitsType>("exec sp_GetHabbitsType");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.isYesNoOccasional);
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetFoodHabbitsDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<FoodHabbits>("exec sp_GetFoodHabbits");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.FoodType);
                    if (item.Id == 3)
                    {
                        dict.Remove(3);
                    }
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetMarritalListDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<MarritalStatus>("exec sp_GetMarritalStatus");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.MarritalStatusName);
                    //if (item.Id == 3)
                    //{
                    //    dict.Remove(3);
                    //}
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetBodyTypeListDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<BodyType>("exec sp_GetBodyType");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.BodyTypeName);
                    //if (item.Id == 3)
                    //{
                    //    dict.Remove(3);
                    //}
                }
            }
            return dict;
        }

        public Dictionary<int, string> GetManglikStatusListDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                //var idParam = new SqlParameter
                //{
                //    ParameterName = "jobFieldId",
                //    Value = jobFieldId
                //};

                var result = dbcontext.Database.SqlQuery<ManglikState>("exec sp_GetManlikStatus");

                foreach (var item in result)
                {
                    dict.Add(item.Id, item.ManglikStateName);
                    //if (item.Id == 3)
                    //{
                    //    dict.Remove(3);
                    //}
                }
            }
            return dict;
        }
    }
}
