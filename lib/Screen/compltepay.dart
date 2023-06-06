import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salimpay/Screen/list_payment.dart';
class Complete_pay extends StatefulWidget {
  const Complete_pay({Key? key}) : super(key: key);

  @override
  State<Complete_pay> createState() => _Complete_payState();
}

class _Complete_payState extends State<Complete_pay> {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.check_circle_sharp,size: 280,color: Colors.white,),
            ),

            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("Payment completed successfully",style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                color: Colors.white
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("120",style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 80,
                      color: Colors.white
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("SAR",style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 40,
                      color: Colors.white
                  ),),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("to Salem Ahmad",style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white
              ),),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('img/combg.jpg'),fit: BoxFit.fill)
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation)
    => const List_Payment(),
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
