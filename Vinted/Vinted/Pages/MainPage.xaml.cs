using System.ComponentModel;
using System.Windows.Input;

namespace Vinted.Pages
{
    public partial class MainPage : ContentPage, INotifyPropertyChanged
    {
        private bool isRefreshing;
        public bool IsRefreshing
        {
            get => isRefreshing;
            set
            {
                if (isRefreshing != value)
                {
                    isRefreshing = value;
                    OnPropertyChanged(nameof(IsRefreshing));
                }
            }
        }

        public ICommand RefreshCommand { get; }
        public MainPage()
        {
            InitializeComponent();

            RefreshCommand = new Command(async () => await RefreshProducts());
            BindingContext = this;

            Task.Run(async () => await LoadProducts());
        }

        private async Task RefreshProducts()
        {
            IsRefreshing = true;
            await LoadProducts();
            IsRefreshing = false;
        }

        private async Task LoadProducts()
        {
            var products = await App.DbService.GetAllProducts();

            ListaProduktow.ItemsSource = products;
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
