import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/Page_Person.dart';
import 'package:salimpay/theme/mycolor.dart';
class Complete extends StatefulWidget {
  const Complete({Key? key}) : super(key: key);

  @override
  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.to(Page_Person(),transition: Transition.upToDown,duration: Duration(seconds: 2));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:mycolor.mygreen,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage('img/BG.jpg'))
        ),


      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page_Person(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
