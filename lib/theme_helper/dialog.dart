part of flager_ui;

class FDialogTheme{


  static DialogTheme dialogTheme({MaterialColor? primaryColor}){
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(32.0)),
        side: BorderSide(
          width: 1,
          color: primaryColor ?? FColors.oil.shade400,
          style: BorderStyle.solid
        )
      ),
    );
  }
}


