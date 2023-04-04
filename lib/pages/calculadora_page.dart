import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/icon_content.dart';
import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatelessWidget {
  const CalculadoraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      icon: Icons.male,
                      name: "MASCULINO",
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      icon: Icons.female,
                      name: "FEMININO",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ALTURA",
                    style: kLabelTextStyle,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "1.83",
                        style: kNumberTextStyle,
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: 0,
                    onChanged: (double value) {},
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomCard(
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
