import 'package:flutter/material.dart';

class LightTheme {
  ThemeData theme = ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.amber),
      textTheme: ThemeData.light().textTheme.copyWith(
          //eger bütün degerleri elle girceksek dogrudan boş bir textthemedata oluşturabiliriz.
          //ya da onun yerine light theme ' den var olan datayı çekip değiştirmek istedigimizi değiştiririz.
          titleLarge: TextStyle(fontSize: 30, color: Colors.red)));
}
