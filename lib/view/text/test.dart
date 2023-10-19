// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyLocationWidget(),
//     );
//   }
// }

// class MyLocationWidget extends StatefulWidget {
//   @override
//   _MyLocationWidgetState createState() => _MyLocationWidgetState();
// }

// class _MyLocationWidgetState extends State<MyLocationWidget> {
//   GoogleMapController mapController;
//   StreamSubscription<Position> locationStream;
//   LatLng currentLocation;

//   @override
//   void initState() {
//     super.initState();
//     _startLocationUpdates();
//   }

//   @override
//   void dispose() {
//     locationStream.cancel();
//     super.dispose();
//   }

//   void _startLocationUpdates() {
//     locationStream = Geolocator.getPositionStream(
//       desiredAccuracy: LocationAccuracy.high,
//       distanceFilter: 10, // Update when the user moves at least 10 meters
//     ).listen((Position position) {
//       setState(() {
//         currentLocation = LatLng(position.latitude, position.longitude);
//       });

//       if (mapController != null) {
//         mapController.animateCamera(
//           CameraUpdate.newLatLng(currentLocation),
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Location Example'),
//       ),
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           setState(() {
//             mapController = controller;
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: LatLng(0.0, 0.0), // Initial map center coordinates
//           zoom: 15.0, // Initial zoom level
//         ),
//         markers: currentLocation == null
//             ? {}
//             : {
//                 Marker(
//                   markerId: MarkerId('currentLocation'),
//                   position: currentLocation,
//                 ),
//               },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _startLocationUpdates();
//         },
//         child: Icon(Icons.location_searching),
//       ),
//     );
//   }
// }
