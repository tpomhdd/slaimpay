import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/Page_Person.dart';
import 'package:salimpay/theme/mycolor.dart';
class List_Payment extends StatefulWidget {
  const List_Payment({Key? key}) : super(key: key);

  @override
  State<List_Payment> createState() => _List_PaymentState();
}

class _List_PaymentState extends State<List_Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar:
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
        InkWell(
          onTap: (){
            Get.to(Page_Person(),
                transition: Transition.fadeIn,duration: Duration(seconds: 1));


          },
          child: Text("Go to Home page",style: TextStyle(fontWeight: FontWeight.w700,
      color: mycolor.mygreen,
      fontSize: 25,),),
        ),
  ],
),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,size: 20,),
        title: Text("Salem Ahmad",
        style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.w900
        ),),
        actions: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(

              width:40,

              height: 40,

              decoration: BoxDecoration(

                  shape: BoxShape.circle,

                  border: Border.all(color: mycolor.mygreen,width: 2),

                  image: DecorationImage(image: AssetImage('img/pers.jpg'))

              ),

          ),
           ),

        ],

      ),
 body: Stack(
   children: [
     Column(
       children: [
         Container(
           alignment: Alignment.center,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("11 May",

               style: TextStyle(


                   fontWeight: FontWeight.w800,
                   fontSize: 20,color: Colors.grey
               ),),
           ),
         ),
         Row(
           children: [
             Container(

               width: 250,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(22)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(

                   decoration: BoxDecoration(

                       color: Colors.white,

                       borderRadius: BorderRadius.circular(22)

                   ),

                   child: Column(

                     children: [

                       Container(

                         height: 140,

                         width: 300,

                         decoration: BoxDecoration(

                             image: DecorationImage(image: AssetImage('img/box1.jpg',),fit: BoxFit.fill)

                         ),

                       ),

                       Container(
                         color: mycolor.mybktxt,
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 Padding(

                                   padding: const EdgeInsets.all(8.0),

                                   child: Text("+20 SAR",style: TextStyle(

                                       fontWeight: FontWeight.w800,

                                       fontSize: 20

                                   ),),

                                 ),

                                 Padding(

                                   padding: const EdgeInsets.all(8.0),

                                   child: Text("for Taxi",style: TextStyle(

                                       fontWeight: FontWeight.w800,
                                       color: Colors.grey,

                                       fontSize: 10

                                   ),),

                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),

                     ],

                   ),

                 ),
               ),
             ),
  SizedBox(width: 100,)
           ],
         ),

         Container(
           alignment: Alignment.center,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Today",

               style: TextStyle(


                   fontWeight: FontWeight.w800,
                   fontSize: 20,color: Colors.grey
               ),),
           ),
         ),
         Row(
           children: [
             SizedBox(width: 100,),
             Container(

               width: 250,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(22)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(

                   decoration: BoxDecoration(

                       color: Colors.white,

                       borderRadius: BorderRadius.circular(22)

                   ),

                   child: Column(

                     children: [

                       Container(

                         height: 140,

                         width: 300,

                         decoration: BoxDecoration(

                             image: DecorationImage(image: AssetImage('img/box2.jpg',),fit: BoxFit.fill)

                         ),

                       ),

                       Container(
                         color: mycolor.mygreen,
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 Padding(

                                   padding: const EdgeInsets.all(8.0),

                                   child: Text("-120 SAR",style: TextStyle(
                                     color: Colors.white,

                                       fontWeight: FontWeight.w800,

                                       fontSize: 20

                                   ),),

                                 ),

                                 Padding(

                                   padding: const EdgeInsets.all(8.0),

                                   child: Text("for Taxi",style: TextStyle(

                                       fontWeight: FontWeight.w800,
                                       color: Colors.white,

                                       fontSize: 10

                                   ),),

                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),

                     ],

                   ),

                 ),
               ),
             ),
           ],
         ),
       ],
     )
   ],
 ),   );
  }
}
