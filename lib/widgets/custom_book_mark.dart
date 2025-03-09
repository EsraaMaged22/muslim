import 'package:flutter/material.dart';

import '../styles.dart';

class BookMark extends StatelessWidget {
  const BookMark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 156,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/frame4.jpeg'),
          fit: BoxFit.fill,

        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black38,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage('assets/images/arcticons_al-quran-indonesia.png'),width: 120,height: 120,),
            Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('متابعة القرآن من حيث توقفت',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.start,textDirection: TextDirection.rtl,),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text('توقفت عند سورة ',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.start,textDirection: TextDirection.rtl,),
                      Text('النساء',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400,color: Color(0xffA85000)),textAlign: TextAlign.start,textDirection: TextDirection.rtl,),
                    ],
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text('صفحة ',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.start,textDirection: TextDirection.rtl),
                      Text('79',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400,color: Color(0xffA85000)),textAlign: TextAlign.start,textDirection: TextDirection.rtl),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
