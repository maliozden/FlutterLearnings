import 'package:flutter/material.dart';

class containerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title bigule"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("flutter sized box" * 100),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Text("flutter sized box" * 100),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("a" * 100),
          ),
          Container(
            width: 100,
            height: 100,
            //color: Colors.lightBlueAccent,
            constraints: BoxConstraints(maxWidth: 500),
            child: Text("a"*50),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(width: 20),
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.green,offset: Offset(0.1, 1),blurRadius: 30,spreadRadius: 50)]
            ),
          )
        ],
      ),
    );
  }
}
