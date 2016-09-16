using CompleteMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.DAL
{
    public class AddUserDAL
    {
        UserContext dbcontext = new UserContext();
        public bool AddUserDetails(Users users)
        {
            dbcontext.Users.Add(users);
            dbcontext.SaveChanges();
            return true;
        }

        public bool VerifyUserDAL(Users userCredentials)
        {
           string password= dbcontext.Users.Where(x => x.UserEmail == userCredentials.UserEmail).Select(x => x.UserPassword).FirstOrDefault();

            if (password == userCredentials.UserPassword)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool UploadImageDAL(Users_Image userImage)
        {
            dbcontext.Users_Image.Add(userImage);
            dbcontext.SaveChanges();
            return true;
        }

        public bool AddPhysicalDetailsDAL(User_PhysiqueDetails userPhisique)
        {
            dbcontext.User_PhysiqueDetails.Add(userPhisique);
            dbcontext.SaveChanges();
            return true;
        }

        public bool AddEducationDetailsDAL(UserEducationCareer userEduCarrer)
        {
            dbcontext.UserEducationCareerDetails.Add(userEduCarrer);
            dbcontext.SaveChanges();
            return true;
        }
        public bool AddUserSocialDetailsDAL(UserSocialDetails userSocial)
        {
            dbcontext.UserSocialDetailsDB.Add(userSocial);
            dbcontext.SaveChanges();
            return true;
        }
        public bool AddUserHabbitsAndHobbiesInterestsDAL(Hobbies hobbiesobj)
        {
            dbcontext.HobbiesAndInterests.Add(hobbiesobj);
            dbcontext.SaveChanges();
            return true;
        }
    }
}
