import 'package:flutter/material.dart';

class scaffold_learn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
        backgroundColor: Colors.amber,
      ),
      body: Text('Scaffold Sample'),
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            showModalBottomSheet(context: context, builder:(context)=>Container(
              height: 500,
              width: 500,
              padding: EdgeInsets.all(25),
              child: Text("sasasa"),
            ));
          }, child: Text('data')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'sa'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: 'as'),
        ],
      ),
    );
  }
}
