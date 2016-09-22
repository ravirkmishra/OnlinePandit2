using CompleteMVC.DALClassLib.DAL;
using CompleteMVC.ModelClassLib.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.BALClassLib.BAL
{
    public class UserRegistrationBAL
    {
        AddUserDAL obj = new AddUserDAL();
        public bool AddUser(Users users)
        {
            AddUserDAL obj = new AddUserDAL();
            obj.AddUserDetails(users);
            return true;
        }

        public bool VerifyUserBAL(Users userCredentials)
        {
            AddUserDAL obj = new AddUserDAL();
            return obj.VerifyUserDAL(userCredentials);
        }
        public bool UploadImageBAL(Users_Image userImage)
        {
            AddUserDAL obj = new AddUserDAL();
            return obj.UploadImageDAL(userImage);
        }

        public bool AddPhysicalDetailsBAL(User_PhysiqueDetails userPhisique)
        {
            AddUserDAL obj = new AddUserDAL();
            return obj.AddPhysicalDetailsDAL(userPhisique);
        }

        public bool AddEducationDetailsBAL(UserEducationCareer userEduCarrer)
        {
            return obj.AddEducationDetailsDAL(userEduCarrer);
        }

        public bool AddUserSocialDetailsBAL(UserSocialDetails userSocial)
        {
            return obj.AddUserSocialDetailsDAL(userSocial);
        }

        public bool AddUserHabbitsAndHobbiesInterestsBAL(Hobbies hobbiesobj)
        {
            return obj.AddUserHabbitsAndHobbiesInterestsDAL(hobbiesobj);
        }

        public bool AddMatchPreferanceBAL(MatchPreferance matchobj)
        {
            return obj.AddMatchPreferanceDAL(matchobj);
        }
    }
}
