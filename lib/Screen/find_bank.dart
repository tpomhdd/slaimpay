import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/cresentials.dart';
import 'package:salimpay/theme/mycolor.dart';
class find_bank extends StatefulWidget {
  const find_bank({Key? key}) : super(key: key);

  @override
  State<find_bank> createState() => _find_bankState();
}

class _find_bankState extends State<find_bank> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back),
      title: Text("Find your bank",style: TextStyle(fontWeight: FontWeight.w700,
        fontSize: 22,),),
      centerTitle: true,

    ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(

                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor:mycolor.mybktxt,
                  hintText: 'Search for a bank',
                    suffixIcon: Icon(Icons.search),
                    border:

                    OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),



                    hintStyle:  TextStyle(
                      color: mycolor.myhinttxt,
                      fontSize: 20
                  ),

                ),
              ),
            ),
          Container(
            height: 500,
            child: ListView(
              children: [

                InkWell(
                  onTap: (){

                    Get.to( cresentials(),
                        transition: Transition.fadeIn,duration: Duration(seconds: 1));
                  },

                  child: ListTile(title:  Text("Saudi  National Bank",style: TextStyle(fontWeight: FontWeight.w700,
                    fontSize: 18,),),
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('img/snb.png',width: 120,height: 120,),
                  ),

                  ),
                ),

                InkWell(
                  onTap: (){

                    Get.to( cresentials(),
                        transition: Transition.fadeIn,duration: Duration(seconds: 1));
                  },
                  child: ListTile(title:  Text("SABB Bank",style: TextStyle(fontWeight: FontWeight.w700,
                    fontSize: 18,),),
                    trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('img/saab.jpg',width: 120,height: 120,),
                    ),

                  ),
                ),

                InkWell(
                  onTap: (){

                    Get.to( cresentials(),
                        transition: Transition.fadeIn,duration: Duration(seconds: 1));
                  },
                  child: ListTile(title:  Text("Al-Rajhi  Bank",style: TextStyle(fontWeight: FontWeight.w700,
                    fontSize: 18,),),
                    trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('img/rajhi.png',
                        width: 120,height: 120,),
                    ),

                  ),
                ),
              ],
            ),
          )
          ],
        ),
      ),);
  }
}
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text("moh"),
    );
  }
}
