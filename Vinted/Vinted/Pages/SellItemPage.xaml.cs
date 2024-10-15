using System.Collections.ObjectModel;

namespace Vinted.Pages;

public partial class SellItemPage : ContentPage
{
	public ObservableCollection<ImageSource> Photos => AppState.Photos;

    public string AddPhotosButtonText => Photos.Count > 0 ? $"Dodaj zdjêcia ({Photos.Count}/5)" : "Dodaj zdjêcia";
    public bool IsAddPhotosButtonEnabled => Photos.Count < 5;

    public SellItemPage()
	{
		InitializeComponent();
		BindingContext = this;

        Photos.CollectionChanged += (s, e) =>
        {
            OnPropertyChanged(nameof(AddPhotosButtonText));
            OnPropertyChanged(nameof(IsAddPhotosButtonEnabled));
			OnPropertyChanged(nameof(Photos));
        };
    }

    private async void AddPhotosClicked(object sender, EventArgs e)
    {
		if (Photos.Count >= 5)
		{
			await DisplayAlert("Limit zdjêæ", "Mo¿esz dodaæ maksymalnie 5 zdjêæ.", "OK");
			return;
		}

        /* wczytywanie zdjêæ i poprawne wyœwietlanie je po powrocie z innych zak³adek
         * podczas edytowania og³oszenia. 
         * ??TODO: przechowywaæ dane tymczasowo w bazie??*/
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
}