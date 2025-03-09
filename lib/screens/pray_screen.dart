import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class PrayScreen extends StatelessWidget {
   PrayScreen({super.key});

  final String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfff3f5f4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_rounded,color: Colors.red,size: 40,),
              Text('Egypt , cairo',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ],
          ),
          Text(formattedDate,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepOrange),),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/praytimes.png')),
            ),
          )
        ],
      ),

    );
  }
}
