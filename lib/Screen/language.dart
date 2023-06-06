import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/Signup.dart';
import 'package:salimpay/theme/mycolor.dart';
import 'package:salimpay/widget/custombuttonauth.dart';
class language extends StatefulWidget {
  const language({Key? key}) : super(key: key);

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
bool chk=true;  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(

    decoration: BoxDecoration(
        color: mycolor.mygreen,
        borderRadius: BorderRadius.circular(20)
    ),
    child:   MaterialButton(
      child: Text("Next",style: TextStyle(color: Colors.white),),


      onPressed: () {
        Get.to(Signup(),transition: Transition.fadeIn,duration: Duration(seconds: 1));
      },),
  ),
),

      backgroundColor: mycolor.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('img/logo.jpg'),
            SizedBox(height: 50,),
            SizedBox(
              width: 350,
              child: Text("Welcome to oue payment app!"
                  "  on can easily and instantly send money to anyone , anywhere",
              style: TextStyle(color: Colors.white,fontSize: 20),
              textAlign: TextAlign.center,),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(

                  onTap: (){
                    setState(() {
                      chk==!chk;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(


                      decoration: BoxDecoration(
                        color: Colors.white,
borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: mycolor.mygreen,width: 2)
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Icon(Icons.check_circle_sharp,size: 40,color: mycolor.mygreen,)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Image.asset('img/ae.png',width: 90,height: 50,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Text('Englich'),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      chk==!chk;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(


                      decoration: BoxDecoration(
                          color:chk? Colors.black:Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: mycolor.mygreen,width: 2)
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                         chk?

                         Container(
                           height: 35,
                           width: 35,
                           decoration: BoxDecoration(
                               border: Border.all(color: mycolor.mygreen,width: 2),
                             shape: BoxShape.circle
                           ),
                         )

                             :
                         Icon(Icons.check_circle_sharp,size: 40,color: mycolor.mygreen,)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Image.asset(chk?'img/aeee.png':'img/aee.png',width: 90,height: 50,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Text('اللغة العربية',style: TextStyle(color: chk? Colors.white:Colors.black,fontSize: 20),),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            )


          ],
        ),
      ),
    );
  }
}
