import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:muslim/screens/students_screen.dart';

import '../styles.dart';
import '../widgets/custom_button.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: Column(
              children: [   CustomButton(text: 'اسماء الطلاب', onPressed: () { Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudentsScreen(),
        ),
      ); },),
                Text(
                  "!مرحباً",
                  style: Styles.textStyle32.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            bodyWidget: Container(
              padding: const EdgeInsets.only(bottom: 16,top: 26),
              child: Column(
                children: [
                  Text(
                    "ابدأ رحلتك في حفظ القرآن بسهولة وبالطريقة التي تناسبك.",
                    style: Styles.textStyle24.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 95,),
                ],
              ),
            ),
            image: Image.asset(
              'assets/images/image 18.jpg',width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            decoration: PageDecoration(
              fullScreen: true,
              titlePadding: const EdgeInsets.only(top: 38),
              imagePadding: EdgeInsets.zero,
              pageColor: Colors.black.withOpacity(0.73),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "خطط مخصصة",
              style: Styles.textStyle32.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            bodyWidget: Container(
              padding: const EdgeInsets.only(bottom: 16,top: 26),
              child: Column(
                children: [
                  Text(
                    "ضع أهدافك الخاصة وتلقَّ تذكيرات مخصصة لتبقى على المسار.",
                    style: Styles.textStyle24.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 95,),
                ],
              ),
            ),
            image: Image.asset(
              'assets/images/image 18.jpg',width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            decoration: PageDecoration(
              fullScreen: true,
              titlePadding: const EdgeInsets.only(top: 38),
              imagePadding: EdgeInsets.zero,
              pageColor: Colors.black.withOpacity(0.73),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "حافظ على التحفيز",
              style: Styles.textStyle32.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            bodyWidget: Container(
              padding: const EdgeInsets.only(bottom: 16,top: 26),
              child: Column(
                children: [
                  Text(
                    "استلم تذكيرات يومية وآيات ملهمة تبقيك متصلاً بالقرآن.",
                    style: Styles.textStyle24.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 95,),
                ],
              ),
            ),
            image: Image.asset(
              'assets/images/image 18.jpg',width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            decoration: PageDecoration(
              fullScreen: true,
              titlePadding: const EdgeInsets.only(top: 38),
              imagePadding: EdgeInsets.zero,
              pageColor: Colors.black.withOpacity(0.73),
            ),
          ),
        ],
        showSkipButton: true,
        skip: Container(
          margin: const EdgeInsets.only(bottom: 160,left: 10,right: 1),
          alignment: Alignment.center,
          width: 156,
          height: 43,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(31),
              border: Border.all(color: const Color(0xff777777),width: 2)

          ),
          child: Text('تخطي',style: Styles.textStyle20.copyWith(color: const Color(0xff777777),),
          ),
        ),
        next:  Container(
          margin: const EdgeInsets.only(bottom: 160,right: 1,left: 0),
          alignment: Alignment.center,
          width: 156,
          height: 43,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(31),
              border: Border.all(color: const Color(0xffA85000),width: 2)

          ),
          child: Text('متابعة',style: Styles.textStyle20.copyWith(color: const Color(0xffA85000)),
          ),
        ),
        done: Container(
          margin: const EdgeInsets.only(bottom: 160,right: 1,left: 0),
          alignment: Alignment.center,
          width: 156,
          height: 43,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(31),
              border: Border.all(color: const Color(0xffA85000),width: 2)

          ),
          child: Text('متابعة',style: Styles.textStyle20.copyWith(color: const Color(0xffA85000)),
          ),
        ),
        onDone: () {
          Navigator.pushReplacementNamed(context, 'home');
        },


      ),
    );
}}
