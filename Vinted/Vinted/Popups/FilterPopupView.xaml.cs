using System;
using System.Drawing;
using System.Xml;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.Shapes;

namespace Vinted.Popups
{
    public partial class FilterPopupView : ContentView
    {
        public event EventHandler<string>? FilterSelected;
        public FilterPopupView()
        {
            InitializeComponent();
        }

        private void OnFilterClicked(object sender, EventArgs e)
        {
            if (sender is Button button)
            {
                // Wys�anie wybranego filtru
                FilterSelected?.Invoke(this, button.Text);
                Hide();
            }
        }

        private void OnCloseClicked(object sender, EventArgs e)
        {
            Hide();
        }

        public void Show()
        {
            this.IsVisible = true;
        }

        public void Hide()
        {
            this.IsVisible = false;
        }

        private void OnButtonClicked(object sender, EventArgs e)
        {
            Button? clickedButton = sender as Button;

            // Zresetuj wygl�d wszystkich przycisk�w do domy�lnego
            KobietyButton.BackgroundColor = Colors.White;
            MezczyzniButton.BackgroundColor = Colors.White;
            UnisexButton.BackgroundColor = Colors.White;
            KobietyButton.TextColor = Colors.HotPink;
            MezczyzniButton.TextColor = Colors.HotPink;
            UnisexButton.TextColor = Colors.HotPink;

            // Zaznacz wybrany przycisk na czarno
            if (clickedButton != null)
            {
                clickedButton.BackgroundColor = Colors.HotPink;
                clickedButton.TextColor = Colors.White;
            }
        }
    }
}
