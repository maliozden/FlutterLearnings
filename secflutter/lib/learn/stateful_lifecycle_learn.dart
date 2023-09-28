import 'package:flutter/material.dart';

class statefulLifeCycleLearnPage extends StatefulWidget {
  const statefulLifeCycleLearnPage({super.key, required this.message});
  final String message;

  @override
  State<statefulLifeCycleLearnPage> createState() =>
      _statefulLifeCycleLearnPageState();
}

class _statefulLifeCycleLearnPageState
    extends State<statefulLifeCycleLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.message),
      ),
    );
  }
}
