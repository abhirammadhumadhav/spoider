import 'package:flutter/material.dart';
import 'package:spoider_app/view/driver_details_screen/screen/driver_details_screen.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Track Order',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back)),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
               child: Image.asset(
                'lib/assets/7ca82f32-6f6e-4576-b7ce-2e39daa76620.jpeg',fit: BoxFit.cover,
               ),
              ),
            ),
             Positioned(
              bottom: h * 0.01,
              left: 0,
              right: 0,
              child: SizedBox(
                height: h * 0.23,
                child: Card(
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ListTile(
                          leading:const CircleAvatar(backgroundImage: AssetImage('lib/assets/driverimage.webp') ,
                          
                        ),
                        title: const Text('Auto Driver Name',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          subtitle:const Text('Auto Name') ,
                          trailing: Container(
                            width: w * 0.25,
                            height: h * 0.04,
                            decoration: BoxDecoration(
                                 color: Colors.grey,
                                 borderRadius: BorderRadius.circular(10)
                            ),
                           
                            child: const Center(child: Text('TN 48 B 3452',style: TextStyle(fontWeight: FontWeight.bold),)),
                          ),
                                      ),
                      ),
                      Padding(
                       padding: EdgeInsets.only(left: w * 0.1),
                       child: const Row(
                        children: [
                          Text('Pickup Loc :',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('28/Nilambur',style: TextStyle(color: Colors.grey),)
                        ],
                       ),
                     ),
                     Padding(
              
                       padding:  EdgeInsets.only(left: w * 0.1 ),
                       child:  Row(
                        children: [
                          const Text('Drop off Loc :',style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text('Gandipuram Bus stand',style: TextStyle(color: Colors.grey),),
                          SizedBox(width: w * 0.1,),
                          const Text('₹59.00',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                       ),
                     ),
                     Center(
                       child: ElevatedButton(
                      
                        style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          minimumSize: MaterialStateProperty.all(Size(w * 0.55, h * 0.05))
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const DriverSetailsScreen();
                          }));
                        }, 
                        child: const Text('Call Driver',style: TextStyle(color: Colors.white),)
                        ),
                     )
                    ],
                  )
                ),
              ))
          ],
        ),
    );
  }
}