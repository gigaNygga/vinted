using System;
using System.Drawing;
using System.Xml;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.Shapes;
using Vinted.Enums;
using Vinted.Models;

namespace Vinted.Popups
{
    public partial class FilterPopupView : ContentView
    {
        public event EventHandler<List<Product>>? FilterSelected;
        private string sexButton = "KMU";
        private List<Product> products = [];
        private int minPrice, maxPrice;
        public FilterPopupView()
        {
            InitializeComponent();
            MezczyzniButton.AutomationId = "M";
            KobietyButton.AutomationId = "K";
            UnisexButton.AutomationId= "U";
        }

        private void OnFilterClicked(object sender, EventArgs e)
        {
            if (sender is Button button)
            {
                if (string.IsNullOrEmpty(cenaOD.Text))
                    minPrice = 0;
                else
                    minPrice = int.Parse(cenaOD.Text);

                if(string.IsNullOrEmpty(cenaDO.Text))
                    maxPrice = int.MaxValue;
                else
                    maxPrice = int.Parse(cenaDO.Text);

                var filteredProducts = products
                    .Where(p =>
                            ((sexButton.Contains("M") && p.Gender == Gender.Man) || (sexButton.Contains("K") && p.Gender == Gender.Woman) || (sexButton.Contains("U") && p.Gender == Gender.Unisex)) 
                        &&
                            (p.Price >= minPrice && p.Price <= maxPrice)
                        &&
                        (
                            (nowy.IsChecked && p.Condition == ProductCondition.New) ||
                            (bdb.IsChecked && p.Condition == ProductCondition.VeryGood) ||
                            (db.IsChecked && p.Condition == ProductCondition.Good) ||
                            (git.IsChecked && p.Condition == ProductCondition.Acceptable) ||
                            (niepelny.IsChecked && p.Condition == ProductCondition.Damaged)
                        )
                    )
                    .ToList();
                // Wys�anie wybranego filtru
                FilterSelected?.Invoke(this, filteredProducts);
                Hide();
            }
        }

        private void OnCloseClicked(object sender, EventArgs e)
        {
            Hide();
        }

        public void Show(List<Product> produkty)
        {
            this.IsVisible = true;
            products = produkty;

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
                sexButton = clickedButton.AutomationId;
            }
        }
    }
}
