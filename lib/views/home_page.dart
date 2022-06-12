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
import 'package:weather_and_clothes_2/state/weather_state.dart';
import '../components/rounded_corner_container.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherFutureProvider);
    //TODO 初期値は現在時刻に応じて変更する？
    final _pageIndex = useState(1);
    final _pageController = usePageController(
      viewportFraction: 0.50,
      initialPage: _pageIndex.value,
    );
    final today = useState(DateTime.now());
    final dateFormat = DateFormat('yyyy-MM-dd');
    final strDate = dateFormat.format(today.value);
    final dateFormatDayOfWeek = DateFormat.E('ja');
    final strDayOfWeek = dateFormatDayOfWeek.format(today.value);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF003569),
        //TODO 本日の日付を取得して表示
        //TODO レイアウト的に数字のみフォントを大きくする予定
        title: Text(
          strDate + "(" + strDayOfWeek + ")",
          style: TextStyle(
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
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              //TODO 押下処理
            },
            icon: Icon(Icons.share),
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
                    //TODO initialPageは今の時間に合わせたい
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        viewportFraction: 0.65,
                        enlargeCenterPage: true,
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
                                SizedBox(width: 16.0,),
                                Text(
                                  maxTemp.toString(),
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color(0xFFF78611),
                                  ),
                                ),
                                Text("℃"),
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

}
