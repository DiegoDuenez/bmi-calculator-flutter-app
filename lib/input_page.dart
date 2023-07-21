import 'package:flutter/material.dart';

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
                    child: ReusableCard(backgroundColor: Color(0xFF1D1E33))
                  ),
                  Expanded(
                    child: ReusableCard(backgroundColor: Color(0xFF1D1E33))
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


class ReusableCard extends StatelessWidget {

  ReusableCard({required this.backgroundColor});

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: BorderRadius.circular(10.0)
        ),
    );
  }
}
