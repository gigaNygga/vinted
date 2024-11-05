namespace Vinted.Pages;

public partial class Messages : ContentPage
{
	public Messages()
	{
		InitializeComponent();
	}

    private void OnSendButtonClicked(object sender, EventArgs e)
    {
        string message = messageEditor.Text;

        if (!string.IsNullOrWhiteSpace(message))
        {
            // Tworzymy now¹ etykietê dla wys³anej wiadomoœci
            Label messageLabel = new Label
            {
                Text = message,
                TextColor = Colors.Black,
                BackgroundColor = Colors.LightGray,
                Padding = new Thickness(10),
                Margin = new Thickness(0, 5),
                HorizontalOptions = LayoutOptions.Start
            };

            // Dodajemy wiadomoœæ do stackLayout
            messageStackLayout.Children.Add(messageLabel);

            // Czyszczenie pola wiadomoœci
            messageEditor.Text = string.Empty;
        }
    }
}