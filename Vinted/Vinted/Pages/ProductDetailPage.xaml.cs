using Vinted.Enums;

namespace Vinted.Pages;
using Vinted.Models;

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
        {
            BindingContext = new
            {
                product.Name,
                product.Price,
                product.Description,
                Gender = product.Gender.GetEnumDescription(),
                Condition = product.Condition.GetEnumDescription()
            };

            var imagePaths = product.GetImagePaths();
            PhotosCollectionView.ItemsSource = imagePaths.Select(path => ImageSource.FromFile(path)).ToList();
        }
        else
        {
            await DisplayAlert("Produktu ju¿ nie ma!", "Ktoœ zd¹¿y³ kupiæ lub usun¹æ produkt :(", "OK, wracam szukaæ czegoœ innego");
            await Navigation.PopAsync();
        }
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