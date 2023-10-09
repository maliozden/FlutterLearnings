import 'package:flutter/material.dart';
import 'package:secflutter/main.dart';

class stackLearn extends StatelessWidget {
  stackLearn({super.key});
  final cardHeight = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: cardHeight / 2,
                  child: randomImg(),
                ),
                Positioned(
                    bottom: 0,
                    height: cardHeight,
                    width: 200,
                    child: Card(
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: columnObject(),
              ),
              Expanded(
                child: columnObject(),
              ),
              Expanded(
                child: columnObject(),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class columnObject extends StatelessWidget {
  const columnObject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: randomImg(),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('Title', style: TextStyle(fontSize: 24))),
        Expanded(
            child: Text(
          'Write your contents here' * 5,
        ))
      ],
    );
  }
}
