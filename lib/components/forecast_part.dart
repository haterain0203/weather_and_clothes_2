import 'package:flutter/material.dart';
import 'package:weather_and_clothes_2/components/rounded_corner_container.dart';

class ForecastPart extends StatelessWidget {
  const ForecastPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RoundedCornerContainer(
            height: 200.0,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: RoundedCornerContainer(
            height: 200.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
