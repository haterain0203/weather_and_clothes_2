import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_and_clothes_2/repository/weather_repository.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

final weatherRepositoryProvider = Provider((ref) => WeatherRepository());

final weatherFutureProvider = FutureProvider<WeatherState>(((ref) async {
  final repository = ref.read(weatherRepositoryProvider);
  //TODO ローカルに保存されている郵便番号を用いる形に修正
  final address = await repository.getAddress("1000001");
  final weather = await repository.getWeather("1000001");
  final yesterdayWeather = await repository.getYesterdayWeather(weather["coord"]["lat"], weather["coord"]["lon"]);
  //TODO ローカルに保存されている郵便番号を用いる形に修正
  final weatherState = WeatherState(
    postalCode: "1000001",
    prefecture: address["results"][0]["address1"],
    city: address["results"][0]["address2"],
    currentTemperature: (weather["main"]["temp"]).toInt(),
    maxTemperature: (weather["main"]["temp_max"]).toInt(),
    weather: weather["weather"][0]["description"],
    iconStr: weather["weather"][0]["icon"],
    yesterdayMaxTemperature: (yesterdayWeather["daily"]["temperature_2m_max"][0]).toInt(),
  );
  return weatherState;
}));