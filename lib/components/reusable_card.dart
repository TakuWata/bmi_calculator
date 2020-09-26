import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.tapCard});
  final Color colour;
  final Widget cardChild;
  final Function tapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapCard();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
