import 'package:flutter/material.dart';

class PieIndicator extends StatelessWidget {
  final Color color;
  final String text;

  const PieIndicator({Key key, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          color: color,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
