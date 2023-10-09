import 'package:flutter/material.dart';

class MyCollectionsPage extends StatefulWidget {
  const MyCollectionsPage({super.key});

  @override
  State<MyCollectionsPage> createState() => _MyCollectionsPageState();
}

class _MyCollectionsPageState extends State<MyCollectionsPage> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/images/cosmos.png',
          price: 3.4,
          title: 'Abstract Art 1'),
      CollectionModel(
          imagePath: 'assets/images/cosmos.png',
          price: 3.4,
          title: 'Abstract Art 2'),
      CollectionModel(
          imagePath: 'assets/images/cosmos.png',
          price: 3.4,
          title: 'Abstract Art 3'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _CategoryCard(model: _items[index]);
          }),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 40),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath)),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} eth'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
  }) {}
}
