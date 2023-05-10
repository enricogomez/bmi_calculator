import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    required this.score,
    required this.result,
    required this.interpretation,
    super.key,
  });

  final String score;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              color: kInActiveCardColor,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF58EC5D),
                      ),
                    ),
                    Text(
                      score,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      interpretation,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            title: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
