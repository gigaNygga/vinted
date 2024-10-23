using System.Collections.ObjectModel;
using Vinted.Enums;

namespace Vinted.Pages;

public partial class SellItemPage : ContentPage
{
	public ObservableCollection<ImageSource> Photos => AppState.Photos;

    public string AddPhotosButtonText => Photos.Count > 0 ? $"Dodaj zdjêcia ({Photos.Count}/5)" : "Dodaj zdjêcia";
    public bool IsAddPhotosButtonEnabled => Photos.Count < 5;

    public List<string> GenderOptions {  get; set; }
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
                using (var stream = await photo.OpenReadAsync())
                {
                    var memoryStream = new MemoryStream();
                    await stream.CopyToAsync(memoryStream);
                    memoryStream.Position = 0;

                    var imageSource = ImageSource.FromStream(() => new MemoryStream(memoryStream.ToArray()));
                    Photos.Add(imageSource);
                }
            }
        }
		catch (Exception ex)
		{
			await DisplayAlert("B³¹d", "Nie uda³o siê dodaæ zdjêcia: " + ex.Message, "OK");
		}
    }

    private void AddNewProductClicked(object sender, EventArgs e)
    {

    }
}