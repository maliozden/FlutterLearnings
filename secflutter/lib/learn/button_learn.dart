import 'package:flutter/material.dart';

class buttonLearn extends StatelessWidget {
  const buttonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: Text('Text Button')),
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
             ElevatedButton(onPressed: null, child: Text('Null Elevated Button')),
            IconButton(onPressed: () {}, icon: Icon(Icons.accessible_outlined)),
            FloatingActionButton(onPressed: () {}),
            OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
            InkWell(onTap: () {}, child: Text('Text to button'))
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.amber, Colors.cyan])),
        width: 1200,
      ),
    );
  }
}
