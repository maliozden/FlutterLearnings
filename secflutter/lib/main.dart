// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:secflutter/demos/color_demos_view.dart';
import 'package:secflutter/demos/color_life_cycle.dart';
import 'package:secflutter/demos/my_collection_demos.dart';
import 'package:secflutter/learn/app_bar_learn.dart';
import 'package:secflutter/learn/button_learn.dart';
import 'package:secflutter/learn/card_learn.dart';
import 'package:secflutter/learn/container_sized_box_learn.dart';
import 'package:secflutter/learn/icon_learn.dart';
import 'package:secflutter/learn/list_view_learn.dart';
import 'package:secflutter/learn/listtile_learn.dart';
import 'package:secflutter/learn/page_view_learn.dart';
import 'package:secflutter/learn/stack_learn.dart';
import 'package:secflutter/learn/stateful_learn.dart';
import 'package:secflutter/learn/stateful_learn2.dart';
import 'package:secflutter/learn/stateful_lifecycle_learn.dart';
import 'package:secflutter/learn/stateless_learn.dart';
import 'package:secflutter/learn/text_field_learn.dart';
import 'package:secflutter/learn/text_learn.dart';
import 'package:secflutter/learn/scaffold_learn.dart';
import 'package:secflutter/learn/list_view_builder.dart';
import 'package:secflutter/learn/uplab_clone_try.dart';

import 'learn/column_row_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 243, 16, 0),
            elevation: 20,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
      ),
      home: MyCollectionsPage(),
    );
  }
}

Image randomImg() {
  return Image.network('https://picsum.photos/200');
}
