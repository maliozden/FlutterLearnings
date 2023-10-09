// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class colorDemosPage extends StatefulWidget {
  const colorDemosPage({super.key, required this.initialBackgroundColor});
  final Color? initialBackgroundColor;
  @override
  State<colorDemosPage> createState() => _colorDemosPageState();
}

class _colorDemosPageState extends State<colorDemosPage> {
  Color? _backgroundColor = Colors.white;
  void _changeBackground(Color color) {
    setState(() {
      _backgroundColor = color;
    });
    initState() {
      super.initState();
      _backgroundColor = widget.initialBackgroundColor ?? Colors.black;
    }
  }

  @override
  void didUpdateWidget(covariant colorDemosPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_backgroundColor != widget.initialBackgroundColor &&
        widget.initialBackgroundColor != null) {
      _changeBackground(widget.initialBackgroundColor!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _ColorOnTap, items: [
        BottomNavigationBarItem(
            icon: _colorContainers(color: Colors.yellow), label: 'yellow'),
        BottomNavigationBarItem(
            icon: _colorContainers(color: Colors.red), label: 'red'),
        BottomNavigationBarItem(
            icon: _colorContainers(color: Colors.blue), label: 'blue'),
      ]),
    );
  }

  void _ColorOnTap(value) {
    if (value == _MyColors.yellow.index) {
      _changeBackground(Colors.yellow);
    } else if (value == _MyColors.red.index) {
      _changeBackground(Colors.red);
    } else if (value == _MyColors.blue.index) {
      _changeBackground(Colors.blue);
    }
  }
}

enum _MyColors { yellow, red, blue }

class _colorContainers extends StatelessWidget {
  const _colorContainers({super.key, required this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 20,
      width: 20,
    );
  }
}
