import 'dart:ui';

import 'package:bmi_calculator/widgets/custom_widget.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainBmiPage extends StatefulWidget {
  const MainBmiPage({Key key}) : super(key: key);

  @override
  _MainBmiPageState createState() => _MainBmiPageState();
}

class _MainBmiPageState extends State<MainBmiPage> {
  double _sliderValue = 165;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Expanded(
            child: Row(
              children: const [
                CustomWidget(
                  widget:
                      GenderWidget(icons: FontAwesomeIcons.mars, text: 'male'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                CustomWidget(
                  widget: GenderWidget(
                      icons: FontAwesomeIcons.venus, text: 'female'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          CustomWidget(
            widget: HeightWidget(
                onPressed: (double ozgorgonData) {
                  setState(() {
                    _sliderValue = ozgorgonData;
                  });
                },
                sliderValueText: _sliderValue.toInt()),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Row(
              children: const [
                CustomWidget(
                  widget: WeightAgeWidget(text: 'weight', ekinchiText: '60'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                CustomWidget(
                  widget: WeightAgeWidget(text: 'age', ekinchiText: '25'),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

// Bul jakshy praktika emes
Expanded newMethod() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        // color: const Color(0xff111327),
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          const FaIcon(
            FontAwesomeIcons.mars,
            size: 75.0,
          ),
          Text(
            'male'.toUpperCase(),
            style: const TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    ),
  );
}
