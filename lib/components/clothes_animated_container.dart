import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClothesAnimatedContainer extends StatelessWidget {
  const ClothesAnimatedContainer({
    required this.active,
    required this.imageURL,
    Key? key,
  }) : super(key: key);

  final bool active;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    // アクティブと非アクティブのアニメーション設定値
    final double size = active ? 30.h : 12.h;

    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF003569).withOpacity(0.1),
      ),
      duration: const Duration(milliseconds: 800),
      height: size,
      width: size,
      curve: Curves.easeOutQuint,
      //TODO 洋服の画像が入ります
      child: Image.asset(
        imageURL,
        fit: BoxFit.contain,
      ),
    );
  }
}
