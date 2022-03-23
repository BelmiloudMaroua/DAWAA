import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';

class headerwithsearchbox extends StatelessWidget {
  const headerwithsearchbox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: size.height*0.17 , 
      child: Stack(
        children:<Widget> [
          Container(
            
            height:size.height*0.17-35 ,
            decoration: BoxDecoration(
              color:kbuttoncolor,
                borderRadius : BorderRadius.only(
                bottomLeft:Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              ),
          
          ),
         Container(
           margin: EdgeInsets.fromLTRB(20,40,20,20),
           child: Icon(
              Icons.dehaze,
              color: Colors.white,
              size : 35,
                 ),
         ), 
        Positioned(
         left: 0,
         right: 0,
          bottom: 10,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius .circular(20),
              boxShadow:[
                BoxShadow(
                offset: Offset(5,6),
                blurRadius: 7,
                color:Colors.black.withOpacity(0.1
              ),),]
              
               
            
              ),
              child: Row(
                children:<Widget> [
                  Expanded(
                    child: TextField(
                      decoration:InputDecoration(
                        hintText: "   Search",
                        hintStyle: TextStyle(
                          color: ktextcolor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      ),
                  ),
              Icon(
              Icons.search,
              color:ktextcolor.withOpacity(0.5) ,
              size : 20,
                 ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}