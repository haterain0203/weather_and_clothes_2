import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_and_clothes_2/components/clothes_animated_container.dart';
import 'package:weather_and_clothes_2/notifier/weather_notifier.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

import '../components/home_data_text.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF003569),
        //TODO 本日の日付を取得して表示
        //TODO レイアウト的に数字のみフォントを大きくする予定
        title: const Text(
          "6月6日（月）",
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
                          //TODO 設定画面で入力された郵便番号と住所を取得して表示
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //TODO 可変に
                              HomeDataText(
                                text: "〒${data.postalCode.toString()}",
                                // text: "〒000-0000",
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              //TODO 可変に
                              HomeDataText(
                                text: data.prefecture + data.city,
                                // text: "東京都xx区",
                              ),
                            ],
                          ),
                          //DateArea
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //TODO 天気に合わせて画像を変更する
                              SizedBox(
                                height: 10.h,
                                width: 10.h,
                                child: CachedNetworkImage(
                                  imageUrl: "http://openweathermap.org/img/wn/${data.iconStr}.png",
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
                                      text: data.maxTemperature.toString(),
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
                          ),
                          Row(
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
                                text: _compareTemperature(data.maxTemperature, data.yesterdayMaxTemperature),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //ClothesArea
                    //TODO 取得したデータに合わせて画像を切り替え
                    Expanded(
                      child: RoundedCornerContainer(
                        color: Colors.white,
                        //TODO Animationでぬるっとさせたい
                        child: PageView.builder(
                          controller: _pageController,
                          onPageChanged: (index) {
                            _pageIndex.value = index;
                          },
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            final timeString = _setTimeString(index);
                            //TODO 朝昼夜で使い分け
                            final maxTemperature = _selectMaxTemperature(data, index);
                            final imageURL = _selectImageURL(maxTemperature);
                            // アクティブ値
                            bool active = _pageIndex.value == index;
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  timeString,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  ),
                                ),
                                ClothesAnimatedContainer(active: active, imageURL: imageURL,)
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    RoundedCornerContainer(
                      height: 15.h,
                      color: Colors.grey.shade200,
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
