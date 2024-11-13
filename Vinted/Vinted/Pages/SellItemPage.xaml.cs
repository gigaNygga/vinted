using System.Collections.ObjectModel;
using Vinted.Enums;
using Vinted.Models;

namespace Vinted.Pages;

public partial class SellItemPage : ContentPage
{
    public ObservableCollection<ImageSource> Photos => AppState.Photos;
    private List<string> ImagePaths = new List<string>();

    public string AddPhotosButtonText => Photos.Count > 0 ? $"Dodaj zdjêcia ({Photos.Count}/5)" : "Dodaj zdjêcia";
    public bool IsAddPhotosButtonEnabled => Photos.Count < 5;

    public List<string> GenderOptions { get; set; }
    public List<string> ProductConditionOptions { get; set; }

    public SellItemPage()
    {
        InitializeComponent();

        Photos.CollectionChanged += (s, e) =>
        {
            OnPropertyChanged(nameof(AddPhotosButtonText));
            OnPropertyChanged(nameof(IsAddPhotosButtonEnabled));
            OnPropertyChanged(nameof(Photos));
        };

        GenderOptions = Enum.GetValues(typeof(Gender)).Cast<Gender>().Select(g => g.GetEnumDescription()).ToList();
        ProductConditionOptions = Enum.GetValues(typeof(ProductCondition)).Cast<ProductCondition>().Select(pc => pc.GetEnumDescription()).ToList();

        BindingContext = this;
    }

    private async void AddPhotosClicked(object sender, EventArgs e)
    {
        if (Photos.Count >= 5)
        {
            await DisplayAlert("Limit zdjêæ", "Mo¿esz dodaæ maksymalnie 5 zdjêæ.", "OK");
            return;
        }

        try
        {
            var photo = await MediaPicker.PickPhotoAsync();
            if (photo != null)
            {
                var fileName = $"{Guid.NewGuid()}{Path.GetExtension(photo.FileName)}";
                var targetPath = Path.Combine(FileSystem.AppDataDirectory, fileName);

                using (var stream = await photo.OpenReadAsync())
                using (var fileStream = File.OpenWrite(targetPath))
                {
                    await stream.CopyToAsync(fileStream);
                }

                ImagePaths.Add(targetPath);
                Photos.Add(ImageSource.FromFile(targetPath));
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("B³¹d", "Nie uda³o siê dodaæ zdjêcia: " + ex.Message, "OK");
        }
    }

    private async void AddNewProductClicked(object sender, EventArgs e)
    {
        var newProduct = new Models.Product
        {
            Name = Name.Text,
            Description = Description.Text,
            Price = decimal.TryParse(Price.Text, out var price) ? price : 0,
            Gender = (Gender)GenderOptions.IndexOf(GenderPicker.SelectedItem.ToString()),
            Condition = (ProductCondition)ProductConditionOptions.IndexOf(ConditionPicker.SelectedItem.ToString()),
        };

        newProduct.SetImagePaths(ImagePaths);

        await App.DbService.CreateProduct(newProduct);

        ImagePaths.Clear();
        Photos.Clear();
        await Navigation.PushAsync(new SellItemPage());
        Navigation.RemovePage(this);
    }
}