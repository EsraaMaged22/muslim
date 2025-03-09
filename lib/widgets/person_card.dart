import 'package:flutter/material.dart';

import '../styles.dart';


class PersonCard extends StatelessWidget {
  const PersonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 181,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 165,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xffA85000),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
              child: Image.asset(
                'assets/images/mostafaHosny.jpeg',
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Text(
              'مصطفي حسني',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xff5C649D),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Text(
              'داعية',
              style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xff8A8A8A),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '5',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff8A8A8A),
                      ),
                    ),
                    SizedBox(width: 5),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                  ],
                ),
                Text(
                  'المراجعات',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff9467DD),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
