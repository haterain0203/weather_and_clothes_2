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

}