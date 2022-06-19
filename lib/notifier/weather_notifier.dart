import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_and_clothes_2/repository/address_repository.dart';
import 'package:weather_and_clothes_2/repository/weather_repository.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

final weatherRepositoryProvider = Provider((ref) => WeatherRepository());
final addressRepositoryProvider = Provider((ref) => AddressRepository());

final weatherFutureProvider = FutureProvider<WeatherState>(((ref) async {
  final repository = ref.read(weatherRepositoryProvider);
  final addressRepository = ref.read(addressRepositoryProvider);
  //TODO ローカルに保存されている郵便番号を用いる形に修正
  final address = await addressRepository.getAddress("1000001");
  final weatherDescAndIcon = await repository.getWeatherDescAndIcon("1000001");
  final weather = await repository.getWeather(weatherDescAndIcon["coord"]["lat"], weatherDescAndIcon["coord"]["lon"]);
  //TODO ローカルに保存されている郵便番号を用いる形に修正
  //TODO きっとこのやり方は正しくない・・・
  final weatherState = WeatherState(
    postalCode: "1000001",
    prefecture: address["results"][0]["address1"],
    city: address["results"][0]["address2"],
    currentTemperature: (weatherDescAndIcon["main"]["temp"]).toInt(),
    morningTemperature: (weather["hourly"]["apparent_temperature"][32]).toInt(),
    afternoonTemperature: (weather["hourly"]["apparent_temperature"][39]).toInt(),
    eveningTemperature: (weather["hourly"]["apparent_temperature"][44]).toInt(),
    yesterdayMaxTemperature: (weather["daily"]["apparent_temperature_max"][0]).toInt(),
    maxTemperature: (weather["daily"]["apparent_temperature_max"][1]).toInt(),
    weather: weatherDescAndIcon["weather"][0]["description"],
    iconStr: weatherDescAndIcon["weather"][0]["icon"],
  );
  print(weatherState);
  return weatherState;
}));