namespace Vinted.Pages;

public partial class login : ContentPage
{
	public login()
	{
		InitializeComponent();
	}
    private void OnLoginButtonClicked(object sender, EventArgs e)
    {
        string username = usernameEntry.Text;
        string password = passwordEntry.Text;

        // Prosta weryfikacja u¿ytkownika (w prawdziwej aplikacji po³¹czysz to z baz¹ danych lub API)
        if (username == "admin" && password == "password")
        {
            // Pomyœlne logowanie
            DisplayAlert("Sukces", "Zalogowano", "OK");
        }
        else
        {
            // Poka¿ b³¹d
            errorMessage.Text = "Z³a nazwa lub has³o ";
            errorMessage.IsVisible = true;
        }
    }
}