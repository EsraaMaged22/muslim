import 'package:flutter/material.dart';

import '../widgets/tasbih_screen_body.dart';
class TasbihScreen extends StatelessWidget {
  const TasbihScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body:  TasbihScreenBody(),
    );
  }
}
