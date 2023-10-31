import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pelayanankesehatan/mapspage/welcomepage.dart';
import 'package:pelayanankesehatan/onboarding/onboarding.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';


class MapsPage extends StatefulWidget {
  @override
  MapsPageState createState() => MapsPageState();
}

class MapsPageState extends State<MapsPage> {
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
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.search),
              onPressed: () {
                //
              }),
        ],
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
                  "https://swamediainc.storage.googleapis.com/swa.co.id/wp-content/uploads/2019/12/02174728/rs-eka-hospital.jpg",
                  -6.384778798704171, 106.95422620877396,"Eka Hospital Cibubur"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://provices.co.id/wp-content/uploads/2020/12/Screenshot_20201218-233418_Maps.jpg",
                  -6.375872743923723, 106.91195869527927,"Permata Cibubur Hospital"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://d12u45ujkpjyvo.cloudfront.net/images/clinic_gallery/full/9_48_1.jpg",
                  -6.375568056246893, 106.91840888178454,"Mitra Keluarga Cibubur"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://static.konsula.com/images/practice/0001002000/0001001119/rumah-sakit-meilia.800x600.jpg",
                  -6.376439231448863, 106.90206162595996,"Meilia Hospital Cibubur"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://goalkes-images.s3-ap-southeast-1.amazonaws.com/hospitals/b7kgkh4RwBAaF7UVXdFKCeCYQ0F0rjctR7Kkjt5d.jpg",
                  -6.368473704712514, 106.89273973760908,"Rumah Sakit Olahraga Nasional"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://i.ytimg.com/vi/1RLXDZknD8s/maxresdefault.jpg",
                  -6.345469632052596, 106.87384063437212,"RSUD Ciracas"),
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
          ekahospital1Marker,permata1Marker,mitra1Marker,meilia1Marker,rsud1Marker,olahraga1Marker,ekahospitalMarker,permataMarker,mitraMarker, meiliaMarker, olahragaMarker, rsudMarker
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

Marker ekahospitalMarker = Marker(
  markerId: MarkerId('eka hospital'),
  position: LatLng(-6.384778798704171, 106.95422620877396),
  infoWindow: InfoWindow(title: 'Eka Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker permataMarker = Marker(
  markerId: MarkerId('permata'),
  position: LatLng(-6.375840756496101, 106.91201233945476),
  infoWindow: InfoWindow(title: 'Permata Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker mitraMarker = Marker(
  markerId: MarkerId('mitra keluarga'),
  position: LatLng(-6.375568056246893, 106.91840888178454),
  infoWindow: InfoWindow(title: 'Mitra Keluarga Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker meiliaMarker = Marker(
  markerId: MarkerId('meilia'),
  position: LatLng(-6.376439231448863, 106.90206162595996),
  infoWindow: InfoWindow(title: 'Meilia Hospital Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker olahragaMarker = Marker(
  markerId: MarkerId('olahraga'),
  position: LatLng(-6.368473704712514, 106.89273973760908),
  infoWindow: InfoWindow(title: 'Rumah Sakit Olahraga Nasional'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker rsudMarker = Marker(
  markerId: MarkerId('rsud'),
  position: LatLng(-6.345426979625808, 106.8738835497125),
  infoWindow: InfoWindow(title: 'RSUD Ciracas'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
//New York Marker

Marker ekahospital1Marker = Marker(
  markerId: MarkerId('eka hospital1'),
  position: LatLng(-6.384778798704171, 106.95422620877396),
  infoWindow: InfoWindow(title: 'Eka Hospital Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker permata1Marker = Marker(
  markerId: MarkerId('permata1'),
  position: LatLng(-6.375840756496101, 106.91201233945476),
  infoWindow: InfoWindow(title: 'Permata Cibubur Hospital'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker mitra1Marker = Marker(
  markerId: MarkerId('mitra1'),
  position: LatLng(-6.375568056246893, 106.91840888178454),
  infoWindow: InfoWindow(title: 'Mitra Keluarga Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker meilia1Marker = Marker(
  markerId: MarkerId('meilia1'),
  position: LatLng(-6.376439231448863, 106.90206162595996),
  infoWindow: InfoWindow(title: 'Meilia Hospital Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker olahraga1Marker = Marker(
  markerId: MarkerId('olahraga1'),
  position: LatLng(-6.368473704712514, 106.89273973760908),
  infoWindow: InfoWindow(title: 'Rumah Sakit Olahraga Nasional'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker rsud1Marker = Marker(
  markerId: MarkerId('rsud1'),
  position: LatLng(-6.34549095826468, 106.87394792272309),
  infoWindow: InfoWindow(title: 'RSUD Ciracas'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);