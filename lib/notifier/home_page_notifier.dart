import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_and_clothes_2/repository/address_repository.dart';
import 'package:weather_and_clothes_2/repository/open_weather_repository.dart';
import 'package:weather_and_clothes_2/repository/open_meteo_repository.dart';
import 'package:weather_and_clothes_2/state/home_page_state.dart';

final addressRepositoryProvider = Provider((ref) => AddressRepository());
final openWeatherRepositoryProvider = Provider((ref) => OpenWeatherRepository());
final openMeteoRepositoryProvider = Provider((ref) => OpenMeteoRepository());

final homePageFutureProvider = FutureProvider<HomePageState>(((ref) async {
  final addressRepository = ref.read(addressRepositoryProvider);
  final openWeatherRepository = ref.read(openWeatherRepositoryProvider);
  final openMeteoRepository = ref.read(openMeteoRepositoryProvider);

  //TODO ローカルに保存されている郵便番号を用いる形に修正
  final address = await addressRepository.getAddress("1000001");
  final openWeather = await openWeatherRepository.getWeatherDescAndIcon("1000001");
  final openMeteo = await openMeteoRepository.getWeather(openWeather.latLong.lat, openWeather.latLong.lon);
  //TODO ローカルに保存されている郵便番号を用いる形に修正

  final homePageState = HomePageState(
    address:  address,
    openWeather: openWeather,
    openMeteo: openMeteo,
    // postalCode: "1000001",
    // prefecture: address["results"][0]["address1"],
    // city: address["results"][0]["address2"],
    // currentTemperature: (weatherDescAndIcon["main"]["temp"]).toInt(),
    // morningTemperature: (weather["hourly"]["apparent_temperature"][32]).toInt(),
    // afternoonTemperature: (weather["hourly"]["apparent_temperature"][39]).toInt(),
    // eveningTemperature: (weather["hourly"]["apparent_temperature"][44]).toInt(),
    // yesterdayMaxTemperature: (weather["daily"]["apparent_temperature_max"][0]).toInt(),
    // maxTemperature: (weather["daily"]["apparent_temperature_max"][1]).toInt(),
    // weather: weatherDescAndIcon["weather"][0]["description"],
    // iconStr: weatherDescAndIcon["weather"][0]["icon"],
  );
  print(homePageState);
  return homePageState;
}));