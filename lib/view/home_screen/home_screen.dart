import 'package:flutter/material.dart';
import 'package:spoider_app/view/track_screen/screen/track_screen.dart';

import '../../domain/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
           CircleAvatar(
            radius: w * 0.18 ,
            backgroundColor: Colors.blue,
            child: const Icon(Icons.done_outline),
           ),
           szdbx,
           const Text('YOUR BOOKING IS CONFIRMED',style: TextStyle(
              fontWeight: FontWeight.bold
           ),),
           szdbx,
           const Text('Tracking ID : VJ54378653'),
           szdbx,
           ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            minimumSize: MaterialStateProperty.all(Size(w * 0.35, h * 0.05))
          ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                 return const TrackScreen();
              }));
            },
             child: const Text('Track',style: TextStyle(
              color: Colors.white
             ),)
             )
            // Icon(Icons.check_circle,color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}