import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/compltepay.dart';
import 'package:salimpay/theme/mycolor.dart';

import 'complete.dart';
class pay extends StatefulWidget {
  const pay({Key? key}) : super(key: key);

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  double mx=-1;
  double my=-1;
  move(){
    setState(() {
      mx=10000;
      my=1000;
 print(mx);
    print(my);
    });
  }
  @override
  Widget build(BuildContext context) {

    TextEditingController accuont=new TextEditingController();

    TextEditingController Name=new TextEditingController();
    TextEditingController Note=new TextEditingController();
    setState(() {
      accuont.text="7587-6448-999-088888";
      Name.text="Salim Al-Daadi";
      Note.text="Pay for food";

    });
    return Scaffold(
      bottomNavigationBar:       Padding(
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
              Get.to(Complete_pay(),
                  transition: Transition.fadeIn,duration: Duration(seconds: 1));

            },),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title:
        Text("Pay to",style: TextStyle(fontWeight: FontWeight.w700,
          fontSize: 22,),),

      ),
body: SingleChildScrollView(
  child:Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          style: TextStyle(fontWeight: FontWeight.w900),
controller: accuont,
          
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            label: Text('Account Number'),
            isDense: true,
            filled: true,
            fillColor:mycolor.mybktxt,
            hintText: 'Account Number',



            hintStyle:  TextStyle(
                color: mycolor.myhinttxt,
                fontSize: 20
            ),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none

              )

          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          style: TextStyle(fontWeight: FontWeight.w900),
          controller: Name,

          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
              label: Text('Account Holder Name'),
              isDense: true,
              filled: true,
              fillColor:mycolor.mybktxt,
              hintText: 'Account Holder Name',



              hintStyle:  TextStyle(
                  color: mycolor.myhinttxt,
                  fontSize: 20
              ),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none

              )

          ),
        ),
      ),
      Container(

        alignment: Alignment.centerLeft,
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("You will send to",style: TextStyle(
                fontSize: 22,),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Salem Ahmad",style: TextStyle(fontWeight: FontWeight.w900,
                fontSize: 22,),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("120.00 SAR",style: TextStyle(fontWeight: FontWeight.w900,color: mycolor.mygreen,
                fontSize: 30,),),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Note",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.w900,
                color: Colors.grey,
                fontSize: 15,),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                child: TextFormField(
                  style: TextStyle(fontWeight: FontWeight.w900),
                  controller: Note,
                  maxLines: 5,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(

                      isDense: true,
                      filled: true,
                      fillColor:mycolor.mybktxt,
                      suffixIcon: Column(
                        children: [
                          SizedBox(height: 50,),
          Image.asset('img/iccc.jpg')
                        ],
                      ),




                      hintStyle:  TextStyle(
                          color: mycolor.myhinttxt,
                          fontSize: 20
                      ),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none

                      )

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400,
                height: 350,
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      child:       Row(
                        children: [
                          InkWell(
                            onTap:move,
                      child: AnimatedContainer(
                              duration: Duration(milliseconds:100),
                                alignment: Alignment(mx, my),


                                child: Image.asset('img/imoji1.png')),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap:move,
                            child: AnimatedContainer(
                                duration: Duration(milliseconds:100),
                                alignment: Alignment(mx, my),


                                child: Image.asset('img/imoji2.png')),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap:move,
                            child: AnimatedContainer(
                                duration: Duration(milliseconds:100),
                                alignment: Alignment(mx, my),


                                child: Image.asset('img/imoji3.png')),
                          ),
                          SizedBox(width: 10,),


                        ],
                      ),
            ),
                  ],
                ),
              ),
            ),


   ],
        ),
      ),


    ],
  ),
),
    );
  }
}
