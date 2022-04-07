import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workfromus/utils/dimensions.dart';
import 'package:workfromus/widgets/Expandabletext.dart';
import 'package:workfromus/widgets/appcolumn.dart';
import 'package:workfromus/widgets/appicon.dart';

import '../../widgets/bigtext.dart';
import '../../widgets/iconandtext.dart';
import '../../widgets/smalltext.dart';

class popularphotodetail extends StatelessWidget {
  const popularphotodetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularphotoimgsize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/images.jpg"
                  )
                )
              ),
            ),
          ),
          //icons
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appicon(icon: Icons.arrow_back_ios),
                  appicon(icon: Icons.plus_one_outlined),

                ],


          )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularphotoimgsize-20,

              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20,top: Dimensions.height20,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appcolumn(text: "Work It",),
                  SizedBox(height: Dimensions.height20,),
                  bigtext(text: "About",color: Colors.black,),
                  SizedBox(height: Dimensions.height20,),
                  Expanded(child: SingleChildScrollView(child: expandabletext(text: "Technology, design and innovation come together to shape our workplace. With an increasingly non-traditional aesthetic, large companies are looking to be at the cutting edge of providing their employees with an optimal and efficient workplace.We may think that the space where we carry out our work has no influence on the quality of it, but this is not the case. A good workspace will help us to reduce our stress and increase our productivity.Conceiving a workplace where employees feel comfortable, neither the conventional cubicles nor the so fashionable open space, current trends require personalized work spaces that enhance creativity and ensure well-being in accordance with the dedication of the company.")))
                ],
                ) ,
                ),

          )


        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomheight,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30,left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(

            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.white,
              ),
              child: Row(

                children: [

                  Icon(Icons.remove, color: Colors.black,),
                  SizedBox(width: Dimensions.width10/2),
                  bigtext(text: "Hours",color: Colors.black,),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: Colors.black,),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10,left: Dimensions.width10, right: Dimensions.width10),
              child: bigtext(text: "₹500/hr | Continue?",color: Colors.black,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,
                )
              ),

          ],
        ),
      ),
    );
  }
}
