import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapHardorm extends StatefulWidget {
  @override
  _GoogleMapHardormState createState() => _GoogleMapHardormState();
}

class _GoogleMapHardormState extends State<GoogleMapHardorm> {
  GoogleMapController _controller;

  final CameraPosition _initialPosition = CameraPosition(target: LatLng(13.893093326129325, 100.43672826043094),zoom: 11.0,);

  final List<Marker> markers = [];

  addMarker(cordinate){

    int id = Random().nextInt(100);

    setState(() {
      markers.add(Marker(position: cordinate, markerId: MarkerId(id.toString()),
       infoWindow: InfoWindow(
          title: 'This is a Title',
          snippet: 'This is a snippet',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
      );
    });
  }


  
   MapType _currentMapType = MapType.normal;
    _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    }); 
  }




  Widget button(Function function, IconData icon) {
    return FloatingActionButton(
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      backgroundColor: Colors.blue,
      child: Icon(
        icon,
        size: 36.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: <Widget>[
            GoogleMap(
            zoomGesturesEnabled: true,
           
  tiltGesturesEnabled: false,
  onCameraMove:(CameraPosition cameraPosition){
     print(cameraPosition.zoom);
  },
            initialCameraPosition: _initialPosition,
            mapType: _currentMapType,
            onMapCreated: 
            (controller){
              setState(() {
                _controller = controller;
              });
            },
            markers: markers.toSet(),
            onTap: (cordinate){
              _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
              addMarker(cordinate);
            },
          ),
           Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    button(_onMapTypeButtonPressed, Icons.map),
                    SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
           ),
          ],
               
        ),
      
    );
  }
}
  