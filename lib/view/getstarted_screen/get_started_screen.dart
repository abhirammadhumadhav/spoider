
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spoider_app/view/home_screen/home_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Card(
                child: Image.asset('lib/assets/autoimage.jpeg',fit: BoxFit.cover,),
              ),
            ),
            const Text('Spoider',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(
              height: h * 0.01,
            ),
            const Text('Get safe & Fast Ride With Us'),
            SizedBox(
              height:h * 0.05 ,
            ),
            ElevatedButton(
              
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),shape: 
              MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              minimumSize: MaterialStateProperty.all(Size(w * 0.45, h * 0.05))
              ),
              onPressed: (){
                onGetstartedPressed(context);
              }, 
              child: const Text('Get Started',style: TextStyle(color: Colors.white),)
              )
          ],
        ),
      ),
    );
  }

  void onGetstartedPressed(BuildContext context) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setBool('firstTime', false);
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
  }
}