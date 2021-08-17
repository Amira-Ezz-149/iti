import 'package:iti_training/constants.dart';
import 'package:flutter/material.dart';
class InfoDecorationCard extends StatelessWidget {
Function onPressed;
String content;

InfoDecorationCard({this.onPressed, this.content});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 9,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
          color: Colors.blue.shade500
      ),
      child: Center(
        child: GestureDetector(
            onTap: onPressed,
            child: Text(content, style: kTextUserInfoStyle,)),
      ),

    );
  }
}
