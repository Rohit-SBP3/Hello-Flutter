import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle mTextStyle15(){
  return TextStyle(fontSize: 15,fontWeight: FontWeight.w500);
}

TextStyle mTextStyle25(){
  return TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
}

TextStyle mTextStyle25C(MaterialColor pink, FontWeight bold, {Color textColor = Colors.black,FontWeight fw = FontWeight.w900}){
  return TextStyle(fontSize: 25,fontWeight: fw,color: textColor);
}
