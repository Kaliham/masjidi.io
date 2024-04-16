import 'package:flutter/material.dart';

abstract class ThemeBase {
  const ThemeBase();
  abstract final Color primaryColor;
  abstract final Color secondaryColor;
  abstract final Color backgroundColor;
  abstract final Color textColor;
  abstract final Color primaryAccentColor;
  abstract final Color secondaryAccentColor;
  abstract final Color backgroundAccentColor;
  abstract final Color textAccentColor;
}

class Light extends ThemeBase {
  const Light();
  @override
  Color get primaryColor => const Color(0xFF4D6375);

  @override
  Color get backgroundAccentColor => const Color(0xFFFDE6DA);

  @override
  Color get backgroundColor => const Color(0xFFFDFCFB);

  @override
  Color get primaryAccentColor => const Color(0xFF4F5762);

  @override
  Color get secondaryAccentColor => const Color(0xFFD5937F);

  @override
  Color get secondaryColor => const Color(0xFFFCD6C7);

  @override
  Color get textAccentColor => const Color(0xFFD5937F);

  @override
  Color get textColor => const Color(0xFF4F5762);
}
