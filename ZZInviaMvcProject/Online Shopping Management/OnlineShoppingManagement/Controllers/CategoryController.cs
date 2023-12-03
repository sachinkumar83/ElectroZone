using OnlineShoppingManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShoppingManagement.Repositories;
using OnlineShoppingManagement.Services;

namespace OnlineShoppingManagement.Controllers
{
    public class CategoryController : Controller
    {
        private readonly ICategoryRepository _categoryRepository;
        public CategoryController() { _categoryRepository = new CategoryService(); }

        //--------------(Admin)Work for Admin : Category------------------------------------------------------
        public ActionResult CategoryForAdmin()
        {
            var categories = _categoryRepository.GetAllCategories();
            return View(categories);
        }

        /*(Admin)Redirection to product controller------*/
        public ActionResult RedirectToProductViewAdmin(int id)
        {
            /*return RedirectToAction("ShowProducts", "Product",id);*/
            // Redirect to the "AnotherAction" method

            switch (id)
            {
                case 1: return RedirectToAction("FetchPhone", "Product");

                case 2: return RedirectToAction("ShowAccessoriesAdmin", "Product");

                case 3: return RedirectToAction("ShowTelecomPlansAdmin", "Product");

                case 4: return RedirectToAction("ShowTabletsAdmin", "Product");

                case 5: return RedirectToAction("ShowLaptopsAdmin", "Product");

                case 6: return RedirectToAction("ShowBluetoothDevicesAdmin", "Product");

                case 7: return RedirectToAction("ShowSmartwatchesAdmin", "Product");

                case 8: return RedirectToAction("ShowHeadsetsAdmin", "Product");

                case 9: return RedirectToAction("ShowPowerBanksAdmin", "Product");

                case 10: return RedirectToAction("ShowVRHeadsetsAdmin", "Product");

            }
            
            return View();
        }











        //--------------------########################################-------Customer-------#####################@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        // Customer Works------------------------------------------------------

        public ActionResult CategoryForCustomer()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            // Get all categories from the database
            var categories = _categoryRepository.GetAllCategories();
            return View(categories);
        }

        public ActionResult RedirectToProductView(int id)
        {
            /*return RedirectToAction("ShowProduct", "Product",id);*/
            // Redirect to the "AnotherAction" method
            switch (id)
            {
                case 1: return RedirectToAction("ShowPhones", "Product");

                case 2: return RedirectToAction("ShowAccessories", "Product");

                case 3: return RedirectToAction("ShowTelecomPlans", "Product");

                case 4: return RedirectToAction("ShowTablets", "Product");

                case 5: return RedirectToAction("ShowLaptops", "Product");

                case 6: return RedirectToAction("ShowBluetoothDevices", "Product");

                case 7: return RedirectToAction("ShowSmartwatches", "Product");

                case 8: return RedirectToAction("ShowHeadsets", "Product");

                case 9: return RedirectToAction("ShowPowerBanks", "Product");

                case 10: return RedirectToAction("ShowVRHeadsets", "Product");

            }
            return View();
        }

    }
}