import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/complete.dart';
import 'package:salimpay/theme/mycolor.dart';
class cresentials extends StatefulWidget {
  const cresentials({Key? key}) : super(key: key);

  @override
  State<cresentials> createState() => _cresentialsState();
}

class _cresentialsState extends State<cresentials> {
  TextEditingController number=new TextEditingController();

  TextEditingController Password=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    number.text='7876-8769-9875-0111';
    Password.text='000000';
      return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(""
                  ""
                  "Enter your credentials",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w700,

              fontSize: 22,),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child:
              RichText(
                text: TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'By providing you Riyad bank credentials to ',
                    style: TextStyle(fontSize: 19)),
                    TextSpan(text: 'SAMA OB ', style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),

                    TextSpan(text: 'you`re enabling ',style:TextStyle(fontSize: 19)),
                    TextSpan(text: 'SAMA OB ', style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                    TextSpan(text: 'to retrieve your financial data',style: TextStyle(fontSize: 19)),
                  ],
                ),    ),            ),
          ),
            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
               style: TextStyle(fontWeight: FontWeight.w700),
                controller: number,

                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  isDense: true,
                  suffixIcon: Icon(Icons.check_circle_sharp),
                  filled: true,
                  fillColor:mycolor.mybktxt,
                  hintText: 'Account Number',
                  border: InputBorder.none,


                  hintStyle:  TextStyle(
                      color: mycolor.myhinttxt,
                      fontSize: 20
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Password,
                obscureText: true,


                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  isDense: true,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: InputBorder.none,
                  filled: true,
                  
                  fillColor:mycolor.mybktxt,
                  hintText: 'Password',


                  hintStyle:  TextStyle(
                      color: mycolor.myhinttxt,
                      fontSize: 20
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: double.infinity,
                decoration: BoxDecoration(
                    color: mycolor.mygreen,
                    borderRadius: BorderRadius.circular(20)
                ),
                child:   MaterialButton
                  (

                  child: Text("Confirm",style: TextStyle(color: Colors.white),),


                  onPressed:(){
                    Get.to(Complete(),
                        transition: Transition.fadeIn,duration: Duration(seconds: 1));

                  },),
              ),
            )
          ],
        ),
      ),);
    
  }
}
