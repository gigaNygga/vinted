using Microsoft.Extensions.Logging.Abstractions;
using Microsoft.Maui.Controls;

namespace Vinted.Pages;

public partial class settings : ContentPage
{
	public settings()
	{
        InitializeComponent();
        LoadUserData();
    }

    // Za³aduj dane u¿ytkownika (np. zdjêcie, login, adres)
    private void LoadUserData()
    {
        // Zak³adaj¹c, ¿e masz u¿ytkownika z danymi
        ProfileImage.Source = "domyœlne_zdjêcie.png"; // Œcie¿ka do obecnego zdjêcia u¿ytkownika
        LoginEntry.Text = "ObecnyLogin"; // Przyk³ad obecnego loginu
        PasswordEntry.Text = ""; // Wyczyœæ pole has³a
        AddressEntry.Text = "ObecnyAdres"; // Przyk³ad obecnego adresu
    }

    // Obs³uga zmiany zdjêcia
    private async void OnChangePhotoClicked(object sender, EventArgs e)
    {
        // Tutaj dodaj kod otwieraj¹cy galeriê lub aparat w celu wybrania nowego zdjêcia
        // Na przyk³ad:
        var photo = await MediaPicker.PickPhotoAsync();
        if (photo != null)
        {
            ProfileImage.Source = ImageSource.FromFile(photo.FullPath);
        }
    }

    // Obs³uga zapisania zmian
    private void OnSaveChangesClicked(object sender, EventArgs e)
    {
        string newLogin = LoginEntry.Text;
        string newPassword = PasswordEntry.Text;
        string newAddress = AddressEntry.Text;

        // Tutaj dodaj logikê zapisuj¹c¹ zmiany w danych u¿ytkownika (np. w bazie danych lub w ustawieniach aplikacji)

        DisplayAlert("Ustawienia zapisane", "Twoje zmiany zosta³y zapisane.", "OK");
    }
}
