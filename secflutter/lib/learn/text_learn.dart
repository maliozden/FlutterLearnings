import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello Flutter $data',
            style: projectStyle.textLearnStyle,
          ),
          Text(
            'Hello Flutter $data',
            style: projectStyle.textLearnStyle,
          ),
          Text(
            'Hello Flutter $data',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.amber,fontWeight: FontWeight.bold),
          ),
          Text(
            'Hello Flutter ',
            style: Theme.of(context).textTheme.headlineLarge),
          
          
        ],
      )),
    );
  }
}

class projectStyle {
  static TextStyle textLearnStyle = TextStyle(
    backgroundColor: Colors.lightBlue,
    color: Colors.white,
    fontStyle: FontStyle.italic,
    fontSize: 24,
  );
}
