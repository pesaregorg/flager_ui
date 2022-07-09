part of flager_ui;



class FSnackBar {


  static SnackBarThemeData snackBarThemeData({required ThemeData themeData}){
    var brightnessIndex = themeData.brightness.index;
    return SnackBarThemeData(
      //backgroundColor:  brightnessIndex == 0 ? FColors.black : FColors.white,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: FColors.oil.shade400, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}