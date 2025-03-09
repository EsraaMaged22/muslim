import 'package:flutter/material.dart';

class TasbihScreenBody extends StatefulWidget {
   TasbihScreenBody({super.key});

  @override
  State<TasbihScreenBody> createState() => _TasbihScreenBodyState();
}

class _TasbihScreenBodyState extends State<TasbihScreenBody> {

 int enteredvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80,right: 10,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("سُبحانَ اللهِ وبحَمْدِه عَدَدَ خَلْقِه، ورِضا نَفْسِه، وزِنةَ عَرْشِه، ومِدادَ كَلِماتِه",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange,),),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 7,
                    color: Colors.deepOrange,
                    offset: Offset(3, 4),
                    blurStyle: BlurStyle.inner,
                  )
                ],
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),bottomRight: Radius.circular(120),bottomLeft: Radius.circular(120))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CounterShape(value: enteredvalue,),
                  InkWell(
                      onTap: (){
                        setState(() {
                          enteredvalue -=enteredvalue;
                        });
                      },
                      child: Text('Reset',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
                  IconButton(onPressed: (){
                    setState(() {
                      enteredvalue++;
                    });
                  }, icon: Icon(Icons.circle_rounded,size: 70,color: Colors.white,shadows: [
                    Shadow(color: Colors.black,blurRadius: 50,offset: Offset.zero),

                  ],))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CounterShape extends StatelessWidget {
  final int value;
   CounterShape({
    super.key, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text('$value',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    );
  }
}
