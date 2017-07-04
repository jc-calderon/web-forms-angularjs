using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApplication.Models;

namespace WebApplication.Controllers
{
    public class ProductController : ApiController
    {
        private readonly Product[] products = {
            new Product { Id = 1, Name = "Laptop", Description = "Mac", Quantity = 100 },
            new Product { Id = 2, Name = "Smartphone", Description = "Samsung Galaxy s10", Quantity = 350 },
            new Product { Id = 3, Name = "All in one", Description = "Microsoft Surface", Quantity = 60 }
        };

        // GET: api/product
        public IHttpActionResult GetProducts()
        {
            return Ok(products);
        }
    }
}