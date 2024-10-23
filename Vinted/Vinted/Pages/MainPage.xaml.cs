using Vinted.Popups;
﻿using System.Xml.Linq;

namespace Vinted.Pages
{
    public partial class MainPage : ContentPage
    {
            public MainPage()
            {
                InitializeComponent();

                Task.Run(async () =>
                {
                    ListaProduktow.ItemsSource = await App.dbService.GetAllProducts();
                });

                BindingContext = this;
            }

        private async void OnProductDoubleTapped(object sender, TappedEventArgs e)
        {
            var frame = sender as Frame;
            var product = frame?.BindingContext as Product;

            if (product != null)
                await Navigation.PushAsync(new ProductDetailPage(product));
        }

#pragma warning disable CS8604 // Możliwy argument odwołania o wartości null.
        private async void ImageButton_Clicked(object sender, EventArgs e)
        {
            if (userInput.Text != null && userInput.Text != "")
            {
                await Navigation.PushAsync(new SearchPage(userInput.Text));
            }
        }
#pragma warning restore CS8604 // Możliwy argument odwołania o wartości null.
    }

    public class Product
    {
        public string? Name { get; set; }
        public double Price { get; set; }
        public string? Image { get; set; }
    }

}
