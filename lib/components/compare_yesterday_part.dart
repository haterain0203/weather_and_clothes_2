import 'package:flutter/material.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

import 'home_data_text.dart';

class CompareYesterdayPart extends StatelessWidget {
  const CompareYesterdayPart({
    required this.weatherData,
    Key? key,
  }) : super(key: key);
  
  final WeatherState weatherData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeDataText(
          text: "昨日と比べて：",
        ),
        SizedBox(
          width: 16.0,
        ),
        //TODO 可変に
        HomeDataText(
          text: _compareTemperature(weatherData.maxTemperature, weatherData.yesterdayMaxTemperature),
        ),
      ],
    );
  }

  String _compareTemperature(int todayTemp, int yesterdayTemp) {
    final differenceTemp = todayTemp - yesterdayTemp;
    if(differenceTemp <= 1 && differenceTemp >= -1) return "大体同じ";
    if(differenceTemp == 2) return "ちょっとあったかい";
    if(differenceTemp >= 3 && differenceTemp < 5) return "結構あったかい";
    if(differenceTemp >= 5) return "かなりあったかい";
    if(differenceTemp == -2) return "ちょっと寒い";
    if(differenceTemp <= -3 && differenceTemp > -5) return "結構寒い";
    if(differenceTemp < -5) return "かなり寒い";
    return "";
  }
  
}
