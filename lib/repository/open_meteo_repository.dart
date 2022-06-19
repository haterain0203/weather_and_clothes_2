import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_and_clothes_2/state/open_meteo_state.dart';

class OpenMeteoRepository {

  // 緯度経度から最高気温と時間別最高気温を取得
  Future<OpenMeteoState> getWeather(double lat, double lon) async {
    // OpenWeatherだと過去のデータが取得できない（有料）のため、過去データはOpenMeteoで取得
    final url = "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&hourly=apparent_temperature&daily=apparent_temperature_max&timezone=Asia%2FTokyo&past_days=1";
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200) {
        final Map<String, dynamic> body = jsonDecode(response.body);
        //TODO
        return OpenMeteoState.fromJson(body);
      } else {
        throw Exception("Failed get OpenMeteo");
      }
  }

}