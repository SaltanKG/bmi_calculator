import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({Key key, this.text, this.ekinchiText, @required this.minus,@required this.plus})
      : super(key: key);
  final String text;
  final String ekinchiText;
  final void Function() minus;
  final void Function() plus;

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
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                    onTap: minus, child: const FaIcon(FontAwesomeIcons.minus)),
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:
                    InkWell(onTap: plus, child: const FaIcon(FontAwesomeIcons.plus)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
