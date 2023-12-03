using OnlineShoppingManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineShoppingManagement.Repositories
{
    internal interface ICategoryRepository
    {
        IEnumerable<Category> GetAllCategories();

       /* Category GetCategoryById(int id);
        void AddCategory(Category category);
        void UpdateCategory(Category category);
        void DeleteCategory(int id);*/
    }
}
