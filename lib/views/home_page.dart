import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_and_clothes_2/components/address_part.dart';
import 'package:weather_and_clothes_2/components/clothes_container.dart';
import 'package:weather_and_clothes_2/components/compare_yesterday_part.dart';
import 'package:weather_and_clothes_2/components/weather_info_part.dart';
import 'package:weather_and_clothes_2/notifier/weather_notifier.dart';
import 'package:weather_and_clothes_2/state/home_page_state.dart';
import '../components/forecast_part.dart';
import '../components/rounded_corner_container.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherFutureProvider);
    final today = DateTime.now();
    final tomorrow = today.add(const Duration(days: 1));
    final dayAfterTomorrow = today.add(const Duration(days: 2));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003569),
        //TODO 本日の日付を取得して表示
        //TODO レイアウト的に数字のみフォントを大きくする予定
        title: Text(
          _setDateStr(today),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //TODO 押下処理
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              //TODO 押下処理
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: weatherState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          print("error = $error");
          return Center(child: Text("データ取得時にエラーが発生しました: $error"));
        },
        data: (data) {
          print("data = $data");
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    RoundedCornerContainer(
                      padding: const EdgeInsets.all(8.0),
                      // color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          //AddressArea
                          AddressPart(weatherData: data),
                          //天気情報部分
                          WeatherInfoPart(weatherData: data),
                          //昨日と比べて部分
                          CompareYesterdayPart(weatherData: data),
                        ],
                      ),
                    ),
                    //ClothesArea
                    Expanded(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 300.0,
                          viewportFraction: 0.65,
                          enlargeCenterPage: true,
                          initialPage: _setInitialPage(today),
                        ),
                        items: [0,1,2,].map((i) {
                          final timeStr = _setTimeString(i);
                          final maxTemp = _selectMaxTemperature(data, i);
                          final imageURL = _selectImageURL(maxTemp);
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    timeStr,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  const SizedBox(width: 16.0,),
                                  Text(
                                    maxTemp.toString(),
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: const Color(0xFFF78611),
                                    ),
                                  ),
                                  const Text("℃"),
                                ],
                              ),
                              RoundedCornerContainer(
                                color: Colors.white,
                                child: ClothesContainer(
                                  imageURL: imageURL,
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    Row(
                      children: [
                        ForecastPart(
                          weather: data,
                          dateStr: _setDateStr(tomorrow),
                          //TODO 明日の最高気温に変更
                          imageUrl: _selectImageURL(data.maxTemperature),
                        ),
                        const SizedBox(width: 16.0,),
                        ForecastPart(
                          weather: data,
                          dateStr: _setDateStr(dayAfterTomorrow),
                          //TODO 明後日の最高気温に変更
                          imageUrl: _selectImageURL(data.maxTemperature),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
        },
      ),
    );
  }

  String _setTimeString(int index) {
    if(index == 0) return "朝";
    if(index == 1) return "昼";
    return "夜";
  }

  int _selectMaxTemperature(WeatherState weather, int index) {
    if(index == 0) return weather.morningTemperature;
    if(index == 1) return weather.afternoonTemperature;
    return weather.eveningTemperature;
  }

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

  String _setDateStr(DateTime today) {
    final dateFormat = DateFormat('M/d');
    final strDate = dateFormat.format(today);
    final dateFormatDayOfWeek = DateFormat.E('ja');
    final strDayOfWeek = dateFormatDayOfWeek.format(today);
    return strDate + "(" + strDayOfWeek + ")";
  }

  int _setInitialPage(DateTime now) {
    if(now.hour < 10) return 0;
    if(now.hour >= 10 && now.hour < 18) return 1;
    return 2;
  }

}
