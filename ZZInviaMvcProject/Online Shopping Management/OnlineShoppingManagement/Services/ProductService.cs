using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using OnlineShoppingManagement.Models;
using OnlineShoppingManagement.Repositories;

namespace OnlineShoppingManagement.Services
{
    public class ProductService : IProductRepository
    {
        private TelecomShoppingDBEntities1 _contextDB; 
        public ProductService() { _contextDB = new TelecomShoppingDBEntities1(); }

        IEnumerable<Product> IProductRepository.GetAllProducts()
        {
            return _contextDB.Products.ToList();
            /*throw new NotImplementedException();*/
        }
        void IProductRepository.AddProduct(Product product)
        {
            _contextDB.Products.Add(product);   
            _contextDB.SaveChanges();
           
            /*throw new NotImplementedException();*/
        }

/*................................................------------------------------------------*/
        void IProductRepository.DeleteProduct(int productId)
        {
            var deleteData = _contextDB.Products.Find(productId);
            _contextDB.Products.Remove(deleteData);
            _contextDB.SaveChanges();   
            /*throw new NotImplementedException();*/
        }

       

        Product IProductRepository.GetProductById(int productId)
        {
            var product  = _contextDB.Products.Where(i=>i.ProductId == productId).FirstOrDefault();

            return product;
        }

        void IProductRepository.UpdateProduct(Product product)
        {
            try
            {
                if(product != null) 
                {
                    _contextDB.Products.AddOrUpdate(product);
                    _contextDB.SaveChanges();
                }
            }
            catch { throw new NotImplementedException(); }
            /*throw new NotImplementedException();*/
        }
    }
}