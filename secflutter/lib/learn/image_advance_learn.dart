import 'package:flutter/material.dart';

class advanceImageLearnPage extends StatefulWidget {
  const advanceImageLearnPage({super.key});

  @override
  State<advanceImageLearnPage> createState() => _advanceImageLearnPageState();
}

class _advanceImageLearnPageState extends State<advanceImageLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ImagePathEnum.amogus.toWdiget(height: 250));
  }
}

enum ImagePathEnum { amogus }

extension ImagePathExtension on ImagePathEnum {
  String path() {
    return 'assets/images/$name.png';
  }

  Widget toWdiget({double height = 200}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
