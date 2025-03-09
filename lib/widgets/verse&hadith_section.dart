import 'package:flutter/material.dart';

import '../styles.dart';

class VerseHadithSection extends StatelessWidget {
  final String title;
  final String content;

  const VerseHadithSection({
    super.key, required this.title, required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 197,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.70),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 0,
              offset: const Offset(0, 4),
              color: Colors.black.withOpacity(0.2),
            )
          ]
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                  height: 24,
                  child: Row(
                    children: [
                      const Image(image: AssetImage('assets/images/Vector (6).png')),
                      SizedBox(width: 12,),
                      const Image(image: AssetImage('assets/images/Vector (5).png')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 31,
                  child: Row(
                    children: [
                      Text(title,style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600,color: const Color(0xffA85000)),),
                      SizedBox(width: 4,),
                      const Image(image: AssetImage('assets/images/۞.png')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(color: const Color(0xffA85000).withOpacity(0.27),),
          SizedBox(height: 23,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content,
              textAlign: TextAlign.center,textDirection: TextDirection.rtl,
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400,color: const Color(0xff303030)),
            ),
          ),
        ],
      ),
    );
  }
}
