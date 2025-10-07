import 'dart:ui';

class AppColors {
  // Main
  static Color primary = HexColor.fromHex("#117334"); //
  static Color black = HexColor.fromHex("#000000");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color background = HexColor.fromHex("#F8F9FA");
  static Color text = HexColor.fromHex("#5D6D7E");
  static Color border = HexColor.fromHex("#E2E8F0");
   static Color label = HexColor.fromHex("#4A5568");
   static Color grey = HexColor.fromHex("#64748B");
   static Color divider = HexColor.fromHex("#E5E7EB");
   static Color ash = HexColor.fromHex("#E2E8F0");
  
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
