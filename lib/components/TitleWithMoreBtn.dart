import 'package:flutter/material.dart';
import 'package:plan_app/components/TitleWithCustomUnderLine.dart';
import 'package:plan_app/constants.dart';

class TitleWithMoreBtn extends StatefulWidget {
  const TitleWithMoreBtn({Key? key, required this.title, required this.press})
      : super(key: key);

  final String title;
  final Function() press;

  @override
  State<TitleWithMoreBtn> createState() => _TitleWithMoreBtnState();
}

class _TitleWithMoreBtnState extends State<TitleWithMoreBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: [
          TitleWithCustomUnderLine(
            text: widget.title,
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: Text(
              "More",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: widget.press,
          )
        ],
      ),
    );
  }
}
