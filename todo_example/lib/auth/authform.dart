import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  //*---------------------------------------------//
  final _formKey = GlobalKey<FormState>();
  final String _email = '';
  final String password = '';
  //*---------------------------------------------//

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          key: ValueKey('email'),
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide()),
                            labelText: 'Enter Email',
                          ))
                    ],
                  )),
            )
          ],
        ));
  }
}
