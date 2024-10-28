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
}