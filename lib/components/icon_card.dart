import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    required this.label,
    required this.icon,
    super.key,
  });

  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(height: 15.0),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
