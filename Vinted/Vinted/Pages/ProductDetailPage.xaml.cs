namespace Vinted.Pages;

public partial class ProductDetailPage : ContentPage
{
	public ProductDetailPage(Product product)
    {
		InitializeComponent();

        BindingContext = product;
    }

    private async void BackButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }
}