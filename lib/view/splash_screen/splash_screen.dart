


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:spoider_app/view/getstarted_screen/get_started_screen.dart';
import 'package:spoider_app/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     checkFirstTime();
    super.initState();
  }
Future<void> checkFirstTime() async{
 SharedPreferences pref  = await SharedPreferences.getInstance();
 bool isFirstTime = pref.getBool('firstTime') ?? true;

 Future.delayed(const Duration(seconds: 2),(){
    if(isFirstTime){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const getStartedScree()));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    }
 });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Card(
                  child: Image.asset(
                'lib/assets/spoiderLogo.jpeg',
                fit: BoxFit.cover,
              )),
            ),
            
          ],
        ),
      ),
    );
  }
}
