import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006a63),
      surfaceTint: Color(0xff006a63),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9df2e8),
      onPrimaryContainer: Color(0xff00201d),
      secondary: Color(0xff4a6360),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcce8e4),
      onSecondaryContainer: Color(0xff051f1d),
      tertiary: Color(0xff47617a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffcee5ff),
      onTertiaryContainer: Color(0xff001d33),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff4fbf9),
      onSurface: Color(0xff161d1c),
      onSurfaceVariant: Color(0xff3f4947),
      outline: Color(0xff6f7977),
      outlineVariant: Color(0xffbec9c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3231),
      inversePrimary: Color(0xff81d5cc),
      primaryFixed: Color(0xff9df2e8),
      onPrimaryFixed: Color(0xff00201d),
      primaryFixedDim: Color(0xff81d5cc),
      onPrimaryFixedVariant: Color(0xff00504b),
      secondaryFixed: Color(0xffcce8e4),
      onSecondaryFixed: Color(0xff051f1d),
      secondaryFixedDim: Color(0xffb1ccc8),
      onSecondaryFixedVariant: Color(0xff324b48),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001d33),
      tertiaryFixedDim: Color(0xffafc9e7),
      onTertiaryFixedVariant: Color(0xff2f4961),
      surfaceDim: Color(0xffd5dbd9),
      surfaceBright: Color(0xfff4fbf9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f3),
      surfaceContainer: Color(0xffe9efed),
      surfaceContainerHigh: Color(0xffe3eae7),
      surfaceContainerHighest: Color(0xffdde4e2),
    );
  }

  static ThemeData light() {
    return ThemeData(
      fontFamily: 'Inter',
      colorScheme: lightScheme(),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff81d5cc),
      surfaceTint: Color(0xff81d5cc),
      onPrimary: Color(0xff003733),
      primaryContainer: Color(0xff00504b),
      onPrimaryContainer: Color(0xff9df2e8),
      secondary: Color(0xffb1ccc8),
      onSecondary: Color(0xff1c3532),
      secondaryContainer: Color(0xff324b48),
      onSecondaryContainer: Color(0xffcce8e4),
      tertiary: Color(0xffafc9e7),
      onTertiary: Color(0xff17324a),
      tertiaryContainer: Color(0xff2f4961),
      onTertiaryContainer: Color(0xffcee5ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff171821),
      onSurface: Color(0xffdde4e2),
      onSurfaceVariant: Color(0xffbec9c6),
      outline: Color(0xff899391),
      outlineVariant: Color(0xff3f4947),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e2),
      inversePrimary: Color(0xff006a63),
      primaryFixed: Color(0xff9df2e8),
      onPrimaryFixed: Color(0xff00201d),
      primaryFixedDim: Color(0xff81d5cc),
      onPrimaryFixedVariant: Color(0xff00504b),
      secondaryFixed: Color(0xffcce8e4),
      onSecondaryFixed: Color(0xff051f1d),
      secondaryFixedDim: Color(0xffb1ccc8),
      onSecondaryFixedVariant: Color(0xff324b48),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001d33),
      tertiaryFixedDim: Color(0xffafc9e7),
      onTertiaryFixedVariant: Color(0xff2f4961),
      surfaceDim: Color(0xff0e1514),
      surfaceBright: Color(0xff343a39),
      surfaceContainerLowest: Color(0xff090f0f),
      surfaceContainerLow: Color(0xff161d1c),
      surfaceContainer: Color(0xff21222D),
      surfaceContainerHigh: Color(0xff252b2a),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      fontFamily: 'Inter',
      sliderTheme: SliderThemeData(
        thumbShape: SliderComponentShape.noThumb,
        trackShape: EdgeToEdgeTrackShape(),
      ),
      colorScheme: darkScheme(),
    );
  }
}

class EdgeToEdgeTrackShape extends RoundedRectSliderTrackShape {
  // Override getPreferredRect to adjust the track's dimensions
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 2.0;
    final double trackWidth = parentBox.size.width;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    return Rect.fromLTWH(offset.dx, trackTop, trackWidth, trackHeight);
  }
}
