import "package:flutter/material.dart";
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget{
  @override 

  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
         Row(
          children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
  
                  height: size.height * 0.32,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    borderRadius: BorderRadius.horizontal(left:Radius.circular(defaultPadding/2), right :Radius.circular(defaultPadding/2) ),
                    boxShadow: [
                      BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 40,
                      color: primaryColor.withOpacity(0.2),
                    ),],
                    image: const DecorationImage(
                      alignment: Alignment.topLeft,
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/xray.png"),
                      ),
                  ),
                ),
              ),
            Expanded(
              child: Column(),
              ),
          ],
         )
      ],
    );
  }
}