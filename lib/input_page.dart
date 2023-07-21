import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(
                      backgroundColor: Color(0xFF1D1E33),
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE'
                      )
                    )
                  ),
                  Expanded(
                    child: ReusableCard(
                      backgroundColor: Color(0xFF1D1E33),
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
                  child: ReusableCard(backgroundColor: Color(0xFF1D1E33))
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
                  child: ReusableCard(backgroundColor: Color(0xFF1D1E33))
                ),
                Expanded(
                  child: ReusableCard(backgroundColor: Color(0xFF1D1E33))
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


