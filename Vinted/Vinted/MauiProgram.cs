using Microsoft.Extensions.Logging;
using Vinted.Pages;
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

            builder.Services.AddSingleton<LocalDbService>();
            builder.Services.AddTransient<MainPage>();
            builder.Services.AddTransient<ProductDetailPage>();
            builder.Services.AddTransient<SearchPage>();
            builder.Services.AddTransient<SellItemPage>();
#if DEBUG
            builder.Logging.AddDebug();
#endif
            return builder.Build();
        }
    }
}