import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  Widget child;
  Color cardColor;
  void Function()? customOnTap;

  CustomCard(
      {super.key,
      required this.child,
      this.customOnTap,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: customOnTap,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
