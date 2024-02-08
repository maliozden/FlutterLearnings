import 'package:flutter/material.dart';
import 'package:secflutter/learn/app_bar_learn.dart';
import 'package:secflutter/learn/state_manage/state_managmentView_model.dart';

class stateManageLearnPage extends StatefulWidget {
  const stateManageLearnPage({super.key});

  @override
  State<stateManageLearnPage> createState() => _stateManageLearnPageState();
}

class _stateManageLearnPageState extends StateManagmentViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Managment Learn'),
      ),
      floatingActionButton: floatingActionButton(() => changeIsVisible()),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: isVisible ? Colors.red : Colors.green,
        ),
      ),
    );
  }
}
