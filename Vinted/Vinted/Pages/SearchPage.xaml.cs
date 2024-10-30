using Vinted.Models;

namespace Vinted.Pages;

public partial class SearchPage : ContentPage
{
	private string tekst = "";
    public List<Product> aktualneProdukty = new List<Product>();

    public SearchPage(string tekst)
	{
		InitializeComponent();
		Title = "Wyszukiwanie: '" + tekst + "'";
        this.tekst = tekst;

        Task.Run(async () =>
        {
            //await App.dbService.CreateProduct( 
            //    new Product
            //    { 
            //        Name = "aso",
            //        Description = "kup se aso człowieku", 
            //        Price = 167, 
            //        Gender = Enums.Gender.Unisex, 
            //        Condition = Enums.ProductCondition.Acceptable 
            //    });

            aktualneProdukty = await App.dbService.GetAllProducts();
        }).Wait();

        WyszukajProdukty();

    }
    public void WyszukajProdukty()
    {

        List<Product> produktyPrzeszukane = new List<Product>();

        for(int i = 0; i < aktualneProdukty.Count(); i++)
        {
            if (aktualneProdukty[i].Name.Contains(tekst))
            {
                produktyPrzeszukane.Add(aktualneProdukty[i]);
                
            }
        }
        aktualneProdukty = produktyPrzeszukane;
        ListaProduktow.ItemsSource = aktualneProdukty;
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        var frame = sender as Frame;
        var product = frame?.BindingContext as Product;

       // if (product != null)
            //await Navigation.PushAsync(new ProductDetailPage(product));
    }

    bool rosnaco = true;
    private void Button_Clicked(object sender, EventArgs e)
    {
        List<Product> PosortowaneProdukty;
        if (rosnaco)
        {
            PosortowaneProdukty = aktualneProdukty.OrderBy(p => p.Price).ToList();
            cena.Text = "Cena ↑";
        }
        else
        {
            PosortowaneProdukty = aktualneProdukty.OrderByDescending(p => p.Price).ToList();
            cena.Text = "Cena ↓";
        }

        rosnaco = !rosnaco;
        aktualneProdukty = PosortowaneProdukty;
        ListaProduktow.ItemsSource = aktualneProdukty;

    }

    private void OnShowFiltersClicked(object sender, EventArgs e)
    {
        FilterPopup.Show();
    }

    private void OnFilterSelected(object sender, string selectedFilter)
    {
        DisplayAlert("Wybrano!", $"Wybrano: {selectedFilter}", "OKEJ");
    }
}