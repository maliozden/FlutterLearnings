import 'package:flutter/material.dart';

class labPage extends StatelessWidget {
  const labPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
     
      body: Padding(
        padding: paddingUtility().normalPadding,
        child: Column(children: [
          SizedBox(height: 75,),
          imageWidget(name: 'cosmos',),
          Text(
            'Create Your First Note',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Write your content in this area ' * 5,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: elevatedCustomButton(),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Import Notes',
                style: TextStyle(color:colorUtility().blue),
              )),
        ]),
      ),
    );
  }


}

class imageWidget extends StatelessWidget {
  const imageWidget({
    super.key,required this.name
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      
      'assets/images/$name.png',
      height: 250,
    );
  }
}

class elevatedCustomButton extends StatelessWidget {
  const elevatedCustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: colorUtility().blue),
      onPressed: () {},
      child: Text('Create a Note',
          style: Theme.of(context).textTheme.titleLarge?.copyWith()),
    );
  }
}
 class paddingUtility {
  final EdgeInsets normalPadding=const EdgeInsets.all(15);
 }
 class colorUtility{
  final Color blue =Colors.blue;
  final Color cloisonne=Color(0xFF0A73AF);
  final Color red=Colors.red;
 }
