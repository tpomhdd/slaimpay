import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/Signup.dart';
import 'package:salimpay/Screen/payment.dart';
import 'package:salimpay/theme/mycolor.dart';
import 'package:salimpay/widget/customtextformauth.dart';
import 'package:salimpay/widget/mybtn.dart';
class Verify_Screen extends StatefulWidget {
  const Verify_Screen({Key? key}) : super(key: key);

  @override
  State<Verify_Screen> createState() => _Verify_ScreenState();
}

class _Verify_ScreenState extends State<Verify_Screen> {
  bool enb=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  MaterialButton(
        color: Colors.green,



        child: Text("Confirm",style: TextStyle(color: Colors.white),),


        onPressed:enb?(){
          Get.to(Payment_Screen(),
              transition: Transition.fadeIn,duration: Duration(seconds: 1));
        }:null,)
      ,      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back),
      title: Text("Verify Phone",style: TextStyle(fontWeight: FontWeight.w700,
        fontSize: 22,),),
      centerTitle: true,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Enter the code we sent to the number ending in 232",

                style: TextStyle(
                  fontSize: 22,),),
            ),
            SizedBox(height: 40,),
            OtpTextField(
              numberOfFields: 5,
              borderColor: Colors.grey,
fieldWidth: 60,
              //set to true to show as box or false to show as dash
//              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
              setState(() {
                enb=true;
              });
                }, // end onSubmit
            ),
SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Resend code?",

              style: TextStyle(
                decoration: TextDecoration.underline,
              decorationColor: mycolor.mygreen,
              color: mycolor.mygreen,
              fontSize: 15,
              fontWeight: FontWeight.w600,

            ),),
          ],
        )

          ],
        ),
      ),);
  }
}
