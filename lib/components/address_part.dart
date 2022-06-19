import 'package:flutter/material.dart';
import 'package:weather_and_clothes_2/state/home_page_state.dart';

import 'home_data_text.dart';

class AddressPart extends StatelessWidget {
  const AddressPart({
    required this.homePageData,
    Key? key,
  }) : super(key: key);
  
  final HomePageState homePageData;

  @override
  Widget build(BuildContext context) {
    return //TODO 設定画面で入力された郵便番号と住所を取得して表示
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeDataText(
            text: "〒${homePageData.address.results[0].zipCode}",
            // text: "〒000-0000",
          ),
          const SizedBox(
            width: 16.0,
          ),
          HomeDataText(
            text: homePageData.address.results[0].prefecture + homePageData.address.results[0].city,
            // text: "東京都xx区",
          ),
        ],
      );
  }
}
