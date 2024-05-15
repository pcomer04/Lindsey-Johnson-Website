﻿using System.Data;


namespace Lindsey_Website_API.Models
{
    public class ProductModel
    {

        public ProductModel(int productId, string name, string description, double price, string category, string image, int stock )
        {
            ProductId = productId;
            Name = name;
            Description = description;
            Price = price;
            Category = category;
            Image = image;
            Stock = stock;
        }
        int ProductId { get; set; }
        string Name { get; set; }
        string Description { get; set; }
        double Price { get; set; }
        string Category { get; set; }
        string Image { get; set; }
        int Stock { get; set; }

    }


}