import 'package:flutter/material.dart';
import 'package:salimpay/theme/mycolor.dart';


class mybtn extends StatelessWidget {
  const mybtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: mycolor.mygreen,
          borderRadius: BorderRadius.circular(20)
      ),
      child:   MaterialButton(
        child: Text("Next",style: TextStyle(color: Colors.white),),


        onPressed: () {  },),
    );
  }
}
