import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workfromus/widgets/smalltext.dart';

import '../utils/dimensions.dart';
import 'bigtext.dart';
import 'iconandtext.dart';

class appcolumn extends StatelessWidget {
  final String text;
  const appcolumn({Key? key, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bigtext(text: text, size: Dimensions.Font26,color: Colors.black,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star, color: Colors.redAccent, size: 15,)),

            ),
            SizedBox(width: 10,),
            smalltext(text: "4.5"),
            SizedBox(width: 10,),
            smalltext(text: "14"),
            SizedBox(width: 10,),
            smalltext(text: "reviews"),

          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icondandtext(icon: Icons.circle_sharp,
                text: "Normal",

                iconColor: Colors.orange),
            icondandtext(icon: Icons.location_on,
                text: "2km",

                iconColor: Colors.blue)
          ],
        )
      ],
    ) ;
  }
}
