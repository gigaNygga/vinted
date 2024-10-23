using Microsoft.Extensions.Logging;
<<<<<<< HEAD
=======
using Vinted.Pages;
>>>>>>> Fabian
using CommunityToolkit.Maui;

namespace Vinted
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder.UseMauiApp<App>().ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            }).UseMauiCommunityToolkitMediaElement();
<<<<<<< HEAD
=======

            builder.Services.AddSingleton<LocalDbService>();
            builder.Services.AddTransient<MainPage>();
            builder.Services.AddTransient<ProductDetailPage>();
            builder.Services.AddTransient<SearchPage>();
            builder.Services.AddTransient<SellItemPage>();
>>>>>>> Fabian
#if DEBUG
            builder.Logging.AddDebug();
#endif
            return builder.Build();
        }
    }
}