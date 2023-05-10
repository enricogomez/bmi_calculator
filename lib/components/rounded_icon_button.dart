import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
      {required this.icon, required this.onPress, super.key});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress();
      },
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: const Color.fromARGB(255, 65, 65, 65),
      shape: const CircleBorder(),
      child: Icon(icon, color: const Color(0xFF62B2F4)),
    );
  }
}
