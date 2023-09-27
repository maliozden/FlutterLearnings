import 'package:flutter/material.dart';

class flexLearn extends StatelessWidget {
  const flexLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  Spacer(flex: 1),
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  )
                ],
              )),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Number 1'),
                    Text('Number 2'),
                    Text('Number 3')
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.green,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.white,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.red,
                  ))
                ],
              ))
        ],
      ),
    );
  }
}
