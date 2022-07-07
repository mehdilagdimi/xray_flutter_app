import "package:flutter/material.dart";
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import 'featured_products.dart';
import 'header_with_searchBox.dart';
import 'on_promotion_products.dart';
import 'title_with_btns.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String homeTopText = "Featured";
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithBtnsRow(
              title: "Featured", btnLabel: "Show More", onPress: () {}),
          //50% width of screen width
          FeaturedProducts(size: size),
          TitleWithBtnsRow(
            title: "On Promotion",
            btnLabel: "Show More",
            onPress: () {},
          ),
          OnPromotionProducts(),
          SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}

