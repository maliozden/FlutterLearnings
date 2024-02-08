import 'package:flutter/material.dart';
import 'package:secflutter/learn/app_bar_learn.dart';
import 'package:secflutter/learn/oop/oop_learn.dart';

class OOPLearnPage extends StatefulWidget {
  const OOPLearnPage({super.key});

  @override
  State<OOPLearnPage> createState() => _OOPLearnPageState();
}

class _OOPLearnPageState extends State<OOPLearnPage> {
  FileDownload? _fileDownload;
  @override
  void initState() {
    _fileDownload = FileDownload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OOP Learn'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _fileDownload?.downloadItem(null);
      }),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}
