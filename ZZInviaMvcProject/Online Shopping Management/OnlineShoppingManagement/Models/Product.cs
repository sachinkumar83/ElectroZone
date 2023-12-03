namespace OnlineShoppingManagement.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Web;

    public partial class Product
    {
        public Product()
        {
            this.OrderItems = new HashSet<OrderItem>();
            this.Categories = new HashSet<Category>();
            this.Carts = new HashSet<Cart>();
        }

        public int ProductId { get; set; }

        [Required(ErrorMessage = "Name is required.")]
        [StringLength(100, ErrorMessage = "Name cannot exceed 100 characters.")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Description is required.")]
        public string Description { get; set; }

        [Required(ErrorMessage = "Price is required.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "Price must be greater than 0.")]
        public decimal Price { get; set; }

        [Required(ErrorMessage = "CategoryId is required.")]
        public int CategoryId { get; set; }

        [Required(ErrorMessage = "Image path is required.")]
        public string ImagePath { get; set; }

        [Required(ErrorMessage = "Image file is required.")]
        [DisplayName("Select Image")]
        [NotMapped] // This property will not be mapped to the database
        public HttpPostedFileBase ImageFile { get; set; }

        public virtual Category Category { get; set; }
        public virtual ICollection<OrderItem> OrderItems { get; set; }
        public virtual ICollection<Category> Categories { get; set; }
        public virtual ICollection<Cart> Carts { get; set; }
    }
}
