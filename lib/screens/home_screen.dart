import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CurvedNavigationBar(
      //   height: 70,
      //   backgroundColor: Colors.transparent,
      //   color: const Color(0xff522700),
      //   buttonBackgroundColor: const Color(0xff522700),
      //   items: <Widget>[
      //     Image(image: const AssetImage('assets/images/Vector (7).png'),width: 36,height: 36,color: Colors.white,),
      //     Image(image: const AssetImage('assets/images/Vector (8).png'),width: 36,height: 36,color: Colors.white,),
      //     Image(image: const AssetImage('assets/images/Vector (9).png'),width: 36,height: 36,color: Colors.white),
      //     Image(image: const AssetImage('assets/images/Vector (10).png'),width: 36,height: 36,color: Colors.white),
      //     Image(image: const AssetImage('assets/images/Vector (11).png'),width: 36,height: 36,color: Colors.white),
      //   ],
      //   onTap: (index) {
      //     //Handle button tap
      //   },
      // ),
      body: const HomeViewBody(),
    );
  }
}
