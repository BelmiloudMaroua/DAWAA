import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/size_config.dart';

class customgeneralbutton extends StatelessWidget {
  const customgeneralbutton({Key? key,this.text}) : super(key: key);
 final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 20,
      decoration: BoxDecoration(
        color: kbuttoncolor,
        borderRadius: BorderRadius.circular(20),
       ),
      child: Center(
        child : Text(
                text!, 
               style: TextStyle(
                 fontFamily:'Nunito-Regular.ttf',
                 fontSize: 15,
                 color: Colors.white,
               ),
               textAlign : TextAlign.left,
               ),
      ),
    );
  }
}