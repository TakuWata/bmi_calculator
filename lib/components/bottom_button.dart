import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTittle});
  final Function onTap;
  final String buttonTittle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTittle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: bottomContainerColour,
        width: double.infinity,
        margin: EdgeInsets.only(top: 5.0),
        height: bottomContainerHeight,
      ),
    );
  }
}
