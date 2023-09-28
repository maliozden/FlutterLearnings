// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:secflutter/learn/page_view_learn.dart';

class textFieldLearnPage extends StatefulWidget {
  const textFieldLearnPage({super.key});

  @override
  State<textFieldLearnPage> createState() => _textFieldLearnPageState();
}

class _textFieldLearnPageState extends State<textFieldLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Field Learn')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: TextField(
                maxLength: 100,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  labelText: 'Mail',
                ),
                buildCounter: (BuildContext context,
                    {int? currentLength, bool? isFocused, maxLength}) {
                  return AnimatedContainer(
                      duration: animationUtilities.aSecondDuration,
                      height: 20,
                      width: 40,
                      color: Colors.red[100 * ((currentLength ?? 0) ~/ 10)]);
                }),
          ),
        ],
      ),
    );
  }
}
