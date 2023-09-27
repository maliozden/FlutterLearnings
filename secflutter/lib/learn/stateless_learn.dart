import 'package:flutter/material.dart';

class statelessLearn extends StatelessWidget {
  const statelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Stateless Learn',
      )),
      body: Center(
        child: Column(children: [
          titleTextWidget(title: 'title1'),
          titleTextWidget(title: 'title2'),
          titleTextWidget(title: 'title3'),
          titleTextWidget(title: 'title4'),
          titleTextWidget(title: 'title5'),
          titleTextWidget(title: 'title6'),
        ]),
      ),
    );
  }
}

class titleTextWidget extends StatelessWidget {
  titleTextWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
