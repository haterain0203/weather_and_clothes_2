import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_and_clothes_2/state/address_state.dart';

class AddressRepository {
  //郵便番号から住所を取得する処理
  Future<AddressState> getAddress(String zipCode) async {
    //引数の郵便番号をもとにAPI用のURLを生成
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipCode";

    //生成したURLでAPIを叩き、住所を取得
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(response.body);
      return AddressState.fromJson(body);
    } else {
      throw Exception("Failed get Address");
    }
  }
}