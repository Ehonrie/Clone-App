import 'dart:ui';

class AppColors {
  // Main
  static Color primary = HexColor.fromHex("#FD5E53"); //
  static Color black = HexColor.fromHex("#000000");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color background = HexColor.fromHex("#F8F9FA");
  static Color text = HexColor.fromHex("#5D6D7E");
  static Color border = HexColor.fromHex("#E2E8F0");
   static Color label = HexColor.fromHex("#4A5568");
  
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
