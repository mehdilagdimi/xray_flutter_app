import "package:flutter/material.dart";
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import 'header_with_searchBox.dart';
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
              title: "Featured", 
              btnLabel: "Show More", 
              onPress: () {}),
          //50% width of screen width
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            // padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RecommandProductCard(
                  size: size, 
                  image: "assets/images/xray.png",
                  productRef: "DR X300",
                  price: 48,
                  onPress: (){},
                  ),
                RecommandProductCard(
                  size: size, 
                  image: "assets/images/xray.png",
                  productRef: "DR X800",
                  price: 88,
                  onPress: (){},
                  ),
                RecommandProductCard(
                  size: size, 
                  image: "assets/images/xray.png",
                  productRef: "DR X200",
                  price: 24,
                  onPress: (){},
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecommandProductCard extends StatelessWidget {
  const RecommandProductCard({
    Key? key,
    this.productRef,
    this.image,
    this.price,
    this.onPress,
    required this.size,
  }) : super(key: key);

  final Size size;
  final String? image, productRef;
  final double? price;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              // padding: const EdgeInsets.all(defaultPadding / 4),
              padding: const EdgeInsets.only(
                  left: defaultPadding * 1.4,
                  right: defaultPadding * 1.4,
                  top: defaultPadding,
                  bottom: 0.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
      
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 2,
                      color: primaryColor.withOpacity(0.2),
                    )
                  ]),
              child: Column(
                children: [
                  ClipRRect(
                    //  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                    child: Column(
                      children: [
                        Image.asset(image!),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            Container(
                    
                    height: 25,
                    color: primaryColor.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '$productRef'.toUpperCase(),
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              // style: Theme.of(context).textTheme.button,
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: ('\$$price\K').toUpperCase(),
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              // style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
