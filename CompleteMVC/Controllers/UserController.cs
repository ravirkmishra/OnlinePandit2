using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CompleteMVC.Models;
using CompleteMVC.DAL;
using CompleteMVC.ViewModel;
using CompleteMVC.BAL;
using CompleteMVC.Filters;
using System.Web.Security;

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
            if (Session["User"] == null)
            {
                return View("SignUp", "_Layout");
            }
            return View("SignUp", "_Layout");
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