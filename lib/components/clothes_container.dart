import 'package:flutter/material.dart';

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
        color: const Color(0xFF003569).withOpacity(0.1),
      ),
      child: Image.asset(
        imageURL,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
