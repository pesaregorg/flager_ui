library flager_ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;


part 'constants.dart';
part 'theme_helper/colors.dart';
part 'theme_helper/buttons.dart';
part 'theme_helper/text_fields.dart';
part 'theme_helper/dialog.dart';
part 'theme_helper/snack_bar.dart';
part 'widgets/elevated_tag.dart';
part 'widgets/outlined_tag.dart';
part 'widgets/elevated_buttons.dart';
part 'widgets/checkbox.dart';
part 'widgets/radio.dart';








class FlagerUi{



  static ThemeData themeData({
    Brightness? brightness,
    MaterialColor? primaryColor,
    String? fontFamily,
    bool? useMaterial3
  }){

    var themeColor = primaryColor ?? FColors.primaries[0];
    ThemeData themeData = ThemeData(
      useMaterial3: useMaterial3 ?? true,
      primaryColor: themeColor,
      brightness: brightness ?? Brightness.light,
      fontFamily: fontFamily,
      primarySwatch: themeColor,
    );

    themeData = themeData.copyWith(
        appBarTheme: themeData.appBarTheme.copyWith(elevation: 0),
        splashColor: themeColor.withAlpha(50),
        hintColor: themeData.hintColor.withAlpha(90),
        errorColor: Colors.red,
        textButtonTheme: FButtons.textButtonThemeData(),
        elevatedButtonTheme: FButtons.elevatedButtonThemeData(primaryColor: themeColor),
        outlinedButtonTheme: FButtons.outlinedButtonThemeData(primaryColor: themeColor),
        inputDecorationTheme: FTextFields.inputDecorationTheme(themeData: themeData),
        dialogTheme: FDialogTheme.dialogTheme(),
        snackBarTheme: FSnackBar.snackBarThemeData(themeData: themeData),
        switchTheme: themeData.switchTheme.copyWith(
          trackColor: MaterialStateColor.resolveWith((states){
            if (states.contains(MaterialState.selected)) {
              return themeColor;
            }
            return Colors.grey.withOpacity(0.48);
          }),
          thumbColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return themeColor;
            }
            return Colors.grey;
          }),
        ),
        tabBarTheme: themeData.tabBarTheme.copyWith(
            labelStyle: themeData.tabBarTheme.labelStyle?.copyWith(
              letterSpacing: 0,
            ),
            labelColor: themeColor,
            indicator: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: themeColor,
                      width: 2.0,
                    )
                )
            )
        )
    );

    return themeData;
  }

}




