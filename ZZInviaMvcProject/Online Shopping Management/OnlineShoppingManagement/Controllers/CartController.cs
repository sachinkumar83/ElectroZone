using OnlineShoppingManagement.Models;
using OnlineShoppingManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShoppingManagement.Repositories;
namespace OnlineShoppingManagement.Controllers
{
    public class CartController : Controller
    {
       
        public ActionResult Cart()
        {
            return View();
        }

        public ActionResult CheckOut()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            return View();
        }

    }
}