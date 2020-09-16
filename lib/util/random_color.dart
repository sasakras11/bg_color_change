import 'package:flutter/material.dart';
import 'dart:math';


class RandomColor {

   static const _hexLiterals = ['1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'];

  static Color getHex(){

    var strBuffer = StringBuffer();

    for(var i = 0; i < 8; i++){
      strBuffer.write(_hexLiterals[Random().nextInt(15)]);
    }
    return _hexToColor(strBuffer.toString());
  }
  static Color _hexToColor(String code) => Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);

}