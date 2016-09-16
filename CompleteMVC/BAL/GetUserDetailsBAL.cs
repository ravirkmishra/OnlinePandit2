using CompleteMVC.DAL;
using CompleteMVC.ViewModel;
using CompleteMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CompleteMVC.BAL
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