import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClothesContainer extends StatelessWidget {
  const ClothesContainer({
    required this.imageURL,
    Key? key,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF003569).withOpacity(0.1),
      ),
      //TODO 洋服の画像が入ります
      child: Image.asset(
        imageURL,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
