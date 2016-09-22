using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CompleteMVC.ViewModel;
using CompleteMVC.Filters;
using System.Web.Security;
using CompleteMVC.BALClassLib.BAL;
using ModelsClassLib.Models;

namespace CompleteMVC.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        [HeaderFooterFilter]

        public ActionResult Index()
        {
            UserDetails obj = new UserDetails();
            GetUserDetailsBAL objUserDetails = new GetUserDetailsBAL();

            if (Session["User"] != null)
            {
                string userEmail = Session["User"].ToString();
                obj = objUserDetails.GetUserDetailsByEmail(userEmail);
                return View("Index", obj);
            }
            else
            {
                return RedirectToAction("WelcomePage");
            }
        }
        [Authorize]
        public ActionResult Search()
        {
            return View();
        }
        public ActionResult Help()
        {
            return View();
        }
        [HeaderFooterFilter]
        public ActionResult SignUp()
        {
            UserSignUpVM usignvm = new UserSignUpVM();
            GetMasterDataBAL masterobj = new GetMasterDataBAL();
            usignvm.listGender = masterobj.GetListGenderBAL();
            if (Session["User"] == null)
            {
                return View("SignUp", "_Layout", usignvm);
            }
            return View("SignUp", "_Layout", usignvm);
        }


        public ActionResult LogIn()
        {
            if (Session["User"] == null)
            {
                return View("LogIn", "_Layout");
            }
            return View("LogIn", "_Layout");
        }
        [Authorize]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("WelcomePage");
        }
        [HeaderFooterFilter]
        public ActionResult WelcomePage()
        {
            return View("WelcomePage");
        }
    }
}