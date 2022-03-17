import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glen_loyalty/screens/bonus_reward_screen.dart';
import 'package:glen_loyalty/screens/businesstype_screen.dart';
import 'package:glen_loyalty/screens/campaign_screen.dart';
import 'package:glen_loyalty/screens/dashboard_screen.dart';
import 'package:glen_loyalty/screens/help_screen.dart';
import 'package:glen_loyalty/screens/home_screen.dart';
import 'package:glen_loyalty/screens/login_screen.dart';
import 'package:glen_loyalty/screens/otp_screen.dart';
import 'package:glen_loyalty/screens/signup_screen.dart';
import 'package:glen_loyalty/screens/wallet_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CampaignScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
         body: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: Center(
               child:
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     SizedBox(
                        height: 90.0,
                        width: 90.0,
                        child: Image.asset("assets/images/glen_logo.png"),
                     ),

                     const SizedBox(height: 20),
                     const Text("Manufacture | Exporter | Wholesalers", style: TextStyle(color: Colors.black, fontSize: 18.0,))
                   ],
                 ),
           ),
         ),
    );
  }
}
