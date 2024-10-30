using Vinted.Models;

namespace Vinted.Pages;

public partial class ProductDetailPage : ContentPage
{
    private readonly int id;
    public ProductDetailPage(int _id)
    {
        InitializeComponent();

        id = _id;
        LoadProductDetails(id);
    }

    Models.Product product;
    private async void LoadProductDetails(int productId)
    {
        product = await App.DbService.GetProductById(productId);

        if (product != null)
            BindingContext = product;
        else
            await Navigation.PopAsync();

        var imagePaths = product.GetImagePaths();
        PhotosCollectionView.ItemsSource = imagePaths.Select(path => ImageSource.FromFile(path)).ToList();
    }

    private async void BackButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }

    private async void Usun(object sender, EventArgs e)
    {
        await App.DbService.DeleteProduct(id);
    }
}