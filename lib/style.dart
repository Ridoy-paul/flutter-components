import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle headLine(context) {
  var screenWidth = MediaQuery.sizeOf(context).width;
  if(screenWidth <= 624) {
    return TextStyle(
      fontSize: 14,
      color: Colors.black,
    );
  }
  else {
    return TextStyle(
      fontSize: 30,
      color: Colors.deepOrange,
    );
  }
}