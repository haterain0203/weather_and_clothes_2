import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_and_clothes_2/repository/weather_repository.dart';
import 'package:weather_and_clothes_2/state/weather_state.dart';

final weatherRepositoryProvider = Provider((ref) => WeatherRepository());

final weatherFutureProvider = FutureProvider<WeatherState>(((ref) async {
  final repository = ref.read(weatherRepositoryProvider);
  final address = await repository.getAddress("1250054");
  final weatherState = WeatherState(
    postalCode: "1250054",
    prefecture: address["results"][0]["address1"],
    city: address["results"][0]["address2"],
    temperature: 26,
    weather: "晴れ",
  );
  return weatherState;
}));