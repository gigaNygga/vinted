using System.Xml.Linq;

namespace Vinted.Pages
{
    public partial class MainPage : ContentPage
    {

        private readonly LocalDbService _dbService;

        public List<Product>? Products { get; set; }

        public MainPage(LocalDbService dbService)
        {
            InitializeComponent();
            _dbService = dbService;

            Task.Run(async () =>
            {
                //await LoadProducts();
                //await _dbService.DeleteProduct(1);

                ListaProduktow.ItemsSource = await _dbService.GetAllProducts();
            });

            BindingContext = this;
        }

        //private async Task LoadProducts()
        //{
        //    await _dbService.CreateProduct(new Models.Product
        //    {
        //        Name = "Produkt pierwszy",
        //        Description = "Bardzo fajny produkt. Sentymentalny i tani!",
        //        Condition = Enums.ProductCondition.Good,
        //        Gender = Enums.Gender.Unisex,
        //        Price = 120,
        //        ImagesPath = ""
        //    });
        //}

        private async void OnProductDoubleTapped(object sender, TappedEventArgs e)
        {
            var frame = sender as Frame;
            var product = frame?.BindingContext as Product;

            if (product != null)
                await Navigation.PushAsync(new ProductDetailPage(product));
        }

        private async void ImageButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SearchPage(userInput.Text));
        }
    }

    public class Product
    {
        public string? Name { get; set; }
        public double Price { get; set; }
        public string? Image { get; set; }
    }

}
