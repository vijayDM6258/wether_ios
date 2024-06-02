import 'package:flutter/material.dart';

import '../Models/theme_model.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeModel themeModel = ThemeModel(islight: false);

  void Changetheme(){
    themeModel.islight =!themeModel.islight;
    notifyListeners();
  }
}
