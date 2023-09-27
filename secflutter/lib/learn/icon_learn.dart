

import 'package:flutter/material.dart';

class iconLearn extends StatelessWidget {
  iconLearn({super.key});
  final iconSize iconSizes = iconSize();
  final iconColor iconColors = iconColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Learn')),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.access_alarms,
                    color: iconColors.royal_purpleness,
                    size: 50,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.subtitles_off_outlined,
                    color: Colors.amberAccent,
                    size: iconSizes.iconBig,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.work_outlined,
                    color: iconColors.felt,
                    size: iconSizes.iconSmall,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class iconSize {
  final double iconBig = 50;
  final double iconSmall=24;
}

class iconColor {
  final Color royal_purpleness = Color(0xff8b137b);
   final Color felt = Color(0xff2b734b);
}
