import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/size_config.dart';
import 'package:myapp/core/utils/widgets/custom_buttons.dart';
import 'package:myapp/features/on%20boarding/presentation/widgets/custom_indicator.dart';
import 'package:myapp/features/on%20boarding/presentation/widgets/custom_page_view.dart';

class onboardingbody extends StatefulWidget {
  const onboardingbody({Key? key}) : super(key: key);

  @override
  State<onboardingbody> createState() => _onboardingbodyState();
}

class _onboardingbodyState extends State<onboardingbody> {
  PageController? pageController;
  @override
  void initState() {
    pageController= PageController(
      initialPage: 0
    )..addListener(() {
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        custompageview(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
         bottom: sizeconfig.defaultsize! *20,
          child:customindicator(
           dotindex: pageController!.hasClients ? pageController!.page :0,
          ),
        ),
        Visibility(
          visible:pageController!.hasClients ? (pageController?.page == 1 ?false : true) : true ,
          child: Positioned (top: sizeconfig.defaultsize! * 10,
          right: 32,
          child: Text(
            'Skip',
            style: TextStyle(
             fontFamily:'Nunito-Regular.ttf',
             fontSize: 19,
             color: ktextcolor,
            ),
          ),
          ),
        ),
        Positioned(
          right: sizeconfig.defaultsize! *10,
          left:sizeconfig.defaultsize! *10, 
          bottom: sizeconfig.defaultsize! *10,
         child :customgeneralbutton (
           text:pageController!.hasClients ?(pageController?.page ==1 ? 'Get started' : 'Next') : 'Next',
         ),
        ),
      ],
    );
  }
}