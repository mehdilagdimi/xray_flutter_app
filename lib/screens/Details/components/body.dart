import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.4,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: size.height * 0.32,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(defaultPadding / 2),
                        right: Radius.circular(defaultPadding / 2)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        color: primaryColor.withOpacity(0.2),
                      ),
                    ],
                    image: const DecorationImage(
                      alignment: Alignment.topLeft,
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/xray.png"),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset("assets/icons/menu.svg"),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 20.0,
                              color: primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
