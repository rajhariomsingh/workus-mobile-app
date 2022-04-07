import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workfromus/utils/dimensions.dart';

class appicon extends StatelessWidget {
  final IconData icon;
  final Color backgroundcolor;
  final Color iconcolor;
  final double size;
  final double iconsize;
   appicon({Key? key,
     required this.icon,
    this.backgroundcolor = Colors.white70,
     this.iconcolor= Colors.black,
     this.size=40,
     this.iconsize=16,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundcolor,
      ),
      child: Icon(
        icon,
        color: iconcolor,
        size:iconsize,
      ),
    );
  }
}
