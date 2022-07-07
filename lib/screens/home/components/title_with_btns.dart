import "package:flutter/material.dart";

import '../../../constants.dart';

class TitleWithBtnsRow extends StatelessWidget {
  const TitleWithBtnsRow({
    Key? key,
    this.title,
    this.btnLabel,
    this.onPress
  }) : super(key: key);
  final String? title;
  final String? btnLabel;
  //Use this func declaration or this one
  // final void Function()? onPress;
  //or this declaration
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          TitleWithCustomText(homeTopText: title!),
          Spacer(),
          ElevatedButton(
            onPressed: onPress,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(primaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.green,),
                ),
                )
            ),
            child: Text(btnLabel!,
                style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomText extends StatelessWidget {
  const TitleWithCustomText({
    Key? key,
    required this.homeTopText,
  }) : super(key: key);

  final String homeTopText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Stack(
        children: [
          Text(
            homeTopText,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 30,
                // color: primaryColor.withOpacity(0.1),
              ))
        ],
      ),
    );
  }
}
