import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pelayanankesehatan/mapspage/welcomepage.dart';
import 'package:pelayanankesehatan/onboarding/onboarding.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';


class MapsPage3 extends StatefulWidget {
  @override
  MapsPage3State createState() => MapsPage3State();
}

class MapsPage3State extends State<MapsPage3> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }
    double zoomVal=5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBoardingPage3(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
        title: Text("Cibubur"),
        
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

 Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchMinus,color:Color.fromARGB(255, 187, 76, 246)),
            onPressed: () {
              zoomVal--;
             _minus( zoomVal);
            }),
    );
 }
 Widget _zoomplusfunction() {
   
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchPlus,color:Color.fromARGB(255, 187, 76, 246)),
            onPressed: () {
              zoomVal++;
              _plus(zoomVal);
            }),
    );
 }

 Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(-6.356074224222092, 106.88109969284288), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(-6.356074224222092, 106.88109969284288), zoom: zoomVal)));
  }

  
  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3952/3952988.png",
                  -6.36583151752313, 106.88647650877388,"Praktek Dokter Umum Wijalidi"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3270/3270967.png",
                  -6.369744005001528, 106.88370801061954,"Praktek Dokter Soraya Simamora"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3270/3270967.png",
                  -6.360316802858068, 106.88378839527911,"Praktek Dokter Chris Wiyanti"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3952/3952988.png",
                  -6.348797162060649, 106.87484266916974,"Praktek Dokter H Asmadi Chaidir"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3952/3952988.png",
                  -6.363086703487514, 106.89039727993874,"Praktek Dokter Kurnia"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3270/3270967.png",
                  -6.354070738514084, 106.88605633760882,"Praktek DOkter Trisnaningsi Soedarto"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3270/3270967.png",
                  -6.346794841329453, 106.87381576644395,"Praktek Dokter Gigi Spesialis Dwiyanti"),
            ),
           
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat,double long,String hospitalName) {
    return  GestureDetector(
        onTap: () {
          _gotoLocation(lat,long);
        },
        child:Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 180,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(_image),
                            ),
                          ),),
                          Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: myDetailsContainer1(hospitalName),
                          ),
                        ),

                      ],)
                ),
              ),
            ),
    );
  }

  Widget myDetailsContainer1(String hospitalName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(hospitalName,
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        
      ],
    );
  }
  
  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:  CameraPosition(target: LatLng(-6.373519, 106.875984), zoom: 13),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          wijalidi1Marker,soraya1Marker,chris1Marker,asmadi1Marker,kurnia1Marker,trisna1Marker,dwi1Marker,wijalidiMarker,sorayaMarker,chrisMarker,asmadiMarker,kurniaMarker,trisnaMarker,dwiMarker,
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat,double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 15,tilt: 50.0,
      bearing: 45.0,)));
  }
}

Marker wijalidiMarker = Marker(
  markerId: MarkerId('wijalidi'),
  position: LatLng(-6.36583151752313, 106.88647650877388),
  infoWindow: InfoWindow(title: 'Praktek Dokter Wijalidi'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker sorayaMarker = Marker(
  markerId: MarkerId('soraya'),
  position: LatLng(-6.369744005001528, 106.88370801061954),
  infoWindow: InfoWindow(title: 'Praktek Dokter Soraya Simamora'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker chrisMarker = Marker(
  markerId: MarkerId('chris wiyanti'),
  position: LatLng(-6.360316802858068, 106.88378839527911),
  infoWindow: InfoWindow(title: 'Praktek Dokter Chris Wiyanti'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker asmadiMarker = Marker(
  markerId: MarkerId('asmadi'),
  position: LatLng(-6.348797162060649, 106.87484266916974),
  infoWindow: InfoWindow(title: 'Praktek Dokter H Asmadi Chaidir'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker kurniaMarker = Marker(
  markerId: MarkerId('kurnia'),
  position: LatLng(-6.363086703487514, 106.89039727993874),
  infoWindow: InfoWindow(title: 'Praktek Dokter Kurnia'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker trisnaMarker = Marker(
  markerId: MarkerId('trisna'),
  position: LatLng(-6.354070738514084, 106.88605633760882),
  infoWindow: InfoWindow(title: 'Praktek Dokter Trisnaningsi Soedarto'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker dwiMarker = Marker(
  markerId: MarkerId('dwi'),
  position: LatLng(-6.346794841329453, 106.87381576644395),
  infoWindow: InfoWindow(title: 'Praktek Dokter Gigi Spesialis Dwiyanti'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

//New York Marker

Marker wijalidi1Marker = Marker(
  markerId: MarkerId('wijalidi1'),
  position: LatLng(-6.36583151752313, 106.88647650877388),
  infoWindow: InfoWindow(title: 'Praktek Dokter Umum Wijalidi'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker soraya1Marker = Marker(
  markerId: MarkerId('soraya1'),
  position: LatLng(-6.369744005001528, 106.88370801061954),
  infoWindow: InfoWindow(title: 'Praktek Dokter Soraya Simamora'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker chris1Marker = Marker(
  markerId: MarkerId('chris1'),
  position: LatLng(-6.360316802858068, 106.88378839527911),
  infoWindow: InfoWindow(title: 'Praktek Dokter Chris Wiyanti'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker asmadi1Marker = Marker(
  markerId: MarkerId('asmadi1'),
  position: LatLng(-6.348797162060649, 106.87484266916974),
  infoWindow: InfoWindow(title: 'Praktek Dokter H Asmadi Chaidir'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker kurnia1Marker = Marker(
  markerId: MarkerId('kurnia1'),
  position: LatLng(-6.363086703487514, 106.89039727993874),
  infoWindow: InfoWindow(title: 'Praktek Dokter Kurnia'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker trisna1Marker = Marker(
  markerId: MarkerId('trisna1'),
  position: LatLng(-6.354070738514084, 106.88605633760882),
  infoWindow: InfoWindow(title: 'Praktek Dokter Trisnaningsih Soedarto'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker dwi1Marker = Marker(
  markerId: MarkerId('dwi1'),
  position: LatLng(-6.346794841329453, 106.87381576644395),
  infoWindow: InfoWindow(title: 'Praktek Dokter Gigi Spesialis Dwiyanti'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
