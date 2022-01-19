﻿using System;
using System.Collections.Generic;
using System.DrawingCore;
using System.Text;

namespace System.Windows.Forms
{
    /// <summary>Provides methods used to measure and render text. This class cannot be inherited. </summary>
    public sealed class TextRenderer
    {
        private TextRenderer()
        {
        }
     
        /// <summary>Provides the size, in pixels, of the specified text when drawn with the specified font.</summary>
        /// <param name="text">The text to measure.</param>
        /// <param name="font">The <see cref="T:Color" /> to apply to the measured text.</param>
        /// <returns>The <see cref="T:System.DrawingCore.Size" />, in pixels, of <paramref name="text" /> drawn on a single line with the specified <paramref name="font" />. You can manipulate how the text is drawn by using one of the <see cref="M:System.Windows.Forms.TextRenderer.DrawText(System.DrawingCore.IDeviceContext,System.String,Color,System.DrawingCore.Rectangle,Color,System.Windows.Forms.TextFormatFlags)" /> overloads that takes a <see cref="T:System.Windows.Forms.TextFormatFlags" /> parameter. For example, the default behavior of the <see cref="T:System.Windows.Forms.TextRenderer" /> is to add padding to the bounding rectangle of the drawn text to accommodate overhanging glyphs. If you need to draw a line of text without these extra spaces you should use the versions of <see cref="M:System.Windows.Forms.TextRenderer.DrawText(System.DrawingCore.IDeviceContext,System.String,Color,System.DrawingCore.Point,Color)" /> and <see cref="M:System.Windows.Forms.TextRenderer.MeasureText(System.DrawingCore.IDeviceContext,System.String,Color)" /> that take a <see cref="T:System.DrawingCore.Size" /> and <see cref="T:System.Windows.Forms.TextFormatFlags" /> parameter. For an example, see <see cref="M:System.Windows.Forms.TextRenderer.MeasureText(System.DrawingCore.IDeviceContext,System.String,Color,System.DrawingCore.Size,System.Windows.Forms.TextFormatFlags)" />.</returns>
        public static Size MeasureText(string text, Font font)
        {
            if (string.IsNullOrEmpty(text))
            {
                return Size.Empty;
            }
            Size result = new Size(19, 19);
            return result;
        }
    }
}