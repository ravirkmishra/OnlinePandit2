using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CompleteMVC.ModelClassLib;
using CompleteMVC.ModelClassLib.DBContext;
using CompleteMVC.ModelsClassLib.Models;
using ModelsClassLib.Models;

namespace CompleteMVC.DALClassLib.DAL
{
    public class GetUserDetailsDAL
    {
        UserContext dbcontext = new UserContext();
        public UserDetails GetUserDetailsByEmail(string userEmail)
        {
            using (var dbcontext = new UserContext())
            {
                var idParam = new SqlParameter
                {
                    ParameterName = "UserEmail",
                    Value = userEmail
                };

                return dbcontext.Database.SqlQuery<UserDetails>("exec sp_GetUserDetails @UserEmail", idParam).FirstOrDefault();
            }

        }

        public Dictionary<int, string> GetBodyColorOptionsDAL()
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            using (var dbcontext = new UserContext())
            {
                var databodycolor = dbcontext.Database.SqlQuery<BodyColour>("exec sp_GetBodyColorOptions");

                foreach (var item in databodycolor)
                {
                    dict.Add(item.Id, item.sBodyColour);
                }
            }
            return dict;
        }
    }
}