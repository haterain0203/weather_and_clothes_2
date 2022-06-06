import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClothesAnimatedContainer extends StatelessWidget {
  const ClothesAnimatedContainer({
    required this.active,
    Key? key,
  }) : super(key: key);

  final bool active;

  @override
  Widget build(BuildContext context) {
    // アクティブと非アクティブのアニメーション設定値
    final double size = active ? 30.h : 12.h;

    return AnimatedContainer(
      color: Colors.grey,
      duration: const Duration(milliseconds: 800),
      height: size,
      width: size,
      curve: Curves.easeOutQuint,
      //TODO 洋服の画像が入ります
      child: Image.asset(
        "assets/images/t-shirt.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
