import 'package:flutter/material.dart';

import 'package:secflutter/learn/navigate_details.dart';

class NavigationLearnPage extends StatefulWidget {
  const NavigationLearnPage({super.key});

  @override
  State<NavigationLearnPage> createState() => _NavigationLearnPageState();
}

class _NavigationLearnPageState extends State<NavigationLearnPage>
    with NavigatorManager {
  List<int> selectedItems = [];
  void AddSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  void RemoveSelected(int index) {
    setState(() {
      selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextButton(
            onPressed: () async {
              final response = await navigateToWidgetWithFuture<bool>(
                  context,
                  NavDetailPage(
                    isSelected: selectedItems.contains(index),
                  ));
              if (response == true) {
                AddSelected(index);
              } else {
                RemoveSelected(index);
              }
            },
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.red : Colors.blue,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(),
      builder: (context) {
        return widget;
      },
    ));
  }

  Future<T?> navigateToWidgetWithFuture<T>(
      BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(),
      builder: (context) {
        return widget;
      },
    ));
  }
}
