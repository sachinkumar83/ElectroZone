using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShoppingManagement.Models;
using OnlineShoppingManagement.Services;

namespace OnlineShoppingManagement.Controllers
{
    public class HomeController : Controller
    {
        /* [Authorize]*/
        public ActionResult Index()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            string userName = User.Identity.Name;

            // Pass the username to the view
            ViewBag.UserName = userName;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        public ActionResult Account()
        {
            var user = Session["Data"] as UserTBL;
            
            if (user != null )
            {
                ViewData["Data"] = user;
            }

            return View();
        }
       



    }
}