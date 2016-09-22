
using CompleteMVC.DALClassLib.DAL;
using ModelsClassLib.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace CompleteMVC.BALClassLib.BAL
{
    public class GetUserDetailsBAL
    {
        public UserDetails GetUserDetailsByEmail(string userEmail)
        {
            GetUserDetailsDAL objUserDetails = new GetUserDetailsDAL();
            return objUserDetails.GetUserDetailsByEmail(userEmail);
        }

        public Dictionary<int, string> GetBodyColorOptionsBAL()
        {
            GetUserDetailsDAL objUserDetails = new GetUserDetailsDAL();
            return objUserDetails.GetBodyColorOptionsDAL();
        }
    }
}