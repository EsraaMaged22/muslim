
import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  final List<String> students = [
  'آلاء أشرف ابراهيم ابراهيم العبسي',
  'محمد مغازي حسيني الشرنوبي مرعي'''
  'أحمد محمود أحمد محمد ابو عيطه'''
  'رحمه عصام فتحي محمد شرف',
   'فارس صابر عبدالخالق صالح عاشور',
    'محمد محمد السعيد محمد المغربي',
   'خالد حاتم عبد المجيد جبل',
   'حسن حمدى حسن عبدالوهاب مهنا',
  'محمد طارق السيد ابراهيم حموده',
  'أحمد محمد عبدالفتاح محمود',
   'عبد الرحمن يوسف محمد السكرى',
   'مصطفي أحمد مصطفى السيد ابراهيم',
  ];


  @override
  Widget build(BuildContext context)

  {
    return Scaffold( appBar: AppBar(iconTheme: IconThemeData(color: Colors.brown),title: Text('أسماء الطلاب',style: TextStyle(color: Colors.brown),),centerTitle: true,),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    students[index],
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  ".${index + 1}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.brown,),
                ),
              ],
            ),
          );
        },
      ),
    );

  }
}
