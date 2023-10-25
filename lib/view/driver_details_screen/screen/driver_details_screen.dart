import 'package:flutter/material.dart';

class DriverSetailsScreen extends StatelessWidget {
  const DriverSetailsScreen({super.key});

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
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
           icon: const Icon(Icons.arrow_back)
           ),),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Image.asset('lib/assets/7ca82f32-6f6e-4576-b7ce-2e39daa76620.jpeg',fit: BoxFit.cover,),
              ),
              
            ),
              Positioned(
                bottom: h * 0.06,
                right: w * 0.05,
                child: InkWell(
                onTap: (){
                displayBottomSheet(context,w,h);
                },
                 child: const CircleAvatar(
                  radius: 40,
                    backgroundImage: AssetImage('lib/assets/driverimage.webp')
                   ),
                           ),
              )
               
          ],
        ),
    );
  }
 displayBottomSheet(BuildContext context,double w,double h){
  return showModalBottomSheet(
    context: context,
     builder: (context) => Container(
      width: double.infinity ,
      height: h * 0.3,
      child:  Column(
        children: [
          SizedBox(
            height: h * 0.1,
            child: Stack(
              children: [
                SizedBox(
                   height: h * 0.08,
                  width: w * 0.7,
                  child: const Card(
                   child: Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('On Trip',style: TextStyle(color: Colors.blue),),
                        Row(
                          children: [
                            Icon(Icons.emergency,size: 12,color: Colors.red,),
                            Text('Emergency',style: TextStyle(color: Colors.red),),
                          ],
                        )
                      ],
                     ),
                   ),
                  ),
                ),
                Positioned(
                  top: h * 0.05,
                  right: w * 0.1,
                  left: w * 0.1,
                  child: const CircleAvatar(backgroundImage: AssetImage('lib/assets/driverimage.webp',) )
                  )
              ],
            ),
          ),
          const Text('Ravi'),
          const Text('TN 48 B 87654',style: TextStyle(color: Colors.grey),),
          const Text('94456782358',style: TextStyle(color: Colors.grey),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(Colors.grey)
                ),
                onPressed: (){},
                 child: Text('share',style: TextStyle(color: Colors.white))
                 ),
                 ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                  onPressed: (){},
                   child: Text('End Ride',style: TextStyle(color: Colors.white),)
                   )
            ],
          )
        ],
      ),
     )
     );
 }
   
}