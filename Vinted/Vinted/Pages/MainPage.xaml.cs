namespace Vinted.Pages
{
    public partial class MainPage : ContentPage
    {
            public MainPage()
            {
                InitializeComponent();

                Task.Run(async () =>
                {
                    await LoadProducts();
                });

                BindingContext = this;
            }

        private async Task LoadProducts()
        {
            var products = await App.DbService.GetAllProducts();

            ListaProduktow.ItemsSource = products.Select(p => new
            {
                p.Name,
                p.Price,
                Image = p.FirstImagePath,
            }).ToList();
        }

        private async void OnProductDoubleTapped(object sender, TappedEventArgs e)
        {
            var frame = sender as Frame;
            var product = frame?.BindingContext as Models.Product;

            if (product != null)
                await Navigation.PushAsync(new ProductDetailPage(product.Id));
        }

        private async void ImageButton_Clicked(object sender, EventArgs e)
        {
            if (userInput.Text != null && userInput.Text != "")
            {
                await Navigation.PushAsync(new SearchPage(userInput.Text));
            }
        }
    }

    public class Product
    {
        public string? Name { get; set; }
        public double Price { get; set; }
        public string? Image { get; set; }
    }

}
