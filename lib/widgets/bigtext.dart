import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workfromus/utils/dimensions.dart';
import 'package:get/get.dart';
class bigtext extends StatelessWidget {
   Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  bigtext({Key? key,  this.color = Colors.green,
    required this.text,
    this.size=0,
    this.overflow=TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size==0?Dimensions.Font20:size,
        fontWeight:  FontWeight.w400,

      )

    );
  }
}
