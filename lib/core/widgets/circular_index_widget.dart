import 'package:flutter/material.dart';

class CircularIndexWidget extends StatelessWidget {
  CircularIndexWidget({
    super.key,
    required this.color,
  });
  var color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 18,height: 3,decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(30)),);
  }
}
