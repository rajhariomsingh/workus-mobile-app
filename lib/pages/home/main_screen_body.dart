import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workfromus/controllers/popularphotoscontroller.dart';
import 'package:workfromus/utils/dimensions.dart';
import 'package:workfromus/widgets/appcolumn.dart';
import 'package:workfromus/widgets/bigtext.dart';
import 'package:workfromus/widgets/iconandtext.dart';
import 'package:workfromus/widgets/smalltext.dart';

class mainscreenbody extends StatefulWidget {
  const mainscreenbody({Key? key}) : super(key: key);

  @override
  State<mainscreenbody> createState() => _mainscreenbodyState();
}

class _mainscreenbodyState extends State<mainscreenbody> {
  PageController pageController = PageController(viewportFraction: 0.87);
  var _currPageValue=0.0;
  double _height=Dimensions.pageViewContainer;
  double _scaleFactor=0.8;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;

      });

    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
           dotsCount: 5,
           position: _currPageValue,
           decorator: DotsDecorator(
             size: const Size.square(9.0),
             activeSize: const Size(18.0, 9.0),
             activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
           ),
         ),


        //Popular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              bigtext(text: "Popular",color: Colors.black87,),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: bigtext(text: ".",color: Colors.black,),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: smalltext(text: "Fetching Location",color: Colors.black38,),
              ),

             ],
            ),
          ),
        //list of available in area
        Container(
          height: 900,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),

                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20, bottom: Dimensions.height10),
                      child:Row(
                        children: [
                          //image sectiom
                          Container(
                             width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:Colors.white38,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/image/images.jpg"
                                  ),
                                )

                            ),
                          ),
                          //text section
                          Expanded(
                            child: Container(
                              height: 100,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    bigtext(text: "Office wale",color: Colors.black),
                                    SizedBox(height: Dimensions.height10,),
                                    smalltext(text: "with wifi and refreshments",color: Colors.black12,),
                                    SizedBox(height: Dimensions.height10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        icondandtext(icon: Icons.circle_sharp,
                                            text: "Good",

                                            iconColor: Colors.orange),
                                        icondandtext(icon: Icons.location_on,
                                            text: "2km",

                                            iconColor: Colors.blue)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          )
                        ],
                      )
                  );

                }),
        )

      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale =1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1,currScale,1)..setTranslationRaw(0, currTrans, 0);

    }else if(index==_currPageValue.floor()+1){

      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1,currScale,1);
      matrix = Matrix4.diagonal3Values(1,currScale,1)..setTranslationRaw(0, currTrans, 0);
    }else if(index==_currPageValue.floor()-1){


      var currScale =1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1,currScale,1);
      matrix = Matrix4.diagonal3Values(1,currScale,1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1,currScale,1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left:Dimensions.width10, right:Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),

                color: index.isEven?Colors.blue : Colors.lightBlue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: Offset(0,5)
                  )
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(

                        "assets/image/4.jpg"
                    )
                )
            ),


          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left:Dimensions.width30, right:Dimensions.width30, bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: index.isEven?Colors.white : Colors.white,

                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: Offset(0,5)
                  )
                ],
              ),
               child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15, left: 15, right: 15),
                child: appcolumn(text: "workit",)
              ),


            ),
          )
        ],
      ),
    );
  }
}
