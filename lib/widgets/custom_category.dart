import 'package:flutter/material.dart';

import '../styles.dart';

class CustomCategory extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomCategory({
    super.key, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 85,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.green[800],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(title,style: Styles.textStyle15.copyWith(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
