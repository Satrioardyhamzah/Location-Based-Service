import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pelayanankesehatan/mapspage/welcomepage.dart';
import 'package:pelayanankesehatan/onboarding/onboarding.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';


class MapsPage4 extends StatefulWidget {
  @override
  MapsPage4State createState() => MapsPage4State();
}

class MapsPage4State extends State<MapsPage4> {
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
                  "https://goalkes-images.s3-ap-southeast-1.amazonaws.com/pharmacies/Jj5ujivZVgt6ZiS2UmDX6Lp3TL8ufBrOhqkGe15S.jpg",
                  -6.351814821761767, 106.88298031880935,"Apotek Bayu Cibubur"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipNa7FWYBxHKvfrrXe4O9vERrXXHrf4LhKoD42sU=w300-h300-k-no-p",
                  -6.346774215171436, 106.87365649527901,"Rakyat Anda Pharmacy"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.tokopedia.net/img/cache/215-square/shops-1/2016/9/8/1430195/1430195_48c35273-d8a7-417d-881d-606a38b2a3bf.jpg",
                  -6.369647043202507, 106.95681339527921,"Century"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://goalkes-images.s3-ap-southeast-1.amazonaws.com/pharmacies/V7ZSnVXBmpvv0j8iWqw7xtB9hxJar4iVkJHsoemY.jpg",
                  -6.369928467640307, 106.88763112411424,"Apotek Fido Centra Medika"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipMQAhs8gzl3ITUg4vusOMvv0LB_-289Diet0FAi=w426-h240-k-no",
                  -6.34136835131593, 106.87390499527895,"Apotek Gracia Farma"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/6425/6425016.png",
                  -6.346604504395879, 106.87304556644386,"Apotek Indomart Lapanngan Tembak"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://d1yc6vwxvprgjf.cloudfront.net/id/gallery_images/medium/1436479416/2149811?1436479416",
                  -6.3595983308169854, 106.88273380877382,"Apotek Endah Farma"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://bintaro.co.id/v2/wp-content/uploads/2019/05/Apotek-Generik..jpg",
                  -6.360241491235256, 106.88344626644404,"Apotek Generik"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/6425/6425016.png",
                  -6.352894841828736, 106.8811040817843,"Toko Obat Zalfa"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/6425/6425016.png",
                  -6.344682225550958, 106.8729493664439,"Toko Obat Dedy"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "data:image/jpeg;base64,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",
                  -6.363691566351335, 106.8846783952792,"Apotek Sumber Sehat"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/6425/6425016.png",
                  -6.363883193626198, 106.88593763760899,"Toko Obat Adhira"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/6425/6425016.png",
                  -6.3453463781031125, 106.87248566644398,"Toko Obat Sinar Jaya"),
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
          bayu1Marker,rakyat1Marker,century1Marker,fido1Marker,gracia1Marker,indomart1Marker,endah1Marker,generik1Marker,zalfa1Marker,dedy1Marker,sumber1Marker,adhira1Marker,sinar1Marker,bayuMarker,rakyatMarker,centuryMarker,fidoMarker,graciaMarker,indomartMarker,endahMarker,generikMarker,zalfaMarker,dedyMarker,sumberMarker,adhiraMarker,sinarMarker,
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

Marker bayuMarker = Marker(
  markerId: MarkerId('bayu'),
  position: LatLng(-6.351814821761767, 106.88298031880935),
  infoWindow: InfoWindow(title: 'Apotek Bayu Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker rakyatMarker = Marker(
  markerId: MarkerId('rakyat'),
  position: LatLng(-6.346774215171436, 106.87365649527901),
  infoWindow: InfoWindow(title: 'Rakyat Anda Pharmacy'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker centuryMarker = Marker(
  markerId: MarkerId('century'),
  position: LatLng(-6.369647043202507, 106.95681339527921),
  infoWindow: InfoWindow(title: 'Century'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker fidoMarker = Marker(
  markerId: MarkerId('fido'),
  position: LatLng(-6.369928467640307, 106.88763112411424),
  infoWindow: InfoWindow(title: 'Apotek Fido Centra Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker graciaMarker = Marker(
  markerId: MarkerId('gracia'),
  position: LatLng(-6.34136835131593, 106.87390499527895),
  infoWindow: InfoWindow(title: 'Apotek Gracia Farma'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker indomartMarker = Marker(
  markerId: MarkerId('indomart'),
  position: LatLng(-6.346604504395879, 106.87304556644386),
  infoWindow: InfoWindow(title: 'Apotek Indomart Lapangan Tembak'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker endahMarker = Marker(
  markerId: MarkerId('endah'),
  position: LatLng(-6.3595983308169854, 106.88273380877382),
  infoWindow: InfoWindow(title: 'Apotek Endah Farma'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker generikMarker = Marker(
  markerId: MarkerId('generik'),
  position: LatLng(-6.360241491235256, 106.88344626644404),
  infoWindow: InfoWindow(title: 'Apotek Generik'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker zalfaMarker = Marker(
  markerId: MarkerId('zalfa'),
  position: LatLng(-6.352894841828736, 106.8811040817843),
  infoWindow: InfoWindow(title: 'Toko Obat Zalfa'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker dedyMarker = Marker(
  markerId: MarkerId('dedy'),
  position: LatLng(-6.344682225550958, 106.8729493664439),
  infoWindow: InfoWindow(title: 'Toko Obat Dedy'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker sumberMarker = Marker(
  markerId: MarkerId('sumber'),
  position: LatLng(-6.363691566351335, 106.8846783952792),
  infoWindow: InfoWindow(title: 'Apotek Sumber Sehat'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker adhiraMarker = Marker(
  markerId: MarkerId('adhira'),
  position: LatLng(-6.363883193626198, 106.88593763760899),
  infoWindow: InfoWindow(title: 'Toko Obat Adhira'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker sinarMarker = Marker(
  markerId: MarkerId('sinar'),
  position: LatLng(-6.3453463781031125, 106.87248566644398),
  infoWindow: InfoWindow(title: 'Toko Obat Sinar Jaya'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);



//Cibubur Marker

Marker bayu1Marker = Marker(
  markerId: MarkerId('bayu1'),
  position: LatLng(-6.351814821761767, 106.88298031880935),
  infoWindow: InfoWindow(title: 'Apotek Bayu Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker rakyat1Marker = Marker(
  markerId: MarkerId('rakyat1'),
  position: LatLng(-6.346774215171436, 106.87365649527901),
  infoWindow: InfoWindow(title: 'Rakyat Anda Pharmacy'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker century1Marker = Marker(
  markerId: MarkerId('century1'),
  position: LatLng(-6.369647043202507, 106.95681339527921),
  infoWindow: InfoWindow(title: 'Century'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker fido1Marker = Marker(
  markerId: MarkerId('fido1'),
  position: LatLng(-6.369928467640307, 106.88763112411424),
  infoWindow: InfoWindow(title: 'Apotek Fido Centra Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker gracia1Marker = Marker(
  markerId: MarkerId('gracia1'),
  position: LatLng(-6.34136835131593, 106.87390499527895),
  infoWindow: InfoWindow(title: 'Apotek Gracia Farma'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker indomart1Marker = Marker(
  markerId: MarkerId('indomart1'),
  position: LatLng(-6.346604504395879, 106.87304556644386),
  infoWindow: InfoWindow(title: 'Apotek Indomart Lapangan Tembak'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker endah1Marker = Marker(
  markerId: MarkerId('endah1'),
  position: LatLng(-6.3595983308169854, 106.88273380877382),
  infoWindow: InfoWindow(title: 'Apotek Endah Farma'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker generik1Marker = Marker(
  markerId: MarkerId('generik1'),
  position: LatLng(-6.360241491235256, 106.88344626644404),
  infoWindow: InfoWindow(title: 'Apotek Generik'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker zalfa1Marker = Marker(
  markerId: MarkerId('zalfa1'),
  position: LatLng(-6.352894841828736, 106.8811040817843),
  infoWindow: InfoWindow(title: 'Toko Obat Zalfa'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker dedy1Marker = Marker(
  markerId: MarkerId('dedy1'),
  position: LatLng(-6.344682225550958, 106.8729493664439),
  infoWindow: InfoWindow(title: 'Toko Obat Dedy'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker sumber1Marker = Marker(
  markerId: MarkerId('sumber1'),
  position: LatLng(-6.363691566351335, 106.8846783952792),
  infoWindow: InfoWindow(title: 'Apotek Sumber Sehat'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker adhira1Marker = Marker(
  markerId: MarkerId('adhira1'),
  position: LatLng(-6.363883193626198, 106.88593763760899),
  infoWindow: InfoWindow(title: 'Toko Obat Adhira'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker sinar1Marker = Marker(
  markerId: MarkerId('sinar1'),
  position: LatLng(-6.3453463781031125, 106.87248566644398),
  infoWindow: InfoWindow(title: 'Toko Obat Sinar Jaya'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
