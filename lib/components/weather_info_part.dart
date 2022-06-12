import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

class WeatherInfoPart extends StatelessWidget {
  const WeatherInfoPart({
    required this.weatherData,
    Key? key,
  }) : super(key: key);
  
  final WeatherState weatherData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //TODO 天気に合わせて画像を変更する
        SizedBox(
          height: 10.h,
          width: 10.h,
          child: CachedNetworkImage(
            imageUrl: "http://openweathermap.org/img/wn/${weatherData.iconStr}.png",
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 20.0,),
        //TODO 取得した気温を表示する
        //TODO レイアウト的に数字のみフォントを大きくする予定
        //TODO 可変に
        RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
              ),
              children: [
                TextSpan(
                    text: "最高："
                ),
                TextSpan(
                  text: weatherData.maxTemperature.toString(),
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Color(0xFFF78611),
                  ),
                ),
                TextSpan(
                  text: "℃",
                ),
              ]
          ),
        ),
      ],
    );
  }
}
