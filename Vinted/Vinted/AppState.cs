﻿using System.Collections.ObjectModel;

namespace Vinted
{
    public static class AppState
    {
        public static ObservableCollection<ImageSource> Photos { get; } = new ObservableCollection<ImageSource>();
    }
}