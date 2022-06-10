import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({Key key, this.onPressed, this.sliderValueText}) : super(key: key);
  final Function(double value) onPressed;
  final int sliderValueText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff111327),
          // color: Colors.amber,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Height'.toUpperCase(),
              style: TextStyle(fontSize: 25.0, letterSpacing: 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  sliderValueText.toString(),
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'cm',
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor : Colors.red,
                  inactiveTrackColor : Colors.white,
                  thumbColor: Colors.red,
                  overlayColor: Colors.yellow),
              child: Slider(
                value: sliderValueText.toDouble(),
                max: 230,
                onChanged: onPressed,
               
              ),
            ),
            // CustomWidget(icons: )
          ],
        ),
      ),
    );
  }
}
