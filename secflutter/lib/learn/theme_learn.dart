import 'package:flutter/material.dart';

class themeLearnPage extends StatefulWidget {
  const themeLearnPage({super.key});

  @override
  State<themeLearnPage> createState() => _themeLearnPageState();
}

class _themeLearnPageState extends State<themeLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('theme learn'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Theme deneme yazısı',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
