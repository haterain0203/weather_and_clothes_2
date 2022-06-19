import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherRepository {

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