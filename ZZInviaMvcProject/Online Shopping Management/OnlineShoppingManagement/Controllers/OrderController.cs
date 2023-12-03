using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using OnlineShoppingManagement.Models;

namespace OnlineShoppingManagement.Controllers
{
    public class OrderController : Controller
    {
        TelecomShoppingDBEntities1 _contextDB;
        
        public OrderController()
        {
            _contextDB = new TelecomShoppingDBEntities1();
            
        }
        [HttpGet]
        public ActionResult PlaceOrder()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            return View();
        }
        [HttpPost]
        public ActionResult PlaceOrder(string name, string address, string email, long? mobileNo, string paymentOption, string cardNumber, DateTime? expiryDate)
        {
            // Create a new Order instance and set its properties
            if(!name.Equals("") && !address.Equals("") && !address.Equals("") && !email.Equals("") && !mobileNo.Equals("") && !paymentOption.Equals(""))
            {
                if (!paymentOption.Equals("CardDetails"))
                {
                    cardNumber = "";
                    expiryDate = DateTime.Now;
                }
                var order = new OrderTBL
                {
                    Name = name,
                    Address = address,
                    Email = email,
                    MobileNo = mobileNo,
                    PaymentOption = paymentOption,

                    CardNumber = cardNumber,
                    ExpiryDate = expiryDate
                };

                // Add the order to the database and save changes
                using (TelecomShoppingDBEntities1 _DB = new TelecomShoppingDBEntities1())
                {
                    _DB.OrderTBLs.Add(order);
                    /*_DB.Entry(order).State = EntityState.Modified;*/
                    _DB.SaveChanges();
                }

                // Optionally, you can return a view or a response to indicate success
                return RedirectToAction("Index", "Home");
            }
           // Redirect to the homepage, for example
           else
            {
                ViewData["data"] = "All Field Required";
                return RedirectToAction("PlaceOrder");
            }
        }


        public ActionResult ShowOrder()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            return View(_contextDB.OrderTBLs.ToList());
        }


    }
}