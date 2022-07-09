part of flager_ui;



class FButtons{


  static TextButtonThemeData textButtonThemeData(){

    return TextButtonThemeData(
        style: TextButton.styleFrom(
      padding: EdgeInsets.symmetric(
          horizontal: FConstants.buttonPaddingHorizontal,
          vertical: (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) ? FConstants.buttonPaddingVertical : 22
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(FConstants.buttonBorderRadiusAll)),
      ),
    )
    );
  }





  static ElevatedButtonThemeData elevatedButtonThemeData({required MaterialColor primaryColor}){

    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.symmetric(
              horizontal: FConstants.buttonPaddingHorizontal,
              vertical: (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) ? FConstants.buttonPaddingVertical : 22
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(FConstants.buttonBorderRadiusAll)),
          ),
        ).copyWith(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                /*if (states.contains(MaterialState.pressed)){
                  return Colors.black;
                }*/

                return FColors.white;
              },
            ),
          backgroundColor:  MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)){
                  return primaryColor.shade600;
                }
              if (states.contains(MaterialState.disabled)){
                return primaryColor.shade300;
              }

              return primaryColor;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)){
                return primaryColor.shade600;
              }


              return primaryColor;
            },
          ),

        )
    );
  }







  static OutlinedButtonThemeData outlinedButtonThemeData({required MaterialColor primaryColor}){

    return OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(

          primary: primaryColor,
          padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) ? FConstants.buttonPaddingVertical : 22
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(FConstants.buttonBorderRadiusAll)),
          ),
        ).copyWith(
          side: MaterialStateProperty.resolveWith<BorderSide>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)){
                return BorderSide(
                  color: primaryColor.shade700,
                  width: 2,
                );
              }
              if (states.contains(MaterialState.disabled)){
                return BorderSide(
                  color: primaryColor.shade200,
                  width: 2,
                );
              }
              return BorderSide(
                color: primaryColor,
                width: 2,
              ); // Defer to the widget's default.
            },
          ),
        )
    );
  }



}