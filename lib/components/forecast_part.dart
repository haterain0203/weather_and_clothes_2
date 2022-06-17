import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_and_clothes_2/components/rounded_corner_container.dart';
import 'package:weather_and_clothes_2/components/weather_info_part.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

import 'clothes_container.dart';

class ForecastPart extends StatelessWidget {
  const ForecastPart({
    required this.weather,
    required this.dateStr,
    Key? key,
  }) : super(key: key);

  final WeatherState weather;
  final String dateStr;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedCornerContainer(
        color: Colors.white,
        child: Column(
          children: [
            RoundedCornerContainer(
              //TODO テーマカラーに
              color: Color(0xFF003569),
              child: Center(
                child: Text(
                  dateStr,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            //天気情報部分
            RichText(
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                  ),
                  children: [
                    TextSpan(
                        text: "最高："
                    ),
                    TextSpan(
                      //TODO 翌日の最高気温に修正
                      text: weather.maxTemperature.toString(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xFFF78611),
                      ),
                    ),
                    TextSpan(
                      text: "℃",
                    ),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClothesContainer(
                //TODO 翌日の最高気温に
                imageURL: _selectImageURL(weather.maxTemperature),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //TODO HomePageでも同じ関数使ってる
  String _selectImageURL(int temp) {
    const baseURL = "assets/images/";
    if(temp >= 30) return baseURL + "t-shirt.png";
    if(temp >= 25 && temp < 30) return baseURL + "shirt.png";
    if(temp >= 20 && temp < 25) return baseURL + "long_shirt.png";
    if(temp >= 16 && temp < 20) return baseURL + "cardigan.png";
    if(temp >= 12 && temp < 16) return baseURL + "sweater.png";
    if(temp >= 8 && temp < 12) return baseURL + "trench_coat.png";
    if(temp >= 5 && temp < 8) return baseURL + "coat.png";
    return baseURL + "down_coat.png";
  }

}
