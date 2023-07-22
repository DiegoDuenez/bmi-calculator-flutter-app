import 'dart:ffi';

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.backgroundColor, this.child, this.onPress});

  final Color backgroundColor;
  final Widget? child;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: this.backgroundColor,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}