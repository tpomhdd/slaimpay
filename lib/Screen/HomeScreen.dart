import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salimpay/Screen/language.dart';
import 'package:salimpay/theme/mycolor.dart';
class welcome_screen extends StatefulWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(_createRoute());
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Image.asset('img/img.jpg'),
      backgroundColor: mycolor.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('img/logo.jpg'),


Row(
mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: mycolor.mygreen,
          shape: BoxShape.circle
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle
        ),
      ),
    ),

  ],
)        ],
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation)
    => const language(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child)
    {
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
