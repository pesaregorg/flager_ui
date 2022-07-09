part of flager_ui;

class FTextFields {

  static InputDecorationTheme inputDecorationTheme({required ThemeData themeData}){

    var brightnessIndex = themeData.brightness.index;
    var width = 1.0;
    var radius = 16.0;
    return InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: brightnessIndex == 0 ? FColors.black : FColors.white,
      hintStyle: TextStyle(
          fontSize: 14, color: brightnessIndex == 0 ? FColors.oil.shade600 : FColors.oil.shade400
      ),
      labelStyle: TextStyle(
          fontSize: 14, color: brightnessIndex == 0 ? FColors.oil.shade300 : FColors.oil.shade700
      ),
      errorStyle: TextStyle(
          fontSize: 12, color: brightnessIndex == 0 ? FColors.infrared.shade500 : FColors.infrared.shade500
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: width, color: brightnessIndex == 0 ? FColors.infrared.shade500 : FColors.infrared.shade500),
        borderRadius: BorderRadius.circular(radius),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: width, color: brightnessIndex == 0 ? FColors.infrared.shade500 : FColors.infrared.shade500),
        borderRadius: BorderRadius.circular(radius),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: width, color: brightnessIndex == 0 ? FColors.oil.shade200 : FColors.oil.shade800),
        borderRadius: BorderRadius.circular(radius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: width, color: brightnessIndex == 0 ? FColors.oil.shade600 : FColors.oil.shade400),
        borderRadius: BorderRadius.circular(radius),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: width, color: brightnessIndex == 0 ? FColors.oil.shade600 : FColors.oil.shade400),
        borderRadius: BorderRadius.circular(radius),
      ),

      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: width, color: brightnessIndex == 0 ? FColors.oil.shade700 : FColors.oil.shade200),
        borderRadius: BorderRadius.circular(radius),
      ),


    );
  }
}