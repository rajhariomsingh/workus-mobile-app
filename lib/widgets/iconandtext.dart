import 'package:flutter/cupertino.dart';
import 'package:workfromus/utils/dimensions.dart';
import 'package:workfromus/widgets/smalltext.dart';

class icondandtext extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;

  const icondandtext({Key? key,
    required this.icon,
    required this.text,

     required this.iconColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconsize24,),
        SizedBox(width: 5,),
        smalltext(text: text, ),

      ],
    );
  }
}
