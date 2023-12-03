using OnlineShoppingManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineShoppingManagement.Repositories
{
    internal interface IProductRepository
    {
        IEnumerable<Product> GetAllProducts();

        // Retrieve a product by its unique ProductId
        Product GetProductById(int productId);

        // Add a new product to the repository
        void AddProduct(Product product);

        // Update an existing product in the repository
        void UpdateProduct(Product product);

        // Delete a product from the repository by its unique ProductId
        void DeleteProduct(int productId);
    }
}
