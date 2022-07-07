import 'package:flutter/material.dart';

import '../../../constants.dart';

class OnPromotionProducts extends StatelessWidget {
  const OnPromotionProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          OnPromotionProductCard(image : "assets/images/xray.png", onPress: (){},),
          OnPromotionProductCard(image : "assets/images/xray.png", onPress: (){},),
        ],
      ),
    );
  }
}

class OnPromotionProductCard extends StatelessWidget {
  const OnPromotionProductCard({
    Key? key,
    this.image,
    this.onPress,
  }) : super(key: key);

  final String? image;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(defaultPadding/2),
        // width: size.width * 0.8,
        height: 180,
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(
          //   topLeft:  Radius.circular(defaultPadding/2),
          //   topRight:  Radius.circular(defaultPadding/2),
          // ),
          
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(defaultPadding/2)
          ),
          child: FittedBox(
            // fit: BoxFit.fill,
            child: Image.asset(image!),
            ),
        ),
      ),
    );
  }
}
