import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 30,
            color: primaryColor.withOpacity(0.3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,     
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: (){},
            ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: (){},
            ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: (){},
            ),
        ],
      ),
    );
  }
}
