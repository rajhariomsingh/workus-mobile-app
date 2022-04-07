import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workfromus/utils/dimensions.dart';
import 'package:workfromus/widgets/smalltext.dart';

class expandabletext extends StatefulWidget {
  final String text;
  const expandabletext({Key? key, required this.text}) : super(key: key);

  @override
  State<expandabletext> createState() => _expandabletextState();
}

class _expandabletextState extends State<expandabletext> {
  late String firsthalf;
  late String secondhalf;

  bool hiddentext=true;
  double textheight = Dimensions.screenHeight/5.63;
//if less than 30
  @override
  void initState() {
    super.initState();
    if(widget.text.length>textheight){
      firsthalf=widget.text.substring(0, textheight.toInt());
      secondhalf=widget.text.substring(textheight.toInt()+1,widget.text.length);

    }else{
      firsthalf=widget.text;
      secondhalf="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty?smalltext(text: firsthalf):Column(
        children: [
          smalltext(height: 1.8,text: hiddentext?(firsthalf+"..."):(firsthalf+secondhalf)),
        InkWell(
          onTap: (){
            setState(() {
              hiddentext=!hiddentext;
            });

          },
          child: Row(
            children: [
              smalltext(text: "Show more", color: Colors.blue,),
              Icon(hiddentext?Icons.arrow_drop_down:Icons.arrow_drop_up ,color: Colors.blue),
            ],
          ),
        )
        ],
      ),

    );
  }
}
