import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Color.fromARGB(179, 17, 156, 248),
                  width: 150,
                ),
                Container(
                  color: Color.fromARGB(179, 206, 208, 209),
                  width: 150,
                ),
                Container(
                  color: Color.fromARGB(179, 17, 156, 248),
                  width: 150,
                ),
                Container(
                  color: Color.fromARGB(179, 206, 208, 209),
                  width: 150,
                ),
                Container(
                  color: Color.fromARGB(179, 17, 156, 248),
                  width: 150,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            color: Colors.blueGrey,
            height: 300,
          ),
          Divider(),
          Container(
            color: const Color.fromARGB(255, 49, 73, 85),
            height: 300,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit))
        ],
      ),
    );
  }
}
