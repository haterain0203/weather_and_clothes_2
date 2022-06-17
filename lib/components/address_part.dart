import 'package:flutter/material.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

import 'home_data_text.dart';

class AddressPart extends StatelessWidget {
  const AddressPart({
    required this.weatherData,
    Key? key,
  }) : super(key: key);
  
  final WeatherState weatherData;

  @override
  Widget build(BuildContext context) {
    return //TODO 設定画面で入力された郵便番号と住所を取得して表示
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeDataText(
            text: "〒${weatherData.postalCode.toString()}",
            // text: "〒000-0000",
          ),
          const SizedBox(
            width: 16.0,
          ),
          HomeDataText(
            text: weatherData.prefecture + weatherData.city,
            // text: "東京都xx区",
          ),
        ],
      );
  }
}
