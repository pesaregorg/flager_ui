import 'package:flager_ui/flager_ui.dart';
import 'package:flutter/material.dart';
import 'package:example/utilities/storage_manager.dart';

class ThemeColorProvider with ChangeNotifier{

  ThemeColorProvider() {
    _init();
  }

  MaterialColor themeColor = FColors.primaries[0];

  void _init() async{
    int? themeColorIndex = await StorageManager.readData("themeColor");
    themeColorIndex != null ? themeColor = FColors.primaries[themeColorIndex] : themeColor = FColors.primaries[0];

  }


  void changeThemeColor(int index){
    try{
      themeColor = FColors.primaries[index];
      StorageManager.saveData("themeColor", index);
      notifyListeners();
    }catch(e){
      debugPrint("not set theme color");
    }
  }

  MaterialColor get getThemeColor => themeColor;

}