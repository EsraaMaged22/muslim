import 'package:flutter/material.dart';
import 'package:muslim/widgets/persons_listview.dart';
import 'package:muslim/widgets/verse&hadith_section.dart';
import 'package:url_launcher/url_launcher.dart';
import '../styles.dart';
import 'custom_book_mark.dart';
import 'custom_date_shape.dart';
import 'custom_features.dart';
import 'custom_pray_time.dart';
import 'custom_stepper.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Image(
                  image: const AssetImage('assets/images/frame3.jpeg'),
                  width: 390,
                  height: 280,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 60,
                  right: 24,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: const AssetImage('assets/images/Vector (12).png'),
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                Positioned(
                  top: 108,
                  left: 24,
                  right: 24,
                  bottom: 20,
                  child: SizedBox(
                    width: 342,
                    height: 152,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomDate(),
                            PrayerTimeWidget(prayerName: 'الفجر', prayerTime: '5', timeLeft: const Duration(minutes: 2),),

                            //CustomCountDownTimer()
                          ],
                        ),
                        SizedBox(height: 12,),
                        // Align(
                        //   alignment: Alignment.centerRight,
                        //     child: Text('الزقازيق , السلام',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500,color: Colors.white),))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          const CustomStepper(),
          SizedBox(height: 5,),
          SizedBox(
            width: 342,
            height: 89,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               // CustomFeatures(image: 'assets/images/clarity_date-line.png', title: 'التقويم', onTap: (){},),
                CustomFeatures(image: 'assets/images/guidance_praying-room.png', title: 'الصلاة', onTap: () {
                  Navigator.pushNamed(context, 'pray');
                },),
                CustomFeatures(image: 'assets/images/pngwing.com (2).png', title: 'تسبيح', onTap: () {
                  Navigator.pushNamed(context, 'tasbih');
                },),
                CustomFeatures(image: 'assets/images/Vector (9).png', title: 'قرءان', onTap: () {
                  //Navigator.pushNamed(context, 'quraan');
                  launchUrl(Uri.parse('https://app.quranflash.com/book/Medina1?ar#/reader'));
                },),
              ],
            ),
          ),
          SizedBox(height: 24,),
          const BookMark(),
          SizedBox(height: 24,),
          const VerseHadithSection(title: 'آية اليوم', content: 'أَلَمۡ یَأۡنِ لِلَّذِینَ ءَامَنُوۤا۟ أَن تَخۡشَعَ قُلُوبُهُمۡ لِذِكۡرِ ٱللَّهِ وَمَا نَزَلَ مِنَ ٱلۡحَقِّ وَلَا یَكُونُوا۟ كَٱلَّذِینَ أُوتُوا۟ ٱلۡكِتَـٰبَ مِن قَبۡلُ فَطَالَ عَلَیۡهِمُ ٱلۡأَمَدُ فَقَسَتۡ قُلُوبُهُمۡۖ وَكَثِیرࣱ مِّنۡهُمۡ فَـٰسِقُونَ﴾',),
          SizedBox(height: 24,),
          const VerseHadithSection(title: 'حديث اليوم', content: 'قال رسول الله صلى الله عليه وسلم: (إنَّ مِن أحبِّكم إليَّ وأقربِكُم منِّي مجلسًا يومَ القيامةِ أحاسنَكُم أخلاقًا)'),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.only(right: 16,left: 16,bottom: 16),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("محتوي يهمك", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600)),
                TextButton(onPressed: () {}, child: Text("عرض الكل",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500,color: const Color(0xffA85000)),)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: PersonsListView(),
          ),

          SizedBox(height: 40,),
        ],
      ),
    );
  }
}







