using Vinted.Pages;

namespace Vinted
{
    public partial class App : Application
    {
        public static LocalDbService dbService { get; private set; }

        public App()
        {
            InitializeComponent();

            dbService = new LocalDbService();

            MainPage = new AppShell();
        }
    }
}
