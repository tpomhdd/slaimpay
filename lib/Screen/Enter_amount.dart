import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/Pay.dart';
import 'package:salimpay/Screen/Pay_To.dart';
import 'package:salimpay/theme/mycolor.dart';
class amount extends StatefulWidget {
  const amount({Key? key}) : super(key: key);

  @override
  State<amount> createState() => _amountState();
}

class _amountState extends State<amount> {
TextEditingController amount=new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mycolor.mygreen,
            appBar: AppBar(
    backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
    title: Text("Enter the amount",
    style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,
    fontSize: 22,),),

    ),
      body: Column(
        children: [
          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
controller: amount,
              onChanged: (val){
                setState(() {
                  val=val+"SAR";
                });
              },
textAlign: TextAlign.center,
 style:  TextStyle(


     color: Colors.white,
     fontSize: 50
 ),

              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(


                isDense: true,

                  filled: true,
                  fillColor:Colors.transparent,
                  hintText: '0 SAR',


                  hintStyle:  TextStyle(


                      color: Colors.white,
                      fontSize: 50
                  ),

              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child:   MaterialButton(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        color: mycolor.mygreen,
                        child: Icon(Icons.compare_arrows,size: 20,color: Colors.white,)),
                    SizedBox(width: 20,),
                    Text("Next",style: TextStyle(color: mycolor.mygreen,fontSize: 22,fontWeight: FontWeight.w700),),
                  ],
                ),


                onPressed:(){
                  Get.to(pay(),
                      transition: Transition.fadeIn,duration: Duration(seconds: 1));


                },),
            ),
          )
          ,       ],
      ),

    );
  }
}

