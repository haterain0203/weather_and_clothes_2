import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_and_clothes_2/repository/weather_repository.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

final weatherRepositoryProvider = Provider((ref) => WeatherRepository());

final weatherFutureProvider = FutureProvider<WeatherState>(((ref) async {
  final repository = ref.read(weatherRepositoryProvider);
  //TODO ローカルに保存されている郵便番号を用いる形に修正
  final address = await repository.getAddress("1250054");
  final weather = await repository.getWeather("1250054");
  final yesterdayWeather = await repository.getYesterdayWeather(weather["coord"]["lat"], weather["coord"]["lon"]);
  //TODO ローカルに保存されている郵便番号を用いる形に修正
  final weatherState = WeatherState(
    postalCode: "1250054",
    prefecture: address["results"][0]["address1"],
    city: address["results"][0]["address2"],
    temperature: (weather["main"]["temp"]).toInt(),
    weather: weather["weather"][0]["description"],
    iconStr: weather["weather"][0]["icon"],
  );
  return weatherState;
}));