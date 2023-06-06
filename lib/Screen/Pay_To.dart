
import 'package:flutter/material.dart';
import 'package:salimpay/Screen/qr.dart';
import 'package:salimpay/theme/mycolor.dart';
import 'package:salimpay/widget/add_contact.dart';
import 'package:salimpay/widget/contacts.dart';
class Pay_To extends StatefulWidget {
  const Pay_To({Key? key}) : super(key: key);

  @override
  State<Pay_To> createState() => _Pay_ToState();
}

class _Pay_ToState extends State<Pay_To> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back),
      title: Text("Pay to",style: TextStyle(fontWeight: FontWeight.w700,
        fontSize: 22,),),

    ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 40,),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(

                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(

                  isDense: true,
                  filled: true,
                  fillColor:Colors.white,
                  hintText: 'To Name',


                  hintStyle:  TextStyle(
                      color: mycolor.myhinttxt,
                      fontSize: 10
                  ),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30))

                ),
              ),
            ),        
       InkWell(
         onTap: (){
           Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => const QRViewExample(),
           )
           );
         },
         child: Row(

           children: [
           Image.asset('img/code.jpg',width: 100,height: 100,),
           SizedBox(width: 2,),
           Column(

             crossAxisAlignment: CrossAxisAlignment.start,
             children: [

               Text('Scan or show QR code',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
               Text('Quickly pay or request money',style: TextStyle(fontSize: 12),),
             ],
           )
           ],
         ),
       ),
          Container(
            color: mycolor.mybktxt,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('My Contacts',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_circle_outlined,size: 30,),
                )
              ],
            ),
          ),

            Contacts(),

            Contacts(),

            Contacts(),

            Contacts(),

            Contacts(),

            Divider(),

            add_contcts(),
            add_contcts(),
            add_contcts(),
            add_contcts(),
            add_contcts(),
            add_contcts(),
            add_contcts(),
            add_contcts(),


          ],
        ),
      ),);
  }
}
