using Vinted.Models;

namespace Vinted.Pages;

public partial class ProductDetailPage : ContentPage
{
    private readonly int _id;
	public ProductDetailPage(int id)
    {
		InitializeComponent();

        _id = id;
        LoadProductDetails(_id);
    }

    private void LoadProductDetails(int productId)
    {
        Task.Run(async () =>
        {
            var product = await App.DbService.GetProductById(productId);

            if (product != null) 
                BindingContext = product;
            else
                await Navigation.PopAsync();
        });
    }

    private async void BackButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }
}