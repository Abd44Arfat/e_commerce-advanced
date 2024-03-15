

class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';

  static const String BlinkerEnglish = 'Blinker';

  static String geLocalozedFontFamily() {
    final currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return BlinkerEnglish;
    }
  }
}
