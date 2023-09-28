import 'package:flutter/material.dart';
import 'package:secflutter/product/custom_counter_button.dart';

class statefulLearnSecond extends StatefulWidget {
  const statefulLearnSecond({super.key});

  @override
  State<statefulLearnSecond> createState() => _statefulLearnSecondState();
}

class _statefulLearnSecondState extends State<statefulLearnSecond> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget')),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _deincrementButton(),
          _incrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _value.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Placeholder(),
          customCounterButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateValue(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateValue(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }

  void _updateValue(bool isIncrement) {
    setState(() {
      if (isIncrement) {
        _value++;
      } else {
        _value--;
      }
    });
  }
}
