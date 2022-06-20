import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flager_ui/flager_ui.dart';

void main() {

  test('Theme data control test', () {
    final ThemeData dark = FlagerUi.themeData(brightness: Brightness.dark);
    expect(dark, hasOneLineDescription);
    expect(dark, equals(dark.copyWith()));
    expect(dark.hashCode, equals(dark.copyWith().hashCode));
    final ThemeData light = ThemeData.light();
    final ThemeData dawn = ThemeData.lerp(dark, light, 0.25);
    expect(dawn.brightness, Brightness.dark);
    expect(dawn.primaryColor, Color.lerp(dark.primaryColor, light.primaryColor, 0.25));
  });
}
