using CompleteMVC.BAL;
using CompleteMVC.DAL;
using CompleteMVC.Filters;
using CompleteMVC.Models;
using CompleteMVC.ViewModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Web.Security;

namespace CompleteMVC.Controllers
{
    [AllowAnonymous]
    public class UserRegistrationController : Controller
    {
        // GET: UserRegistration
        [HttpPost]
        [HeaderFooterFilter]
        public ActionResult SignUp(UserSignUpVM users)
        {
            if (ModelState.IsValid)
            {
                int nextPageIndex;
                if (Session["SignUpPageIndex"] == null)
                {
                    nextPageIndex = 0;
                }
                else
                {
                    nextPageIndex = Convert.ToInt32(Session["SignUpPageIndex"]);
                }

                //CheckPageIndex(nextPageIndex);
                nextPageIndex++;
                UserRegistrationBAL obj = new UserRegistrationBAL();
                Users modobj = new Users();

                if (nextPageIndex - 1 == 0)
                {
                    users.UserFirstName = Request.Form["UserFirstName"];
                    users.UserMiddleName = Request.Form["UserMiddleName"];
                    users.UserLastName = Request.Form["UserLastName"];
                    users.UserEmail = Request.Form["UserEmail"];
                    users.UserPassword = Request.Form["UserPassword"];
                    users.UserContact = Request.Form["UserContact"];

                    modobj.UserFirstName = users.UserFirstName;
                    modobj.UserMiddleName = users.UserMiddleName;
                    modobj.UserLastName = users.UserLastName;
                    modobj.UserEmail = users.UserEmail;
                    modobj.UserPassword = users.UserPassword;
                    modobj.UserContact = users.UserContact;
                    obj.AddUser(modobj);
                    Session["User"] = modobj.UserEmail;
                    FormsAuthentication.SetAuthCookie(modobj.UserEmail, false);
                    Session["SignUpPageindex"] = nextPageIndex;
                    Users_ImageVM uivm = new Users_ImageVM();
                    return View("SignUp2", "_Layout", uivm);
                }
                else if (nextPageIndex - 1 == 1)
                {
                    return View("SignUp2", "_Layout");
                }
                else if (nextPageIndex - 1 == 2)
                {
                    return View("SignUp3", "_Layout");
                }
                else if (nextPageIndex - 1 == 3)
                {
                    return RedirectToAction("Index", "User");
                }
            }
            return RedirectToAction("SignUp", "UserRegistration");
        }

        private byte[] ConvertToBytes(HttpPostedFileBase imagefile)
        {
            byte[] imageBytes = null;
            BinaryReader reader = new BinaryReader(imagefile.InputStream);
            imageBytes = reader.ReadBytes((int)imagefile.ContentLength);
            return imageBytes;
        }

        private int CheckPageIndex(int pageIndex)
        {
            int a = 5;
            switch (pageIndex)
            {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
            }
            return a;
        }

        [HttpPost]
        public ActionResult LogIn(LogInVM userCredentials)
        {
            if (ModelState.IsValid)
            {
                // UserRegistrationBAL obj = new UserRegistrationBAL();
                Users modobj = new Users();

                userCredentials.UserEmail = Request.Form["UserEmail"];
                userCredentials.UserPassword = Request.Form["UserPassword"];

                modobj.UserEmail = userCredentials.UserEmail;
                modobj.UserPassword = userCredentials.UserPassword;

                bool verified = VerifyUser(modobj);
                if (verified)
                {
                    FormsAuthentication.SetAuthCookie(modobj.UserEmail, false);
                    Session["User"] = Request.Form["UserEmail"];
                    return RedirectToAction("Index", "User");
                }
                else
                {
                    ModelState.AddModelError("CredentialError", "Invalid Username or Password");
                    Session["UserEmail"] = modobj.UserEmail.ToString();
                    return View("LogIn", "_Layout");
                }
            }
            else
            {
                return View("LogIn", "_Layout");
            }
        }
        public ActionResult LogInView()
        {
            return View("LogIn");
        }
        private bool VerifyUser(Users userCredential)
        {
            UserRegistrationBAL obj = new UserRegistrationBAL();
            return obj.VerifyUserBAL(userCredential);
        }

        public ActionResult SignUp2(Users_ImageVM userImageVM)
        {
            int nextPageIndex;
            if (Session["SignUpPageIndex"] == null)
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                nextPageIndex = Convert.ToInt32(Session["SignUpPageIndex"]);
                nextPageIndex++;

                UserRegistrationBAL obj = new UserRegistrationBAL();
                HttpPostedFileBase imagefile = Request.Files["ImageData"];
                GetUserDetailsBAL getUserdetailsBAL = new GetUserDetailsBAL();
                Users_Image userImage = new Users_Image();
                userImage.UserId = getUserdetailsBAL.GetUserDetailsByEmail(Session["User"].ToString()).UserId;
                userImage.UserImageFile = ConvertToBytes(imagefile);
                bool a = obj.UploadImageBAL(userImage);

                Session["SignUpPageindex"] = nextPageIndex;

                UserPhysicalDetailsVM upd = new UserPhysicalDetailsVM();
                //upd.listBodyColourId = new SelectList("Select...", 0);
                upd.listBodyColourId = getUserdetailsBAL.GetBodyColorOptionsBAL();
                return View("PhysicalDetials", "_Layout", upd);
            }
        }

        public ActionResult UserPhysicalDetails(User_PhysiqueDetails userPhisique)
        {
            int nextPageIndex;
            if (Session["SignUpPageIndex"] == null)
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                nextPageIndex = Convert.ToInt32(Session["SignUpPageIndex"]);
                nextPageIndex++;

                UserRegistrationBAL obj = new UserRegistrationBAL();
                GetUserDetailsBAL getUserdetailsBAL = new GetUserDetailsBAL();

                User_PhysiqueDetails userPhisiquedetails = new User_PhysiqueDetails();

                userPhisiquedetails.UserId = getUserdetailsBAL.GetUserDetailsByEmail(Session["User"].ToString()).UserId;

                userPhisique.UserId = userPhisiquedetails.UserId;
                userPhisique.UserHeightInch = Convert.ToInt32(Request.Form["UserHeightInch"]);
                userPhisique.UserHeightFit = Convert.ToInt32(Request.Form["UserHeightFit"]);
                userPhisique.UserBodyColour = Convert.ToInt32(Request.Form["UserBodyColourId"]);
                userPhisique.UserDOB = (Convert.ToDateTime(Request.Form["UserDOBDD"] + "-" + Request.Form["UserDOBMM"] + "-" + Request.Form["UserDOBYYYY"]));
                userPhisique.UserDOBTimeHHMMSS = Convert.ToDateTime(Request.Form["UserDOBTimeHH"] + ":" + Request.Form["UserDOBTimeMM"] + ":" + Request.Form["UserDOBTimeSS"]);
                userPhisique.WeightMeasure = Convert.ToInt32(Request.Form["WeightMeasure"]);

                bool status = obj.AddPhysicalDetailsBAL(userPhisique);

                UserEducationDetailsVM userEduCarrer = new UserEducationDetailsVM();
                GetMasterDataBAL masterdataobj = new GetMasterDataBAL();

                userEduCarrer.listCountry = masterdataobj.GetCountryListBAL();
                userEduCarrer.listJobField = masterdataobj.GetJobFieldsBAL();
                userEduCarrer.listQualificationClass = masterdataobj.GetQualificationClassBAL();
                userEduCarrer.listUserIncome = masterdataobj.GetIncomeRangeBAL();

                ViewBag.EducationField = new List<SelectListItem> { };
                ViewBag.StateList = new List<SelectListItem> { };
                ViewBag.CityList = new List<SelectListItem> { };

                return View("EducationDetails", "_Layout", userEduCarrer);
            }

        }
        public ActionResult UserEducationDetails(UserEducationCareer userEduCarrer)
        {
            int nextPageIndex;
            if (Session["SignUpPageIndex"] == null)
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                nextPageIndex = Convert.ToInt32(Session["SignUpPageIndex"]);
                nextPageIndex++;

                UserRegistrationBAL obj = new UserRegistrationBAL();
                GetUserDetailsBAL getUserdetailsBAL = new GetUserDetailsBAL();

                User_PhysiqueDetails userPhisiquedetails = new User_PhysiqueDetails();

                userPhisiquedetails.UserId = getUserdetailsBAL.GetUserDetailsByEmail(Session["User"].ToString()).UserId;

                userEduCarrer.UserId = userPhisiquedetails.UserId;
                userEduCarrer.UserMaxQualificationClass = Request.Form["UserMaxQualificationClass"];
                userEduCarrer.UserEducationField = Request.Form["UserEducationField"];
                userEduCarrer.UserEducationSchool = Request.Form["UserEducationSchool"];
                userEduCarrer.UserJobStatus = Convert.ToInt32(Request.Form["UserJobStatus"]);
                userEduCarrer.UserJobCompany = Request.Form["UserJobCompany"];
                userEduCarrer.UserJobField = Request.Form["UserJobField"];
                userEduCarrer.UserJobDesc = Request.Form["UserJobDesc"];
                userEduCarrer.UserJobCountry = Request.Form["UserJobCountry"];
                userEduCarrer.UserJobState = Request.Form["UserJobState"];
                userEduCarrer.UserJobCity = Request.Form["UserJobCity"];
                userEduCarrer.UserIncomeId = Convert.ToInt32(Request.Form["UserIncomeId"]);
                userEduCarrer.Designation = Request.Form["Designation"];

                bool status = obj.AddEducationDetailsBAL(userEduCarrer);

                UserSocialDetailsVM userSocialvm = new UserSocialDetailsVM();
                GetMasterDataBAL masterdataobj = new GetMasterDataBAL();

                userSocialvm.UserId = userPhisiquedetails.UserId;

                userSocialvm.listFamilyResidingCountry = masterdataobj.GetCountryListBAL();
                userSocialvm.listReligion = masterdataobj.GetReligionListBAL();
                userSocialvm.listRashi = masterdataobj.GetRashiListBAL();
                userSocialvm.listLivingCountryId = masterdataobj.GetCountryListBAL();
                userSocialvm.listFamilyIncome = masterdataobj.GetIncomeRangeBAL();
                userSocialvm.listJobField = masterdataobj.GetJobFieldsBAL();
                userSocialvm.ListLanguages = masterdataobj.GetAllLangueagesBAL();
                userSocialvm.ListYesNo = masterdataobj.GetYesNoValuesBAL();
                userSocialvm.ListDressingStyle = masterdataobj.GetDressingStylesBAL();
                userSocialvm.ListProfileManager = masterdataobj.GetProfileManagerBAL();

                ViewBag.CasteList = new List<SelectListItem> { };
                ViewBag.SubCasteList = new List<SelectListItem> { };
                ViewBag.LivingStateList = new List<SelectListItem> { };
                ViewBag.LivingCityList = new List<SelectListItem> { };
                ViewBag.FamilyResidingStateList = new List<SelectListItem> { };
                ViewBag.FamilyResidingCityList = new List<SelectListItem> { };
                ViewBag.JobFieldList = new List<SelectListItem> { };

                ViewBag.ShowHodeJob = false;

                return View("SocialDetails", "_Layout", userSocialvm);
            }

        }

        [HttpPost]
        public JsonResult GetStates(int Id)
        {
            try
            {
                GetMasterDataBAL masterdataobj = new GetMasterDataBAL();
                var states = masterdataobj.GetStateLisByCountryIdBAL(Id);
                var json = new SelectList(states, "Key", "Value");
                ViewBag.StateList = json;
                return Json(ViewBag.StateList, JsonRequestBehavior.AllowGet);

                //return this.Json(ViewBag.StateList);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public JsonResult GetCities(int Id)
        {
            try
            {
                GetMasterDataBAL masterdataobj = new GetMasterDataBAL();
                var cities = masterdataobj.GetDistrictListByStateIdBAL(Id);
                var json = new SelectList(cities, "Key", "Value");
                ViewBag.CityList = json;
                return Json(ViewBag.CityList, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public JsonResult GetEducationFields(int Id)
        {
            try
            {
                GetMasterDataBAL masterdataobj = new GetMasterDataBAL();
                var educationfields = masterdataobj.GetEducationFieldsByClassIdBAL(Id);
                var json = new SelectList(educationfields, "Key", "Value");
                ViewBag.EducationField = json;
                return Json(ViewBag.EducationField, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public ActionResult UserSocialDetails(UserSocialDetails userSocial)
        {
            int nextPageIndex;
            if (Session["SignUpPageIndex"] == null)
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                nextPageIndex = Convert.ToInt32(Session["SignUpPageIndex"]);
                nextPageIndex++;

                UserRegistrationBAL obj = new UserRegistrationBAL();
                GetUserDetailsBAL getUserdetailsBAL = new GetUserDetailsBAL();

                User_PhysiqueDetails userPhisiquedetails = new User_PhysiqueDetails();

                userPhisiquedetails.UserId = getUserdetailsBAL.GetUserDetailsByEmail(Session["User"].ToString()).UserId;

                userSocial.UserId = userPhisiquedetails.UserId;
                userSocial.UserReligionId = Convert.ToInt32(Request.Form["UserReligionId"]);
                userSocial.UserCasteId = Convert.ToInt32(Request.Form["UserCasteId"]);
                userSocial.UserSubCasteId = Convert.ToInt32(Request.Form["UserSubCasteId"]);
                userSocial.RashiId = Convert.ToInt32(Request.Form["RashiId"]);
                userSocial.GotraName = Request.Form["GotraName"];
                userSocial.UserLivingCountryId = Convert.ToInt32(Request.Form["UserLivingCountryId"]);
                userSocial.UserLivingStateId = Convert.ToInt32(Request.Form["UserLivingStateId"]);
                userSocial.UserLivingCityId = Convert.ToInt32(Request.Form["UserLivingCityId"]);
                userSocial.UserLivingZipCode = Convert.ToInt32(Request.Form["UserLivingZipCode"]);
                userSocial.UserCompleteAddress = Request.Form["UserCompleteAddress"];
                userSocial.AboutYou = Request.Form["AboutYou"];
                userSocial.AboutFamily = Request.Form["AboutFamily"];
                userSocial.NoOfBrothers = Convert.ToInt32(Request.Form["NoOfBrothers"]);
                userSocial.NoOfSisters = Convert.ToInt32(Request.Form["NoOfSisters"]);
                userSocial.NoOfBrothersMarried = Convert.ToInt32(Request.Form["NoOfBrothersMarried"]);
                userSocial.NoOfSistersMarried = Convert.ToInt32(Request.Form["NoOfSistersMarried"]);
                userSocial.FamilyIncomeId = Convert.ToInt32(Request.Form["FamilyIncomeId"]);
                userSocial.IsJointFamily = Convert.ToBoolean(Request.Form["IsJointFamily"]);
                userSocial.FamilyResidingCountryId = Convert.ToInt32(Request.Form["FamilyResidingCountryId"]);
                userSocial.FamilyResidingStateId = Convert.ToInt32(Request.Form["FamilyResidingStateId"]);
                userSocial.FamilyResidingCityId = Convert.ToInt32(Request.Form["FamilyResidingCityId"]);
                userSocial.FatherWorkingStatus = Convert.ToInt32(Request.Form["FatherWorkingStatus"]);
                if (userSocial.FatherWorkingStatus == 1)
                {
                    userSocial.FatherOccupation = Convert.ToInt32(Request.Form["FatherOccupation"]);
                }
                else
                {
                    userSocial.FatherOccupation = 56;
                }

                userSocial.MotherWorkingStatus = Convert.ToInt32(Request.Form["MotherWorkingStatus"]);

                if (userSocial.MotherWorkingStatus == 1)
                {
                    userSocial.MotherOccupation = Convert.ToInt32(Request.Form["MotherOccupation"]);
                }
                else
                {
                    userSocial.MotherOccupation = 56;
                }

                userSocial.LanguageKnown = Convert.ToInt32(Request.Form["LanguageKnown"]);
                userSocial.ProfileManager = Convert.ToInt32(Request.Form["ProfileManager"]);
                userSocial.DressingStyle = Convert.ToInt32(Request.Form["DressingStyle"]);

                bool status = obj.AddUserSocialDetailsBAL(userSocial);

                HobbiesAndInterestsVM hobbiesobj = new HobbiesAndInterestsVM();
                GetMasterDataBAL masterdataobj = new GetMasterDataBAL();
                hobbiesobj.ListYesNo = masterdataobj.GetYesNoValuesBAL();
                hobbiesobj.UserId = getUserdetailsBAL.GetUserDetailsByEmail(Session["User"].ToString()).UserId;
                hobbiesobj.ListHabbitsType = masterdataobj.GetHabbitsTypeBAL();
                hobbiesobj.ListFoodHabbits = masterdataobj.GetFoodHabbitsBAL();

                return View("HobbiesAndInterest", "_Layout", hobbiesobj);
            }
        }

        public JsonResult GetCastesList(int Id)
        {
            GetMasterDataBAL masterdataobj = new GetMasterDataBAL();
            var castes = masterdataobj.GetCasteListByReligionIdBAL(Id);
            var json = new SelectList(castes, "Key", "Value");
            ViewBag.CasteList = json;
            return Json(ViewBag.CasteList, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetSubCastesList(int Id)
        {
            GetMasterDataBAL masterdataobj = new GetMasterDataBAL();
            var subcastes = masterdataobj.GetSubCasteListByCasteIdBAL(Id);
            var json = new SelectList(subcastes, "Key", "Value");
            ViewBag.SubCasteList = json;
            return Json(ViewBag.SubCasteList, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetJobFields()
        {
            ViewBag.ShowHodeJob = true;
            GetMasterDataBAL masterdataobj = new GetMasterDataBAL();
            var jobFields = masterdataobj.GetJobFieldsBAL();
            var json = new SelectList(jobFields, "Key", "Value");
            ViewBag.JobFieldList = json;
            return Json(ViewBag.JobFieldList, JsonRequestBehavior.AllowGet);
        }
        public ActionResult UserHobbiesAndInterest(Hobbies hobbiesobj)
        {
            int nextPageIndex;
            if (Session["SignUpPageIndex"] == null)
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                nextPageIndex = Convert.ToInt32(Session["SignUpPageIndex"]);
                nextPageIndex++;

                UserRegistrationBAL obj = new UserRegistrationBAL();
                GetUserDetailsBAL getUserdetailsBAL = new GetUserDetailsBAL();
                hobbiesobj.UserId = getUserdetailsBAL.GetUserDetailsByEmail(Session["User"].ToString()).UserId;

                hobbiesobj.HobbiesName = Request.Form["HobbiesName"];
                hobbiesobj.FoodFondOf = Request.Form["FoodFondOf"];
                hobbiesobj.FoodCanCook = Convert.ToInt32(Request.Form["FoodCanCook"]);
                hobbiesobj.FoodAbletoCook = hobbiesobj.FoodCanCook == 1 ? Request.Form["FoodAbletoCook"]:"";
                hobbiesobj.FavoriteBooks = Request.Form["FavoriteBooks"];
                hobbiesobj.FavoriteTVShow = Request.Form["FavoriteTVShow"];
                hobbiesobj.isVegetarian = Convert.ToInt32("isVegetarian");
                hobbiesobj.isDrink = Convert.ToInt32(Request.Form["isDrink"]);
                hobbiesobj.isSmoke = Convert.ToInt32(Request.Form["isSmoke"]);
                if (hobbiesobj.isVegetarian == 1)
                {
                    hobbiesobj.isEggetarian = Convert.ToInt32(Request.Form["isEggetarian"]);
                }
                else
                {
                    hobbiesobj.isEggetarian = 3;
                }

                bool status = obj.AddUserHabbitsAndHobbiesInterestsBAL(hobbiesobj);

                return View();
            }
        }
    }
}
