using Vinted.Pages;

namespace Vinted
{
    public partial class App : Application
    {
        public static LocalDbService DbService { get; private set; }

        public App()
        {
            InitializeComponent();

            DbService = new LocalDbService();

            MainPage = new AppShell();
        }
    }
}
