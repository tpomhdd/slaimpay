import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/find_bank.dart';
import 'package:salimpay/theme/mycolor.dart';
import 'package:salimpay/widget/customtextformauth.dart';
import 'package:salimpay/widget/mybtn.dart';
class Payment_Screen extends StatefulWidget {
  const Payment_Screen({Key? key}) : super(key: key);

  @override
  State<Payment_Screen> createState() => _Payment_ScreenState();
}

class _Payment_ScreenState extends State<Payment_Screen> {
  bool enb=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back),
      title: Text("Payment Methods",style: TextStyle(fontWeight: FontWeight.w700,
        fontSize: 22,),),
      centerTitle: true,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 50,),
            Text("Select the Payment method for you!",

              style: TextStyle(
                fontSize: 22,),),

Divider(),
           Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    showGeneralDialog(
                      barrierLabel: "Label",

                      transitionDuration: Duration(milliseconds: 700),
                      context: context,
                      pageBuilder: (context, anim1, anim2) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 300,
                            margin: EdgeInsets.only(bottom: 0,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Material(
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      SizedBox(width: 100,),
                                      Container(
                                        alignment: Alignment.center,

                                        child: DefaultTextStyle(child: Text("Add bank or card..."),style: TextStyle(

                                          color: Colors.black,
                                          fontSize: 20,


                                        ),

                                          textAlign: TextAlign.start,),
                                      ),
    Spacer(),
    Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(

            color: mycolor.mybktxt,
          shape: BoxShape.circle
        ),
        child: IconButton(icon: Icon(Icons.close_sharp,size: 15,color: Colors.grey,), onPressed: () {
          Navigator.pop(context);
        },))
                                    ],
                                  ),

                                  InkWell(
                                    onTap: (){

                                      Get.to(find_bank(),
                                          transition: Transition.downToUp,duration: Duration(seconds: 1));
                                    },
                                    child: Padding(
                                      padding: const
                                      EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      child: Row(
                                        children: [
                                          Container(

                                            margin: const EdgeInsets.all(8.0),

                                            height: 70,
                                            width: 70,


                                            decoration: BoxDecoration(
                                                image:
                                                DecorationImage(
                                                    image: AssetImage('img/ic1.jpg'))
                                            ),
                                          ),
                                           Column(
                                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                             children: [
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.start,
                                                 children: [
                                                   DefaultTextStyle(
                                                     child: Text("Bank"),

                                                       style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w700,

                                          ),

                                                   ),
                                                   SizedBox(width: 200,)
                                                 ],
                                               ),

                                               SizedBox(
                                                 width: 250,

                                                 child:
                                                 DefaultTextStyle(
                                                   child: Text("Fees waived for sending money or online purchases"),

                                                   style: TextStyle(
                                                     color: Colors.black26,
                                                     fontSize: 15,
                                                     fontWeight: FontWeight.w700,

                                                   ),

                                                 ),
                                               ),
                                             ],
                                           ),


                                        ],
                                      ),

                                    ),
                                  ) ,
                                  InkWell(
                                    onTap: (){

                                      Get.to(find_bank(),
                                          transition: Transition.fadeIn,duration: Duration(seconds: 1));
                                    },


                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5,),
                                          Container(

                                            margin: const EdgeInsets.all(8.0),

                                            height: 70,
                                            width: 70,


                                            decoration: BoxDecoration(
                                              image:DecorationImage(image: AssetImage('img/ic2.jpg'))
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  DefaultTextStyle(
                                                    child: Text("Card"),

                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w700,

                                                    ),

                                                  ),
                                                  SizedBox(width: 200,)
                                                ],
                                              ),

                                              SizedBox(
                                                width: 250,

                                                child:
                                                DefaultTextStyle(
                                                  child: Text("We charge 3% fee for sending money with credit cards"),

                                                  style: TextStyle(
                                                    color: Colors.black26,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700,

                                                  ),

                                                ),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),

                                    ),
                                  ) ,

                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      transitionBuilder: (context, anim1, anim2, child) {
                        return SlideTransition(
                          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
                          child: child,
                        );
                      },
                    );
                  }  ,
                  child: Text("+ Add bank or card",

                    style: TextStyle(

                      decorationColor: mycolor.mygreen,
                      color: mycolor.mygreen,
                      fontSize: 25,


                    ),),
                ),
              ],
            )

          ],
        ),
      ),);
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const find_bank(),
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
