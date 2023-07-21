import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
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
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        backgroundColor: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                        child: IconContent(
                          icon: FontAwesomeIcons.mars,
                          text: 'MALE'
                        )
                      ),
                    )
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        backgroundColor: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                        child: IconContent(
                            icon: FontAwesomeIcons.venus,
                            text: 'FEMALE'
                        ),
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
                      backgroundColor: inactiveCardColor
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
                      backgroundColor: inactiveCardColor
                  )
                ),
                Expanded(
                  child: ReusableCard(
                      backgroundColor: inactiveCardColor
                  )
                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            height: 80.0,
            color: bottomContainerColor,
          )

        ],
      ),
    );
  }
}


