import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  CustomStepperState createState() => CustomStepperState();
}

class CustomStepperState extends State<CustomStepper> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 76),
          child: EasyStepper(
            padding: EdgeInsets.zero,
            activeStep: activeStep,
            lineStyle: const LineStyle(lineLength: 30),
            stepShape: StepShape.circle,
            stepBorderRadius: 24,
            borderThickness: 2,
            stepRadius: 20,
            finishedStepBorderColor: const Color(0xff522700),
            activeStepBorderColor: const Color(0xff522700),
            unreachedStepBorderColor:  const Color(0xff522700),
            finishedStepTextColor: Colors.lightGreenAccent,
            finishedStepBackgroundColor: Colors.lightGreenAccent,
            activeStepIconColor: Colors.lightGreenAccent,
          
            showLoadingAnimation: false,
            defaultStepBorderType: BorderType.normal,
          
          
            steps: [
              _buildStep('assets/images/Vector (4).png', 0),
              _buildStep('assets/images/Vector (3).png', 1),
              _buildStep('assets/images/Vector (2).png', 2),
              _buildStep('assets/images/Vector (1).png', 3),
              _buildStep('assets/images/mynaui_sunrise.png', 4),
            ],
            onStepReached: (index) => setState(() => activeStep = index),
          ),
        ),
    );
  }

  EasyStep _buildStep(String imagePath, int stepIndex) {
    return EasyStep(
      customStep: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Opacity(
          opacity: activeStep >= stepIndex ? 1 : 1,
          child: Image.asset(
            imagePath,
            width: 24,
            height: 24,
          ),
        ),
      ),

    );
  }
}


