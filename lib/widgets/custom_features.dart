import 'package:flutter/material.dart';

import '../styles.dart';


class CustomFeatures extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;
  const CustomFeatures({
    super.key, required this.image, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xff522700),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image(image: AssetImage(image)),
          ),
          SizedBox(height: 4,),
          Text(title,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500,color: const Color(0xffA85000)))
        ],
      ),
    );
  }
}
