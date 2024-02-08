import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class appBar_learn extends StatelessWidget {
  const appBar_learn({super.key});
  final String _title = 'Appbar Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black38,
        leading: Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}

FloatingActionButton floatingActionButton(Function() f) {
  return FloatingActionButton(
    onPressed: f,
    child: Icon(Icons.account_tree_rounded),
  );
}
