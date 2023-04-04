import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String name;
  
  const IconContent({
    Key? key,
    required this.icon,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}