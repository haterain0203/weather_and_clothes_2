import 'package:flutter/material.dart';
import 'package:weather_and_clothes_2/state/home_page_state.dart';

import 'home_data_text.dart';

class CompareYesterdayPart extends StatelessWidget {
  const CompareYesterdayPart({
    required this.homePageData,
    Key? key,
  }) : super(key: key);
  
  final HomePageState homePageData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const HomeDataText(
          text: "昨日と比べて：",
        ),
        const SizedBox(
          width: 16.0,
        ),
        //TODO 可変に
        HomeDataText(
          text: _compareTemperature(
            homePageData.openMeteo.daily.apparentTemperatureMax[1],
            homePageData.openMeteo.daily.apparentTemperatureMax[0],
          ),
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
