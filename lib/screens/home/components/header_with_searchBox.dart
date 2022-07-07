import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),

      height: size.height * 0.2,
      // color: Colors.grey,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                bottom: 20 + defaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(children: [
              Text(
                "Helllo",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              // NetworkImage(),
              // AssetImage(),
              SvgPicture.asset(
                'assets/icons/menu.svg',
                // height: size.width * 0.08,
                // width: size.width * 0.08,
              ),
            ]),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding),
                  margin: const EdgeInsets.symmetric(
                      horizontal: defaultPadding),
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: primaryColor.withOpacity(0.23),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: primaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // suffixIcon:
                            //   SvgPicture.asset('assets/icons/search.svg')
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: size.width * 0.08,
                            width: size.width * 0.08,
                            child: SvgPicture.asset(
                              'assets/icons/search.svg',
                              // height: size.width * 0.08,
                              // width: size.width * 0.08,
                            ),
                          )),
                    ],
                  )))
        ],
      ),
    );
  }
}
