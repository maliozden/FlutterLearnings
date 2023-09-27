import 'package:flutter/material.dart';

class cardLearn extends StatelessWidget {
  const cardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Learn')),
      body: Center(
        child: Row(
          children: [
            customCard(name: 'cosmos',content: 'Box1'),
            customCard(name: 'amogus',content: 'Box2'),
            customCard(name: 'foxyfox',content: 'Box3'),
          
          ],
        ),
      ),
    );
  }
}

class customCard extends StatelessWidget {
   customCard({
    super.key, required this.name, required this.content
  });
  final String name;
  final  String content;
  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: const Color.fromARGB(255, 23, 60, 65),
      margin: EdgeInsets.all(8.5),
      child: SizedBox(
          height: 300,
          width: 120,
          child: Center(child: Column(children: [
            Text((content),style:TextStyle(backgroundColor: Theme.of(context).colorScheme.primaryContainer)),
            Image.asset('assets/images/$name.png',height: 100,width: 100),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Content'*11,softWrap: true,)),

          ]),)),
          
          
    );
  }
}
