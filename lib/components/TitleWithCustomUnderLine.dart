import 'package:flutter/material.dart';
import 'package:plan_app/constants.dart';

class TitleWithCustomUnderLine extends StatefulWidget {
  const TitleWithCustomUnderLine({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  State<TitleWithCustomUnderLine> createState() =>
      _TitleWithCustomUnderLineState();
}

class _TitleWithCustomUnderLineState extends State<TitleWithCustomUnderLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: kDefaultPadding / 4,
            ),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(
                right: kDefaultPadding / 4,
              ),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
