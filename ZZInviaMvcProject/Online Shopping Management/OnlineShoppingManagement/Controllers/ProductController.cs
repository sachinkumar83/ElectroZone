using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Migrations;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using OnlineShoppingManagement.Models;
using OnlineShoppingManagement.Repositories;
using OnlineShoppingManagement.Services;

namespace OnlineShoppingManagement.Controllers
{
    public class ProductController : Controller
    {
        List<Cart> li=new List<Cart>();
        TelecomShoppingDBEntities1 _contextDB;

        IProductRepository _productRepository;
        public ProductController() {
            _productRepository = new ProductService();
            _contextDB = new TelecomShoppingDBEntities1();
        }


        /* Return Conditions For Admin */

        public ActionResult ReturnConditions(int Id)
        {
            switch (Id)
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



        /*#####################     Deletions Product for Admin   ######################33*/



        public ActionResult Delete(int id)// Fetch list of Employee
        {
            string error = "Unable to delete record";
            /*var id = product.ProductId; */
            try
            {
                TelecomShoppingDBEntities1 contextDB = new TelecomShoppingDBEntities1();
                var product = _contextDB.Products.Where(i => i.ProductId == id).FirstOrDefault();
                var Id = product.CategoryId;
                _productRepository.DeleteProduct(id);

                

                switch (Id)
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

            }
            
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                ViewBag.errorMassage = error;// viewbag is an object and errorMassage is an variable...

            }
      return View();
}
        // we can move to one action to another action




        // GET:---------------- Product  Creation  admin ----------------------------


        [HttpGet]
        public ActionResult Create()
        {
            using (var db = new TelecomShoppingDBEntities1())
            {
                // Fetch all categories from the database
                var categories = db.Categories.ToList();

                // Create a list of SelectListItem to represent dropdown options
                var categoryOptions = categories.Select(c => new SelectListItem
                {
                    Value = c.CategoryId.ToString(),
                    Text = $"({c.CategoryId}. {c.Name})"
                }).ToList();

                ViewBag.Categories = categoryOptions;
            }
            return View();
        }
        [HttpPost]
        public ActionResult Create(Product imageModel)
        {
            var id = imageModel.CategoryId;
            if (imageModel != null)
            {
                if (imageModel.ImageFile != null && imageModel.ImageFile.ContentLength > 0)
                {
                    string fileName = Path.GetFileNameWithoutExtension(imageModel.ImageFile.FileName);
                    string extension = Path.GetExtension(imageModel.ImageFile.FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    imageModel.ImagePath = "~/Image/" + fileName;
                    fileName = Path.Combine(Server.MapPath("~/Image/"), fileName);
                    imageModel.ImageFile.SaveAs(fileName);

                    using (TelecomShoppingDBEntities1 db = new TelecomShoppingDBEntities1())
                    {

                        db.Products.Add(imageModel);
                        db.SaveChanges();
                    }

                    ModelState.Clear();
                    /* TempData["SuccessMessage"] = "Product added successfully.";*/

                    // Use TempData to store the success message temporarily
                    /* TempData["ShowSuccessMessage"] = true;*/

                    // Redirect back to the Create view
                    /* return RedirectToAction("Create");*/

                }
                else
                {
                    ViewBag.ErrorMessage = "Please select an image to upload.";
                    return View();
                }

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
            }
            return View();
        }





        /*#####################     upadation Product for Admin  ######################33*/
        public ActionResult Edit()
        {
            return View();  
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {

            var employee = _productRepository.GetProductById(id);

            return View(employee);
        }

        [HttpPost]
        public ActionResult Edit(Product imageModel)
        {
            var id = imageModel.CategoryId;
            if ( imageModel != null)
            {
                if (imageModel.ImageFile != null && imageModel.ImageFile.ContentLength > 0)
                {
                    string fileName = Path.GetFileNameWithoutExtension(imageModel.ImageFile.FileName);
                    string extension = Path.GetExtension(imageModel.ImageFile.FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    imageModel.ImagePath = "~/Image/" + fileName;
                    fileName = Path.Combine(Server.MapPath("~/Image/"), fileName);
                    imageModel.ImageFile.SaveAs(fileName);

                    using (TelecomShoppingDBEntities1 db = new TelecomShoppingDBEntities1())
                    {

                        db.Entry(imageModel).State = EntityState.Modified;
                        /*db.Products.AddOrUpdate(imageModel);*/
                        db.SaveChanges();
                    }

                    ModelState.Clear();
                    ViewBag.Message = "Image uploaded successfully.";
                }
                else
                {
                    ViewBag.ErrorMessage = "Please select an image to upload.";
                    return View();
                }

                /*return View();*/

                /*_productRepository.UpdateProduct(product);*/



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
            }

            return View();
        }




        // @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ :  admin Product- show Phone and all  -------for Admin ##################@@@@@@@@@@@@

       

        public ActionResult FetchPhone()
        {
            IEnumerable<Product> data =  _productRepository.GetAllProducts().ToList();
            data = data.Where(i => i.CategoryId == 1).ToList();

            return View(data);
        }

        public ActionResult ShowAccessoriesAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 2);
            return View(product);
        }

        public ActionResult ShowTelecomPlansAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 3);
            return View(product);
        }

        public ActionResult ShowTabletsAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 4);
            return View(product);
        }

        public ActionResult ShowLaptopsAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 5);
            return View(product);
        }

        public ActionResult ShowBluetoothDevicesAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 6);
            return View(product);
        }

        public ActionResult ShowSmartwatchesAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 7);
            return View(product);
        }

        public ActionResult ShowHeadsetsAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 8);
            return View(product);
        }

        public ActionResult ShowPowerBanksAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 9);
            return View(product);
        }

        public ActionResult ShowVRHeadsetsAdmin()
        {
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 10);
            return View(product);
        }























        // @@@@@@@@@@@@@@@@@@@@@@----------------- Customer ---------------@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@22-

          /*#####################     details  Product for user   ######################33*/

        public ActionResult Details(int id) // view 
        {
            var user = Session["Data"] as UserTBL;
            if(user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _contextDB.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }



        [HttpPost]
        public ActionResult CartDetails(int id ,int q)
        {
          /*  var productId = Convert.ToInt32(form["productId"]);
            var quantity = Convert.ToInt32(form["quantity"]);*/


            /*var product = _contextDB.Products.FirstOrDefault(i=>i.ProductId==productId);*/

            Cart cart=new Cart();

            /*cart.Quantity = quantity;
            cart.ProductId = productId;
            cart.Name = product.Name;
            cart.Price =Convert.ToInt32(product.Price);
            cart.Quantity = quantity;
            cart.Bill = cart.Price * Convert.ToInt32(cart.Quantity);
            if (Session["cart"] == null)
            {
                li.Add(cart);
                Session["cart"] = li;
            }*/



            return View();
            /*return RedirectToAction("Details", new { id = productId })*/

            
        }



        //-----------------------------------------------------------------------------------------------------------------

        // @@@@@@@@@@@@@@@@@@@@@@----------------- Customer ---------------@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@22-

        public ActionResult ShowPhones()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 1);
            return View(product);
        }

        public ActionResult ShowAccessories()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 2);
            return View(product);
        }

        public ActionResult ShowTelecomPlans()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 3);
            return View(product);
        }

        public ActionResult ShowTablets()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 4);
            return View(product);
        }

        public ActionResult ShowLaptops()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 5);
            return View(product);
        }

        public ActionResult ShowBluetoothDevices()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 6);
            return View(product);
        }

        public ActionResult ShowSmartwatches()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 7);
            return View(product);
        }

        public ActionResult ShowHeadsets()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 8);
            return View(product);
        }

        public ActionResult ShowPowerBanks()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 9);
            return View(product);
        }

        public ActionResult ShowVRHeadsets()
        {
            var user = Session["Data"] as UserTBL;
            if (user != null)
            {
                ViewData["Data"] = user;
            }
            var product = _productRepository.GetAllProducts();
            product = product.Where(i => i.CategoryId == 10);
            return View(product);
        }

    }
}



