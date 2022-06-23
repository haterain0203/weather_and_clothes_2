import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_and_clothes_2/state/open_weather_state.dart';

//TODO OpenWeahter or OpenMeteoどっちにするか検討から再開する予定
// 元々OpenWeatherで当日の天気と気温を、OpenMeteoで昨日の気温、翌日の天気と気温、翌々日の天気と気温を取得させていた
// が、OpenMeteoでは天気に合わせたアイコンを返す機能がないため、翌日の天気と気温、翌々日の天気と気温もOpenWeatherで取得するよう試みて以下の通り修正した
// 以下記載のURLでそれぞれの天気と気温をList形式で取得できたが、List内の値が常に変更することがわかった（API叩いた時間以降の予報しか出ない）
// そうすると、リスト内の翌日・翌々日の昼12:00の値を取得したい場合、List内の要素番号が固定ではないので、毎回ループとかして確認する必要がある
// また、当日の最高気温についても、現在以降の予報データしかないため、取得できない
// 以上の問題点が出たところで止まっている状況

// 考えられる選択肢は以下
// ①OpenMeteoに統一
// この場合、各天気情報に合わせたアイコンの用意が必要
// ②昨日のデータ以外はOpenWeatherに統一
// この場合、当日の気温と天気取得するためのAPIと翌日・翌々日の天気取得するためのAPIにアクセス必要（有償なら一つのAPIでできるが無料の場合この対応が必要）
// 加えて、上記記載の通り、取得したList内でループ処理必要
class OpenWeatherRepository {
  // 郵便番号から、本日の気温（朝・昼・夜）と翌日、翌々日の昼の気温を取得する
  // https://openweathermap.org/forecast5#zip5
  Future<OpenWeatherState> getWeatherDescAndIcon(String zipCode) async {
    var _zipCode = "";
    if (zipCode.contains("-")) {
      _zipCode = zipCode;
    } else {
      _zipCode = zipCode.substring(0, 3) + "-" + zipCode.substring(3);
    }
    final url =
        "https://api.openweathermap.org/data/2.5/forecast?zip=$_zipCode,JP&appid=b10f2f5d63bee6f33f3ef043ceccb9ae&lang=ja&units=metric";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(response.body);
      return OpenWeatherState.fromJson(body);
    } else {
      throw Exception("Failed get OpenWeather");
    }
  }
}
