namespace Vinted.Pages;

public partial class SearchPage : ContentPage
{
	private string tekst = "";
	public SearchPage(string tekst)
	{
		InitializeComponent();
		Title = "Wyszukiwanie: '" + tekst + "'";
        this.tekst = tekst;
        WyszukajProdukty();
	}
    public List<Product> aktualneProdukty = new List<Product>();
    public void WyszukajProdukty()
    {
        List<Product> produkty = new List<Product>
            {
                new Product { Name = "kurtka zimowa", Price = 59.99, Image = "produkt1.jpg" },
                new Product { Name = "kurtka wiosenna", Price = 89.99, Image = "produkt2.jpg" },
                new Product { Name = "narzuta wiosenna", Price = 45.50, Image = "produkt3.jpg" },
                new Product { Name = "spodenki", Price = 120.00, Image = "produkt4.jpg" },
                new Product { Name = "skarpety", Price = 11.11, Image = "produkt5.jpg" }
            };

        List<Product> produktyPrzeszukane = new List<Product>();

        for(int i = 0; i < produkty.Count(); i++)
        {
            if (produkty[i].Name.Contains(tekst))
            {
                produktyPrzeszukane.Add(produkty[i]);
            }
        }
        aktualneProdukty = produktyPrzeszukane;
        ListaProduktow.ItemsSource = produktyPrzeszukane;
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        var frame = sender as Frame;
        var product = frame?.BindingContext as Product;

        if (product != null)
            await Navigation.PushAsync(new ProductDetailPage(product));
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