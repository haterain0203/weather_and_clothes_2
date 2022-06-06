import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_and_clothes_2/components/clothes_animated_container.dart';
import 'package:weather_and_clothes_2/notifier/weather_notifier.dart';

import '../components/home_data_text.dart';
import '../components/rounded_corner_container.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherFutureProvider);
    //TODO 初期値は現在時刻に応じて変更する？
    final _pageIndex = useState(1);
    final _pageController = usePageController(
      viewportFraction: 0.5,
      initialPage: _pageIndex.value,
    );
    return weatherState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) =>
          Center(child: Text("データ取得時にエラーが発生しました: $error")),
      data: (data) {
        print("data = $data");
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          //TODO 押下処理
                        },
                        icon: Icon(Icons.settings),
                      ),
                      IconButton(
                        onPressed: () {
                          //TODO 押下処理
                        },
                        icon: Icon(Icons.share),
                      ),
                    ],
                  ),
                  RoundedCornerContainer(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.grey.shade200,
                    child: Column(
                      children: [
                        //AddressArea
                        //TODO 設定画面で入力された郵便番号と住所を取得して表示
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            //TODO 可変に
                            HomeDataText(
                              text: "〒000-0000",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            //TODO 可変に
                            HomeDataText(
                              text: "東京都xx区",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        //DateArea
                        //TODO 本日の日付を取得して表示
                        //TODO レイアウト的に数字のみフォントを大きくする予定
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //TODO 可変に
                            const HomeDataText(
                              text: "6月6日（月）",
                            ),
                            const SizedBox(width: 12.0,),
                            //TODO 天気に合わせて画像を変更する
                            Icon(
                              Icons.cloud,
                              size: 28.0,
                            ),
                            const SizedBox(width: 20.0,),
                            //TODO 取得した気温を表示する
                            //TODO レイアウト的に数字のみフォントを大きくする予定
                            //TODO 可変に
                            const HomeDataText(
                              text: "20℃",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            HomeDataText(
                              text: "昨日と比べて：",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            //TODO 可変に
                            HomeDataText(
                              text: "ちょっと寒い",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //ClothesArea
                  //TODO 取得したデータに合わせて画像を切り替え
                  Expanded(
                    child: RoundedCornerContainer(
                      color: Colors.grey.shade200,
                      //TODO Animationでぬるっとさせたい
                      child: PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          _pageIndex.value = index;
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          final timeString = _setTimeString(index);
                          // アクティブ値
                          bool active = _pageIndex.value == index;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                timeString,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                ),
                              ),
                              ClothesAnimatedContainer(active: active,)
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  RoundedCornerContainer(
                    height: 15.h,
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String _setTimeString(int index) {
    if(index == 0) return "朝";
    if(index == 1) return "昼";
    return "夜";
  }
}
