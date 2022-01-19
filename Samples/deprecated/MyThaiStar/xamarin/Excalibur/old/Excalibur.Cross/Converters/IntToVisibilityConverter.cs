﻿using System.Globalization;
using MvvmCross.Platform.UI;
using MvvmCross.Plugins.Visibility;

namespace Excalibur.Cross.Converters
{
    /// <summary>
    /// MvvmCross Int to Visibility Converter
    /// </summary>
    public class IntToVisibilityConverter : MvxBaseVisibilityValueConverter
    {
        protected override MvxVisibility Convert(object value, object parameter, CultureInfo culture)
        {
            var isInt = (value is int);

            if (isInt)
                return (int)value > 0 ? MvxVisibility.Visible : MvxVisibility.Collapsed;

            return MvxVisibility.Visible;
        }
    }
}
