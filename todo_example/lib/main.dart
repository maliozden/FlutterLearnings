import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_example/Screens/home.dart';
import 'package:todo_example/auth/authscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    ThemeData theme =
        ThemeData.dark().copyWith(primaryColor: Colors.purple, textTheme: GoogleFonts.robotoSlabTextTheme());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(appBarTheme: AppBarTheme(color: theme.primaryColor, centerTitle: true)),
      home: AuthScreen(),
    );
  }
}
