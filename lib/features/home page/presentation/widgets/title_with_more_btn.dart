import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';

class titlewithmorebtn extends StatelessWidget {
  const titlewithmorebtn({
    Key? key, this.title, this.press, this.clr
  }) : super(key: key);
  final String? title ;
  final  clr;
  final Function? press ;  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5),
      child: Row(
        children: [
          titlewithcustomunderline(
            text:title),
            Spacer(),
             FlatButton(onPressed: (){}, child:Text("See more",
             style: TextStyle(color:clr.withOpacity(0.5),
             fontSize: 14,
             ),
             ),),
             Icon(
         Icons.arrow_forward,
         color:clr.withOpacity(0.5) ,
         size : 20,
            ),
            ],
      ),
    );
  }
}

class titlewithcustomunderline extends StatelessWidget {
  const titlewithcustomunderline({
    Key? key, this.text,
  }) : super(key: key);
 final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children:<Widget> [
       Padding(
         padding: const EdgeInsets.only(left: 8),
         child: Text(
           text!,
           style: TextStyle(
      fontFamily:'Nunito',
      fontWeight: FontWeight.bold,
      fontSize: 17,
      color: kttextcolor,
     ),
         ),
       ),
       ],
      ),
    );
  }
}

