using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShoppingManagement.Models;
using OnlineShoppingManagement.Repositories;

namespace OnlineShoppingManagement.Services
{
    public class CategoryService : ICategoryRepository
    {
        private TelecomShoppingDBEntities1 _contextDB;
        public CategoryService() { _contextDB = new TelecomShoppingDBEntities1(); }
        IEnumerable<Category> ICategoryRepository.GetAllCategories()
        {
            return _contextDB.Categories.ToList();  
          
        }
    }
}