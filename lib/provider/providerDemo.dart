import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier{
  String test1 = "Code with shihab kerala";

  void changeValue(String str){
    test1 = str;
    notifyListeners();
  }

  Widget widget(){
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.rectangle,
      ),
    );
  }

}