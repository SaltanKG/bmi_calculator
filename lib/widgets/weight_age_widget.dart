import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({Key key, this.text, this.ekinchiText})
      : super(key: key);
  final String text;
  final String ekinchiText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text.toUpperCase(),
          style: const TextStyle(fontSize: 25.0),
        ),
        Text(
          ekinchiText,
          style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(FontAwesomeIcons.minus),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(FontAwesomeIcons.plus),
              ),
            ),
          ],
        )
      ],
    );
  }
}
