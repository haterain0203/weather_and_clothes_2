import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_and_clothes_2/state/weather_state.dart';

class WeatherRepository {

  //郵便番号から住所を取得する処理
  Future<Map<String, dynamic>> getAddress(String zipCode) async {
    //引数の郵便番号をもとにAPI用のURLを生成
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipCode";

    //生成したURLでAPIを叩き、住所を取得
    try {
      var result = await http.get(Uri.parse(url));
      Map<String, dynamic> data = jsonDecode(result.body);
      return data;
    } catch(e) {
      print(e);
      return {};
    }
  }

  // 郵便番号から天気descriptionと天気アイコンの取得
  Future<Map<String, dynamic>> getWeatherDescAndIcon(String zipCode) async {
    var _zipCode = "";
    if(zipCode.contains("-")){
      _zipCode = zipCode;
    } else {
      _zipCode = zipCode.substring(0, 3) + "-" + zipCode.substring(3);
    }
    var url = "https://api.openweathermap.org/data/2.5/weather?zip=$_zipCode,JP&appid=b10f2f5d63bee6f33f3ef043ceccb9ae&lang=ja&units=metric";
    try {
      var result = await http.get(Uri.parse(url));
      Map<String, dynamic> data = jsonDecode(result.body);
      return data;
    } catch(e) {
      print(e);
      return {};
    }
  }

  // 緯度経度から最高気温と時間別最高気温を取得
  Future<Map<String, dynamic>> getWeather(double lat, double lon) async {
    // OpenWeatherだと過去のデータが取得できない（有料）のため、過去データはOpenMeteoで取得
    //TODO 統一すべきか？
    var url = "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&hourly=apparent_temperature&daily=apparent_temperature_max&timezone=Asia%2FTokyo&past_days=1";
    try {
      var result = await http.get(Uri.parse(url));
      Map<String, dynamic> data = jsonDecode(result.body);
      return data;
    } catch(e) {
      print(e);
      return {};
    }

  }

}