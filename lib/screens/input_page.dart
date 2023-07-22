import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../components/round_icon_button.dart';
import '../constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          /*
          * ---------------------------------------------
          * TOP
          * ---------------------------------------------
          * */
          Expanded(
            child:
              Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      backgroundColor: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE'
                      )
                    )
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      backgroundColor: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                      child: IconContent(
                          icon: FontAwesomeIcons.venus,
                          text: 'FEMALE'
                      ),
                    )
                  ),
                ],
              ),
          ),

          /*
          * ---------------------------------------------
          * MIDDLE
          * ---------------------------------------------
          * */
          Expanded(
            child:
            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      backgroundColor: inactiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xFF8D8E98)
                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                                '$height',
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            Text(
                                'cm',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF8D8E98)
                                )
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E98),
                              activeTrackColor: Color(0xFFFFFFFF),
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30.0
                            )
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue){
                                setState(() {
                                  height = newValue.round();
                                });
                              }
                          ),
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          ),

          /*
          * ---------------------------------------------
          * BOTTOM
          * ---------------------------------------------
          * */
          Expanded(
            child:
            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      backgroundColor: inactiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF8D8E98)
                              )
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                  )
                ),
                Expanded(
                    child: ReusableCard(
                      backgroundColor: inactiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF8D8E98)
                              )
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
          BottomButton(
              text: 'CALCULATE',
              onTap: (){

                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                  bmi: calc.calculateBMI(),
                  result: calc.getResult(),
                  interpretation: calc.getInterpretation(),
                )));
              })

        ],
      ),
    );
  }
}


