import 'package:flutter/material.dart';
import 'package:secflutter/product/text_components/text_components.dart';

class customCounterButton extends StatefulWidget {
  const customCounterButton({super.key});

  @override
  State<customCounterButton> createState() => _customCounterButtonState();
}

class _customCounterButtonState extends State<customCounterButton> {
  int _customCount = 0;
  final _merhabaTitle = textComponents.welcomeTitle;
  void _updateCounter() {
    setState(() {
      _customCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCounter, child: Text('$_merhabaTitle $_customCount'));
  }
}
