import 'package:flutter/material.dart';
import 'package:secflutter/learn/state_manage/state_managmentView_learn.dart';

abstract class StateManagmentViewModel extends State<stateManageLearnPage> {
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
  }

  void changeIsVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }
}
