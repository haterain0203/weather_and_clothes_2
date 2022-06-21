import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_and_clothes_2/state/open_weather_state.dart';

class OpenWeatherRepository {
  // 郵便番号から天気descriptionと天気アイコンの取得
  //TODO OpenWeatherから、本日の気温（朝・昼・夜）と翌日、翌々日の昼の気温を取得するように変更する
  //TODO https://openweathermap.org/forecast5#zip5
  Future<OpenWeatherState> getWeatherDescAndIcon(String zipCode) async {
    var _zipCode = "";
    if (zipCode.contains("-")) {
      _zipCode = zipCode;
    } else {
      _zipCode = zipCode.substring(0, 3) + "-" + zipCode.substring(3);
    }
    final url =
        "https://api.openweathermap.org/data/2.5/weather?zip=$_zipCode,JP&appid=b10f2f5d63bee6f33f3ef043ceccb9ae&lang=ja&units=metric";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(response.body);
      return OpenWeatherState.fromJson(body);
    } else {
      throw Exception("Failed get OpenWeather");
    }
  }
}
