import 'package:flutter/material.dart';

class statefulLifeCycleLearnPage extends StatefulWidget {
  const statefulLifeCycleLearnPage({super.key, required this.message});
  final String message;

  @override
  State<statefulLifeCycleLearnPage> createState() =>
      _statefulLifeCycleLearnPageState();
}

class _statefulLifeCycleLearnPageState
    extends State<statefulLifeCycleLearnPage> {
  String _message = '';
  late final bool _isOdd;
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    addTypeToMessage();
  }

  @override
  void didChangeDependencies() {
    // initState'den sonra çalışır. Tekrar tekrar çağırılabilir.Update metodu gibi kullanılır.Başlangıçta çalışır.
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant statefulLifeCycleLearnPage oldWidget) {
    // Herhangi bir değişiklik olduğu durumda çalışır.
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // sayfadan çıkıldığı anda çalışır
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.message),
      ),
      body: Column(children: [Text(_message)]),
    );
  }

  void addTypeToMessage() {
    if (_isOdd) {
      _message += ' Cift';
    } else {
      _message += ' Tek';
    }
  }
}
