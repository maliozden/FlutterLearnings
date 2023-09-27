import 'package:flutter/material.dart';
import 'package:secflutter/learn/uplab_clone_try.dart';

class listTilePage extends StatelessWidget {
  const listTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: paddingUtility().normalPadding,
        child: Column(
          children: [
            customListTile(
                'List Title', 'List Subtitle just here under the title'),
            customListTile(
                'List Title', 'List Subtitle just here under the title'),
            customListTile(
                'List Title', 'List Subtitle just here under the title'),
          ],
        ),
      ),
    );
  }
}

class customListTile extends StatelessWidget {
  final String _listTitle;
  final String _listSubTitle;
  customListTile(
    this._listTitle,
    this._listSubTitle, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_listTitle),
        subtitle: Text(_listSubTitle),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_2,
              color: colorUtility().cloisonne,
              grade: 500,
              shadows: [Shadow(color: Colors.white54, offset: Offset(0.5, 1))],
            )),
        titleAlignment: ListTileTitleAlignment.center,
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove_circle_outline_sharp,
                color: colorUtility().red,
                grade: 500,
                shadows: [
                  Shadow(color: Colors.white54, offset: Offset(0.5, 1))
                ])),
      ),
    );
  }
}
