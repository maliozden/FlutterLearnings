import 'package:flutter/material.dart';

class tabbarLearnPage extends StatefulWidget {
  const tabbarLearnPage({super.key});

  @override
  State<tabbarLearnPage> createState() => _tabbarLearnPageState();
}

class _tabbarLearnPageState extends State<tabbarLearnPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: TabBar(
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  text: 'page 1',
                ),
                Tab(
                  text: 'page 2',
                ),
              ],
              controller: _tabController,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(1);
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: TabBarView(
            children: [
              Container(color: Colors.red),
              Container(
                color: Colors.green,
              )
            ],
            controller: _tabController,
          ),
        ));
  }
}
