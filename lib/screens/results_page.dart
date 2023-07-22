import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(25.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                    'Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              backgroundColor: inactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '18.3',
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                      'Your BMI result is quiet low, you should eat more!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              text: 'RE-CALCULATE',
              onTap: (){
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
