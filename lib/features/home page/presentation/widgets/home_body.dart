import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/features/home%20page/presentation/widgets/Advertissments_dawaa.dart';
import 'package:myapp/features/home%20page/presentation/widgets/Categories_dawaa.dart';
import 'package:myapp/features/home%20page/presentation/widgets/Pharmacies_dawaa.dart';
import 'header_with_search_box.dart';
import 'title_with_more_btn.dart';
class homebody extends StatelessWidget {
  const homebody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children:<Widget> [
           headerwithsearchbox(size: size),
           titlewithmorebtn(
             title: "Categories", press: (){},clr:ktextcolor),
          CategoriesDAWAA(),
          titlewithmorebtn(
            title:"Pharmacies" ,press: (){},clr:ktextcolor,
          ),
          Pharmaciesdawaa(),
          titlewithmorebtn(
            title:"Advertissments" ,press: (){},clr: Colors.white,
          ),
           Advertissmentsdawaa(),
          ],
      ),
    );
  }
}

