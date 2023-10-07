import 'package:flutter/material.dart';
import 'package:secflutter/demos/color_demos_view.dart';

class ColorLifeCyclePage extends StatefulWidget {
  const ColorLifeCyclePage({super.key});

  @override
  State<ColorLifeCyclePage> createState() => _ColorLifeCyclePageState();
}

class _ColorLifeCyclePageState extends State<ColorLifeCyclePage> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              setState(() {
                _backgroundColor = Colors.white70;
              });
            },
            icon: Icon(
              Icons.clear,
            ))
      ]),
      body: Column(
        children: [
          Spacer(),
          Expanded(
              child: colorDemosPage(initialBackgroundColor: _backgroundColor))
        ],
      ),
    );
  }
}
