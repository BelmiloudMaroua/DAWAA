import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
class My_bottom_nav_bar extends StatelessWidget {
  const My_bottom_nav_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left:40 ,
        right:40,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    boxShadow:[
      BoxShadow(
      offset: Offset(5,6),
      blurRadius: 35,
      color:Colors.black.withOpacity(0.1),
    ),]),
    child: Row(
      children:<Widget> [ 
      IconButton( onPressed:(){}, icon: Icon(
            Icons.house_rounded,
            color: kbuttoncolor,
            size : 40,
               ),),
               SizedBox(
                 width:40
               ),
      IconButton( onPressed:(){}, icon:Icon(
            Icons.grid_view_rounded ,
            color: kbuttoncolor,
            size : 37,
               ),),
               SizedBox(
                 width:40
               ),
      IconButton( onPressed:(){}, icon: Icon(
            Icons.medical_services_rounded,
            color: kbuttoncolor,
            size : 35,
               ),),
               SizedBox(
                 width:40
               ),
      IconButton( onPressed:(){}, icon: Icon(
            Icons.access_time_filled,
            color: kbuttoncolor,
            size : 35,
               ),),  
      ], 
    ),
      );
  }
}