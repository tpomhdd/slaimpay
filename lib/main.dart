import 'package:flutter/material.dart';
import 'package:salimpay/Screen/Enter_amount.dart';
import 'package:salimpay/Screen/HomeScreen.dart';
import 'package:salimpay/Screen/Page_Person.dart';
import 'package:salimpay/Screen/Pay.dart';
import 'package:salimpay/Screen/Pay_To.dart';
import 'package:salimpay/Screen/Signup.dart';
import 'package:salimpay/Screen/Verify_Screen.dart';
import 'package:salimpay/Screen/complete.dart';
import 'package:salimpay/Screen/compltepay.dart';
import 'package:salimpay/Screen/cresentials.dart';
import 'package:salimpay/Screen/find_bank.dart';
import 'package:salimpay/Screen/list_payment.dart';
import 'package:salimpay/Screen/payment.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  welcome_screen(),
    );
  }
}

