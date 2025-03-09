import 'package:flutter/material.dart';

import '../styles.dart';

class CustomDate extends StatelessWidget {
  const CustomDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ //
        Text(
          'الثلاثاء , 13 مارس',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Text(
          '3 رمضان | 1445 هجري',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
