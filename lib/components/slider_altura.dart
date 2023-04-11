import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
  int sliderValue;
  void Function(double value) sliderOnChanged;

  SliderAltura(
      {super.key, required this.sliderOnChanged, required this.sliderValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              sliderValue.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        Slider(
          value: sliderValue.toDouble(),
          min: 120,
          max: 220,
          onChanged: sliderOnChanged,
        )
      ],
    );
  }
}
