

import 'package:flutter/material.dart';
import 'package:imc_app/componets/custom_card.dart';
import 'package:imc_app/componets/icon_content.dart';
import 'package:imc_app/constants.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate IMC'),
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
                      text: 'Male'
                      ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      icon: Icons.female,
                      text: 'Female'
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: kLabelTextStyle,
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '1.83',
                              style: kNumberTextStyle,
                              ),
                            Text('cm'),
                          ],
                        ),
                        Slider(
                          value: 0,
                          onChanged: (double value) {})
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Placeholder(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


