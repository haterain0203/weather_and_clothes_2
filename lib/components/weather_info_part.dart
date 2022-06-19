import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_and_clothes_2/state/home_page_state.dart';

class WeatherInfoPart extends StatelessWidget {
  const WeatherInfoPart({
    required this.homePageData,
    Key? key,
  }) : super(key: key);
  
  final HomePageState homePageData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10.h,
          width: 10.h,
          child: CachedNetworkImage(
            imageUrl: "http://openweathermap.org/img/wn/${homePageData.openWeather.descAndIcon[0].icon}.png",
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 20.0,),
        RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
              ),
              children: [
                const TextSpan(
                    text: "最高："
                ),
                TextSpan(
                  text: homePageData.openMeteo.daily.apparentTemperatureMax[1].toInt().toString(),
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: const Color(0xFFF78611),
                  ),
                ),
                const TextSpan(
                  text: "℃",
                ),
              ]
          ),
        ),
      ],
    );
  }
}
