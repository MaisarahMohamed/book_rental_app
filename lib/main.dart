import 'package:flutter/material.dart';
import 'package:mobileproject/rentDetail.dart';
import 'package:mobileproject/signIn.dart';
import 'package:mobileproject/splash.dart';

import 'admin.dart';
import 'listBook.dart';
import 'listBorrow.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RentDetail(),
    );
  }
}























