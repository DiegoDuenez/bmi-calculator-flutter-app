import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.backgroundColor, this.child});

  final Color backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: this.backgroundColor,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}