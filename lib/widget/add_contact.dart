import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/theme/mycolor.dart';

import '../Screen/Enter_amount.dart';
class add_contcts extends StatefulWidget {
  const add_contcts({Key? key}) : super(key: key);

  @override
  State<add_contcts> createState() => _add_contctsState();
}

class _add_contctsState extends State<add_contcts> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(amount(),
            transition: Transition.downToUp,duration: Duration(seconds: 1));

      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Container(

          color: Colors.white,

          child: Row(

            children: [

              Padding(

                padding: const EdgeInsets.all(8.0),

                child: Container(

                  width:70,

                  height: 70,

                  decoration: BoxDecoration(

                      shape: BoxShape.circle,

                      border: Border.all(color: mycolor.mygreen,width: 2),

                      image: DecorationImage(image: AssetImage('img/pers.jpg'),fit: BoxFit.fill)

                  ),

                ),

              ),

              Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Padding(

                    padding: const EdgeInsets.all(1.0),

                    child: Text('Ahmad Saeed',style: TextStyle(

                        fontWeight: FontWeight.w800,

                        fontSize: 16,

                        color: Colors.black

                    ),),

                  ),

                  Padding(

                    padding: const EdgeInsets.all(1.0),

                    child: Text('(704) 555-0127',style: TextStyle(

                        fontWeight: FontWeight.w800,

                        fontSize: 10,

                        color: Colors.grey

                    ),),

                  ),





                ],

              ),
Spacer(),
              Text('Invite',
              style: TextStyle(
                decoration:TextDecoration.underline,
                fontWeight: FontWeight.w700,
                color: mycolor.mygreen,
                fontSize: 17

              ),)

            ],

          ),

        ),
      ),
    );

  }
}
