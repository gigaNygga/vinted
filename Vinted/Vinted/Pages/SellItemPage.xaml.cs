using System.Collections.ObjectModel;

namespace Vinted.Pages;

public partial class SellItemPage : ContentPage
{
	public ObservableCollection<ImageSource> Photos => AppState.Photos;

    public string AddPhotosButtonText => Photos.Count > 0 ? $"Dodaj zdj�cia ({Photos.Count}/5)" : "Dodaj zdj�cia";
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
			await DisplayAlert("Limit zdj��", "Mo�esz doda� maksymalnie 5 zdj��.", "OK");
			return;
		}

        /* wczytywanie zdj�� i poprawne wy�wietlanie je po powrocie z innych zak�adek
         * podczas edytowania og�oszenia. 
         * ??TODO: przechowywa� dane tymczasowo w bazie??*/
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
			await DisplayAlert("B��d", "Nie uda�o si� doda� zdj�cia: " + ex.Message, "OK");
		}
    }
}