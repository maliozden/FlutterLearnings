import 'package:flutter/material.dart';
import 'package:secflutter/learn/model_learn.dart';

class modelViewLearnPage extends StatefulWidget {
  const modelViewLearnPage({super.key});

  @override
  State<modelViewLearnPage> createState() => _modelViewLearnPageState();
}

class _modelViewLearnPageState extends State<modelViewLearnPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final user1 = PostModel()
      ..body = 'body'
      ..title = 'title';
    user1.userId = 23123;
    /********************* */
    final user2 = PostModel2(userId: 12, id: 1, title: 'title', body: 'body');
    user2.userId = 23123;
    /********************* */
    final user3 = PostModel3(12, 1, 'title', 'body');
    //user3.userId = 23123;
    /********************* */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
