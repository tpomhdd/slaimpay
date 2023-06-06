import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/Pay.dart';
import 'package:salimpay/Screen/Pay_To.dart';
import 'package:salimpay/Screen/Verify_Screen.dart';
import 'package:salimpay/theme/mycolor.dart';
import 'package:salimpay/widget/customtextformauth.dart';
import 'package:salimpay/widget/mybtn.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
bool enb=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar:  Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(





    decoration: BoxDecoration(

color: Colors.transparent,
        borderRadius: BorderRadius.circular(20)

    ),

    child:   MaterialButton(
      color: Colors.green,
      child: Text("Next",style: TextStyle(color: Colors.white),),
      onPressed:enb?(){

        Get.to(Verify_Screen(),

            transition: Transition.fadeIn,duration: Duration(seconds: 1));

      }:null,),

  ),
),
    appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text("Sign up",style: TextStyle(fontWeight: FontWeight.w700,
        fontSize: 22,),),
        centerTitle: true,
      ),
    body: SingleChildScrollView(
      child: Column(
        children: [
           Text("Enter your phone number and we`ll send you a code",
             textAlign: TextAlign.center,
             style: TextStyle(
            fontSize: 22,),),
SizedBox(height: 40,),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              child: TextFormField(
                onChanged: (text){
                  setState(() {
                    enb=true;

                  });
                },
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(

                    isDense: true,
                    filled: true,
                    fillColor:mycolor.mybktxt,
                    hintText: 'Phone number',
                    border: InputBorder.none,


                    hintStyle:  TextStyle(
                        color: mycolor.myhinttxt,
                        fontSize: 20
                    ),

                ),
              ),
            ),
          ),
        ],
      ),
    ),);

  }
}
