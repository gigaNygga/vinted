﻿using Vinted.Pages;

namespace Vinted
{
    public partial class MainPage : ContentPage
    {
        public List<Product> Products { get; set; }

        public MainPage()
        {
            InitializeComponent();

            LoadProducts();
            BindingContext = this;
        }

        private void LoadProducts()
        {
            Products = new List<Product>
            {
                new Product { Name = "Produkt 1", Price = 59.99, Image = "produkt1.jpg" },
                new Product { Name = "Produkt 2", Price = 89.99, Image = "produkt2.jpg" },
                new Product { Name = "Produkt 3", Price = 45.50, Image = "produkt3.jpg" },
                new Product { Name = "Produkt 4", Price = 120.00, Image = "produkt4.jpg" },
                new Product { Name = "Produkt 5", Price = 11.11, Image = "produkt5.jpg" }
            };
        }

        private async void OnProductDoubleTapped(object sender, TappedEventArgs e)
        {
            var frame = sender as Frame;
            var product = frame?.BindingContext as Product;

            if (product != null)
                await Navigation.PushAsync(new ProductDetailPage(product));
        }
    }

    public class Product
    {
        public string Name { get; set; }
        public double Price { get; set; }
        public string Image { get; set; }
    }

}