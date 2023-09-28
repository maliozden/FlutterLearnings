import 'package:flutter/material.dart';
import 'package:secflutter/learn/stateful_learn.dart';
import 'package:secflutter/learn/stateful_learn2.dart';
import 'package:secflutter/learn/uplab_clone_try.dart';

class pageViewLearn extends StatefulWidget {
  const pageViewLearn({super.key});

  @override
  State<pageViewLearn> createState() => _pageViewLearnState();
}

class _pageViewLearnState extends State<pageViewLearn> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page View')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: animationUtilities.aSecondDuration,
                  curve: animationUtilities.customCurve);
            },
            child: Icon(Icons.chevron_left),
          ),
          Text(
            _currentPageIndex.toString(),
            style: TextStyle(fontSize: 30),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: animationUtilities.aSecondDuration,
                  curve: animationUtilities.customCurve);
            },
            child: Icon(Icons.chevron_right),
          )
        ],
      ),
      body: PageView(
        onPageChanged: _updatePageIndex,
        controller: _pageController,
        children: [
          labPage(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.black,
          )
        ],
      ),
    );
  }

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index + 1;
    });
  }
}

class animationUtilities {
  static final Duration aSecondDuration = Duration(milliseconds: 500);

  static final Curve customCurve = Curves.linear;
}
