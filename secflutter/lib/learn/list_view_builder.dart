import 'package:flutter/material.dart';
import 'package:secflutter/main.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //ListView.builder  sayfa göründükçe çizilmeye başlar kaydırmadan önce render edilmez
      //ListView.seperated item count kadar çizilir
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.white,
          );
        },
        itemBuilder: ((context, index) {
          print('$index');
          return SizedBox(
            height: 200,
            child: Column(children: [
              Expanded(child: randomImg()),
              Text('Random image ${index + 1}')
            ]),
          );
        }),
        itemCount: 10,
      ),
    );
  }
}
