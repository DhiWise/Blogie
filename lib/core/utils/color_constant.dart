import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#585858');

  static Color purple200 = fromHex('#d48fd5');

  static Color gray400 = fromHex('#bfbfbf');

  static Color gray401 = fromHex('#c5c5c5');

  static Color gray800 = fromHex('#3d3d3d');

  static Color gray900 = fromHex('#200e32');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color teal51 = fromHex('#cdf8f3');

  static Color teal50 = fromHex('#d2eae8');

  static Color deepPurpleA2007e = fromHex('#7e864afc');

  static Color gray50 = fromHex('#fafafa');

  static Color gray100 = fromHex('#f6f6f6');

  static Color deepPurple50 = fromHex('#e8ddff');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color deepPurple51 = fromHex('#ebe0ff');

  static Color deepPurpleA100 = fromHex('#a77cfb');

  static Color deepPurpleA200 = fromHex('#864afc');

  static Color whiteA700 = fromHex('#ffffff');

  static Color pink200 = fromHex('#fba0b3');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
