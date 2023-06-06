import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:salimpay/Screen/Pay.dart';
import 'package:salimpay/Screen/Pay_To.dart';
import 'package:salimpay/theme/mycolor.dart';
class Page_Person extends StatefulWidget {
  const Page_Person({Key? key}) : super(key: key);

  @override
  State<Page_Person> createState() => _Page_PersonState();
}

class _Page_PersonState extends State<Page_Person> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,

        height: 60.0,
        items: <Widget>[
          Column(
            children: [
              Icon(Icons.home_outlined, size: 30),
              Text('Home')  ],
          ),
          Column(
            children: [
              IconButton(icon: Icon(Icons.group, size: 30), onPressed: () {  },),
              Text('Contacts')           ],
          ),
          InkWell(
            onTap: (){

              Get.to( Pay_To(),
                  transition: Transition.fadeIn,duration: Duration(seconds: 1));            },
            child: IconButton(icon:
    Icon(Icons.compare_arrows, size: 30), onPressed: () {
    Get.to( Pay_To(),
    transition: Transition.fadeIn,duration: Duration(seconds: 1));

  },),
          ),
          Column(
            children: [
              FaIcon(FontAwesomeIcons.bank, size: 30),
              Text('Bank')
            ],
          ),
          Column(
            children: [
              Icon(Icons.tab, size: 30),
                     Text('Statement')  ],
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: mycolor.mygreen,
        animationCurve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
 print(_page);         });
        },
        letIndexChange: (index) => true,
      ),
backgroundColor: mycolor.mygreen,
  body: SingleChildScrollView(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22),bottomRight: Radius.circular(22)),
            color: mycolor.mygreen,
          ),
          alignment: Alignment.centerLeft,
          height: 150,
          width: double.infinity,
          child: Row(
            children: [
              Column(
                children: [

                  SizedBox(height: 30,),
                  Text("Salim Al-Daadi",

                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 22,),),
                  Text("@salimaldaadi",

                    style: TextStyle(
                      color: Colors.white,

                      fontSize:15,),),

                ],

              ),
Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_active_sharp,size: 30,
              color: Colors.white,),
            )
            ],
          ),
        ),
Container(
  height: MediaQuery.of(context).size.height,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22)),
    color: mycolor.mybktxt,
  ),

  child: ListView(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('My Accounts',style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
        ),),
      ),

      Row(
  children: [

    Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(10 ),

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)

      ),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('img/alriyad.jpg',width: 120,height: 120,),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Text('15,000',style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20
                ),),
                SizedBox(width: 10,),
                Text('SAR',style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                    color: Colors.grey
                ),),

              ],
            ),
          ),
        ],
      ),

    ),
    Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(10 ),

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)

      ),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('img/snb.png',width: 120,height: 120,),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Text('15,000',style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20
                ),),
                SizedBox(width: 10,),
                Text('SAR',style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                    color: Colors.grey
                ),),

              ],
            ),
          )
        ],
      ),

    ),


  ],
),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Last Transacions',style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
        ),),
      ),

      Padding(
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

              child: Text('Jult 28',style: TextStyle(

                  fontWeight: FontWeight.w800,

                  fontSize: 10,

                  color: Colors.grey

              ),),

            ),

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



        Column(

          mainAxisAlignment: MainAxisAlignment.start,

          crossAxisAlignment: CrossAxisAlignment.end,

          children: [

            Padding(

              padding: const EdgeInsets.all(1.0),

              child: Text('Riyad Bank',style: TextStyle(

                  fontWeight: FontWeight.w800,

                  fontSize: 10,

                  color: Colors.grey

              ),),

            ),

            Row(
              children: [
                Padding(

                  padding: const EdgeInsets.all(1.0),

                  child: Text('-\$601.14',style: TextStyle(

                      fontWeight: FontWeight.w800,

                      fontSize: 16,

                      color: Colors.red

                  ),),

                ),
             Padding(
               padding: const EdgeInsets.all(1.0),
               child: Image.asset('img/smic.jpg'),
             ) ],

            ),

            Padding(

              padding: const EdgeInsets.all(1.0),

              child: Text('23 Nov 21',style: TextStyle(

                  fontWeight: FontWeight.w800,

                  fontSize: 10,

                  color: Colors.grey

              ),),

            ),





          ],

        )

      ],

    ),

  ),
),
      Padding(
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

                    child: Text('Jult 28',style: TextStyle(

                        fontWeight: FontWeight.w800,

                        fontSize: 10,

                        color: Colors.grey

                    ),),

                  ),

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



              Column(

                mainAxisAlignment: MainAxisAlignment.start,

                crossAxisAlignment: CrossAxisAlignment.end,

                children: [

                  Padding(

                    padding: const EdgeInsets.all(1.0),

                    child: Text('Riyad Bank',style: TextStyle(

                        fontWeight: FontWeight.w800,

                        fontSize: 10,

                        color: Colors.grey

                    ),),

                  ),

                  Row(
                    children: [
                      Padding(

                        padding: const EdgeInsets.all(1.0),

                        child: Text('-\$601.14',style: TextStyle(

                            fontWeight: FontWeight.w800,

                            fontSize: 16,

                            color: Colors.red

                        ),),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset('img/smic.jpg'),
                      ) ],

                  ),

                  Padding(

                    padding: const EdgeInsets.all(1.0),

                    child: Text('23 Nov 21',style: TextStyle(

                        fontWeight: FontWeight.w800,

                        fontSize: 10,

                        color: Colors.grey

                    ),),

                  ),





                ],

              )

            ],

          ),

        ),
      ),


      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Start  Saving",style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20
            ),),
          ),
Spacer(),            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("See all",

              style: TextStyle(

                  decoration: TextDecoration.underline,
                fontWeight: FontWeight.w800,
                fontSize: 10,color: Colors.grey
            ),),
          ),
        ],
      ),
Container(
  height: 400,
  child:   ListView(
  scrollDirection: Axis.horizontal,

  children: [

    Padding(
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

                image: DecorationImage(image: AssetImage('img/kids.jpg',),fit: BoxFit.fill)

              ),

            ),

            Padding(

              padding: const EdgeInsets.all(8.0),

              child: Text("Kids School",style: TextStyle(

                  fontWeight: FontWeight.w800,

                  fontSize: 20

              ),),

            ),

          ],

        ),

      ),
    ),
    Padding(
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

                  image: DecorationImage(image: AssetImage('img/kids.jpg',),fit: BoxFit.fill)

              ),

            ),

            Padding(

              padding: const EdgeInsets.all(8.0),

              child: Text("Kids School",style: TextStyle(

                  fontWeight: FontWeight.w800,

                  fontSize: 20

              ),),

            ),

          ],

        ),

      ),
    ),


  ],

  ),
)
    ],
  ),
)
      ],
    ),
  ),  );
  }
}
