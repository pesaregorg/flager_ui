part of flager_ui;

class FElevatedButtonStyle{





  static ButtonStyle small({required MaterialColor primaryColor}){
    return ElevatedButton.styleFrom(
      elevation: 0,
      padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) ? 2 : 2
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(26)),
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

    );
  }







}