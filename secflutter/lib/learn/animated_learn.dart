import 'package:flutter/material.dart';

class animatedLearnPage extends StatefulWidget {
  const animatedLearnPage({super.key});

  @override
  State<animatedLearnPage> createState() => _animatedLearnPageState();
}

class _animatedLearnPageState extends State<animatedLearnPage> with TickerProviderStateMixin {
  bool _isVisible = true;
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  void _changeIsVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  /* [
    AnimatedOpacity --> Opacity değerleri arasında geçişe animasyon ekler.
    AnimatedDefaultTextStyle --> textStyle değerleri arasında geçişe animasyon ekler.
    AnimatedContainer --> Containerın durumları arasındaki geçişleri animasyona bağlar.
    AnimatedList --> Listeye deger ekleme cıkarma durumları arasındaki geçişleri animasyona bağlar.
    AnimatedPositioned --> Stack içerisinde kullanılır. positioned yapısının animasyonlu halidir. Durum geçişlerine animasyon ekler. curve attributesiyle de animasyon şekli belirlenebilir.
  ]
  
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changeIsVisible();
        _animationController.animateTo(_isVisible ? 1 : 0);
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedCrossFade(
              firstChild: Placeholder(),
              secondChild: Container(
                height: 400,
                width: 450,
                color: Colors.red,
              ),
              crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 1)),
          AnimatedDefaultTextStyle(
              child: Text('Something'),
              style: (_isVisible ? context.textTheme().titleLarge : context.textTheme().bodySmall) ?? TextStyle(),
              duration: Duration(seconds: 1)),
          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _animationController)
        ],
      ),
    );
  }
}

extension BuildContentExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
