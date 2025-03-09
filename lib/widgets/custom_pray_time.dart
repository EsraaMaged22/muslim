import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PrayerTimeWidget extends StatelessWidget {
  final String prayerName;
  final String prayerTime;
  final Duration timeLeft;

  const PrayerTimeWidget({super.key,
    required this.prayerName,
    required this.prayerTime,
    required this.timeLeft,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate the percentage of time remaining for the prayer
    double percentage = timeLeft.inSeconds / (24 * 60 * 60);

    return Row(
      children: [
        CircularPercentIndicator(
          radius: 50.0,
          lineWidth: 5.0,
          percent: percentage,
          progressColor: Colors.brown,
          backgroundColor: Colors.brown.withOpacity(0.3),
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                prayerName,
                style: const TextStyle(color: Colors.brown, fontSize: 14),
              ),
              Text(
                prayerTime,
                style: const TextStyle(color: Colors.brown, fontSize: 12),
              ),
              Text(
                "-${timeLeft.inHours}:${timeLeft.inMinutes.remainder(60)}:${timeLeft.inSeconds.remainder(60)}",
                style: const TextStyle(color: Colors.brown, fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
