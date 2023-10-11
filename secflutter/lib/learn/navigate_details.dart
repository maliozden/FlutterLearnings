import 'package:flutter/material.dart';

class NavDetailPage extends StatefulWidget {
  const NavDetailPage({super.key, this.isSelected = false});
  final bool isSelected;
  @override
  State<NavDetailPage> createState() => _NavDetailPageState();
}

class _NavDetailPageState extends State<NavDetailPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            NavElevatedButton(
              isChecked: widget.isSelected,
              label: widget.isSelected ? 'Reddet' : 'Onayla',
              buttonIcon: Icon(Icons.check),
            ),
          ],
        ),
      ),
    );
  }
}

class NavElevatedButton extends StatelessWidget {
  const NavElevatedButton(
      {super.key,
      required this.isChecked,
      required this.label,
      required this.buttonIcon});
  final bool isChecked;
  final String label;
  final Icon buttonIcon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.of(context).pop(!isChecked);
      },
      icon: buttonIcon,
      label: Text(label),
    );
  }
}
