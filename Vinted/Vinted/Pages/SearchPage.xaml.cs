namespace Vinted.Pages;

public partial class SearchPage : ContentPage
{
	private string tekst;
	public SearchPage(string tekst)
	{
		InitializeComponent();
		Title = "Wyszukiwanie: '" + tekst + "'";
        this.tekst = tekst;
        WyszukajProdukty();
	}

    private void WyszukajProdukty()
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

        ListaProduktow.ItemsSource = produktyPrzeszukane;
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        var frame = sender as Frame;
        var product = frame?.BindingContext as Product;

        if (product != null)
            await Navigation.PushAsync(new ProductDetailPage(product));
    }
}