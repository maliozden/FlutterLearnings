import 'dart:io';

import 'package:flutter/material.dart';
import 'package:secflutter/service/service_model.dart';
import 'package:dio/dio.dart';

class service_learn_page extends StatefulWidget {
  const service_learn_page({super.key});

  @override
  State<service_learn_page> createState() => _service_learn_pageState();
}

class _service_learn_pageState extends State<service_learn_page> {
  List<postModel>? _items;
  bool isLoading = false;
  late final Dio dio;
  final _baseUrl = 'https://jsonplaceholder.org/';
  @override
  void initState() {
    dio = Dio(BaseOptions(baseUrl: _baseUrl));
    fetchPostItems();
    super.initState();
  }

  void _changeIsLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeIsLoading();
    final response = await Dio().get('https://jsonplaceholder.org/posts');
    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;
      if (_data is List) {
        setState(() {
          _items = _data.map((e) => postModel.fromJson(e)).toList();
        });
      }
    }
    _changeIsLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeIsLoading();
    final response = await dio.get('  posts');
    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;
      if (_data is List) {
        setState(() {
          _items = _data.map((e) => postModel.fromJson(e)).toList();
        });
      }
    }
    _changeIsLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Services'),
          actions: [
            isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
          ],
        ),
        body: ListView.builder(
            itemCount: _items?.length ?? 0,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return _postContainer(
                model: _items?[index],
              );
            }));
  }
}

class _postContainer extends StatelessWidget {
  const _postContainer({
    super.key,
    required postModel? model,
  }) : _postModel = model;

  final postModel? _postModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(
            "title : ${_postModel?.title ?? 'not found'}",
            maxLines: 1,
          ),
          Text(
            'content ${_postModel?.content ?? 'not found'}',
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
