import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workfromus/pages/home/main_screen_body.dart';
import 'package:workfromus/utils/dimensions.dart';
import 'package:workfromus/widgets/bigtext.dart';
import 'package:workfromus/widgets/smalltext.dart';

class mainscreenpage extends StatefulWidget {
  const mainscreenpage({Key? key}) : super(key: key);

  @override
  State<mainscreenpage> createState() => _mainscreenpageState();
}

class _mainscreenpageState extends State<mainscreenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //header
          Container(
            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45, bottom:Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      bigtext(text: "India",color: Colors.blue,size: 30,),
                      Row(
                        children: [
                          smalltext(text: "ghaziabad"),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )

                    ],
                  ),
                  Center(
                    child: Container(
                        width: Dimensions.height45,
                        height: Dimensions.height45,
                        child: Icon(Icons.search, color: Colors.white,size: Dimensions.iconsize24),
                        decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(15),
                          color: Colors.blue,

                        )

                    ),
                  )
                ],
              ),
            ),
          ),
          //body
          Expanded(child: SingleChildScrollView(
            child: mainscreenbody(),
          )),
        ],
      ),
    );
  }
}
