import 'package:flutter/material.dart';

class statefulLearn extends StatefulWidget {
  const statefulLearn({super.key});

  @override
  State<statefulLearn> createState() => _statefulLearnState();
}

class _statefulLearnState extends State<statefulLearn> {
  int counterValue = 0;
  void incrementValue() {
    setState(() {
      counterValue += 1;
    });
  }

  void deincrementValue() {
    setState(() {
      counterValue -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful ',),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              incrementValue();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              deincrementValue();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Text(counterValue.toString(),style: Theme.of(context).textTheme.displayLarge),
      ),
    );
  }
}
