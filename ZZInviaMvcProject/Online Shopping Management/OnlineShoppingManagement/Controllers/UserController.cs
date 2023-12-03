using Microsoft.Ajax.Utilities;
using OnlineShoppingManagement.Models;
using OnlineShoppingManagement.Repositories;
using OnlineShoppingManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Mvc;

  

namespace OnlineShoppingManagement.Controllers
{
    public class UserController : Controller
    {
        public static int TempId;
        UserTBL user;    

        // Access Service using Interface 
         IUserRepository userService;
        public UserController()
        {
            userService = new UserService();
        }

        // Action to create a new user : Customer ---------------------------
        [HttpGet]
        public ActionResult CreateUser()
        {
            return View();
        }

        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult CreateUser(User user)
        //{
        //    if (/*ModelState.IsValid &&*/ user != null)
        //    {
        //        userService.AddUser(user);
        //        return RedirectToAction("Index","Home");
        //    }
        //    return View(user);
        //}

        [HttpPost]
        public ActionResult CreateUser(UserTBL user)
        {
            int result = userService.AddUser(user);
            if (result > 0)
            {
                string msg = "Congratulations!!Your account has been created";
                TempData["Value"] = msg;

                return RedirectToAction("LogInUser", "User");
            }
            else
            {
                var failedMsg = TempData["RegisterMsg"];
                TempData["Value"] = failedMsg;

            }

            //Response.Write("Not able to save record");
            return View(user);
        }
        /*logon customer*/
        //public ActionResult LoginUser()// Customer login
        //{


        //    return RedirectToAction("Index", "Home");
        //}


        [HttpGet]
        public ActionResult LoginUser()
        {
            var msg = TempData["Value"];
            if (msg != null)
            {
                ViewData["Value"] = msg;
            }
            var user = Session["Data"] as UserTBL;

            if (user != null)
            {
                ViewData["Data"] = user;
            }
            return View();
        }


        [HttpPost]
        public ActionResult LoginUser(UserTBL model)
        {

            if (ModelState.IsValid)
            {
                var user = userService.GetUserByUserName(model.Username);
                
                var failedMsg = "Opss!!You haven't registered yet,Pls SignUp";

                if (user != null && user.Password == model.Password)
                {
                    Session["Data"] = user;
                    TempId=user.UserId; 

                    //Authentication successful, proceed with login logic
                    
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    TempData["RegisterMsg"] = failedMsg;
                    return RedirectToAction("CreateUser", "User");
                    //ModelState.AddModelError("", "Invalid username or password");
                }
            }

            return View(model);
        }

        //== Change Password for Customer ==

        // Action to display the Change Password form
        [HttpGet]
        public ActionResult ChangePassword()
        {
            var user = Session["Data"] as UserTBL;
            if(user!= null)
            {
                ViewData["Data"] = user;
            }
            var model = new ChangePasswordViewModel();
            return View(model);
        }

        // Action to handle the form submission for changing the password
        [HttpPost]
        public ActionResult ChangePassword(ChangePasswordViewModel model)
        {
            // Get the currently logged-in user from the session
            var user = Session["Data"] as UserTBL;

            if (user == null)
            {
                // If the user is not logged in, redirect to the login page
                return RedirectToAction("LoginUser");
            }

            // Check if the old password matches the user's current password
            if (user.Password == model.OldPassword)
            {
                // Check if the new password and confirm password match
                if (model.NewPassword == model.ConfirmPassword)
                {
                    // Update the user's password in the database
                    userService.ChangePassword(user.UserId, model.NewPassword);

                    // Optionally, you can add a success message to be displayed after password change
                    TempData["ChangePasswordSuccess"] = "Password changed successfully.";

                    // Redirect to a profile page or dashboard page after successful password change
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "New password and confirm password do not match.");
                }
            }
            else
            {
                ModelState.AddModelError("", "Incorrect old password.");
            }

            // If there are any errors in the form submission, return to the ChangePassword view with errors
            return View(model);
        }




        // admin aciton

        // GET: ####################### Admin ##############------------------------------------------------------------------
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string username, string password)
        {
            // Perform admin login authentication here.

            // For demonstration purposes, let's assume that if the username and password are correct, the admin is logged in successfully.
            /*bool isAuthenticated = false;*/
            string userName = "admin",passWord="admin@123";

            if(userName == username && password == passWord) 
            {
                return RedirectToAction("CategoryForAdmin", "Category", new { area = "Admin" } );
            }
/*
            if (isAuthenticated)
            {
                return RedirectToAction("CategoryForAdmin", "Category", new { area = "Admin" });
            }*/
            else
            {

                // Handle incorrect login credentials here.
                // For this example, simply return the login view again with an error message.
                ViewBag.ErrorMessage = "Invalid username or password.";
                return View();
            }
        }

        public ActionResult LogOut()
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            return RedirectToAction("LogInUser", "User");
        }


    }
}