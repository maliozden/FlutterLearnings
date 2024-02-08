import 'package:flutter/material.dart';
import 'package:secflutter/learn/uplab_clone_try.dart';

class fromValidatePage extends StatefulWidget {
  const fromValidatePage({super.key});

  @override
  State<fromValidatePage> createState() => _fromValidatePageState();
}

class _fromValidatePageState extends State<fromValidatePage> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('from validate learn'),
      ),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            TextFormField(validator: FormValidator().isNotEmpty),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('save'))
          ],
        ),
      ),
    );
  }
}

class FormValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : 'Bu alan boş geçilemez';
  }
}
