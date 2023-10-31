import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pelayanankesehatan/mapspage/welcomepage.dart';
import 'package:pelayanankesehatan/onboarding/onboarding.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';


class MapsPage2 extends StatefulWidget {
  @override
  MapsPage2State createState() => MapsPage2State();
}

class MapsPage2State extends State<MapsPage2> {
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
                  "https://lh3.googleusercontent.com/p/AF1QipNIiJb69BiqF6Ny0PMXAR3-OAFKNgz74eDfopYp=s1600-w400",
                  -6.348021115325079, 106.87639075294918,"Klinik Prima Husada"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/602552_15-4-2021_17-49-42.webp",
                  -6.344865930501781, 106.87129004402571,"Klinik Yadika Cibubur"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cms.sehatq.com/cdn-cgi/image/f=auto/public/img/hospital_thumb/klinik-pratama-setia-rumanda-HCFC00000202.jpg",
                  -6.351615260051717, 106.88640799527901,"Klinik Setia Pratama Rumanda"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3028/3028573.png",
                  -6.365609974622882, 106.88591959446295,"Klinik Taruna Jaya"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://damessa.id/wp-content/uploads/2022/06/ARS_7205-scaled-e1663393486362.jpg",
                  -6.35365589014942, 106.96526409527908,"Damessa Klinik Gigi - Kota Wisata Cibubur"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipPA3k20zfEP5K6qtwECpIbDwen9HYcjR2I3fuah=w1440-h810-k-no",
                  -6.352063438016922, 106.886380695279,"Klinik Mata Cibubur Medika"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3028/3028573.png",
                  -6.367307465894912, 106.89194949527919,"Klinik Mitra Ria Husada"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn1-production-images-kly.akamaized.net/WRt03bt8AMbzN6bq9Kh8UZ7QtEc=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/656087/original/kimiafarma-140110b.jpg",
                  -6.3919593722035035, 106.95734145294959,"Apotek & Klinik Kimia Farma"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cms.sehatq.com/cdn-cgi/image/f=auto/public/img/hospital_thumb/bina-husada-bhakti-HCFC00000436.jpg",
                  -6.361415428654965, 106.88804999527905,"Klinik Bhakti Husada"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3028/3028573.png",
                  -6.346988861879821, 106.87342852683987,"Klinik Umum Ar-Rahim"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.malkelapagading.com/tenant/ZAP-Clinicfoto3.jpg",
                  -6.363161140767385, 106.88639400877385,"Zap Clinic - Cibubur Junction"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/320479_27-4-2021_15-46-16.jpeg",
                  -6.346864789030876, 106.86696956828963,"Klinik Pratama Citra Medika"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn-icons-png.flaticon.com/512/3028/3028573.png",
                  -6.3521443105293125, 106.88560534033472,"Rumat Cibubur - Spesialis Luka Diabetes"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://media.licdn.com/dms/image/C510BAQGQZ4QvmPA3Kw/company-logo_200_200/0/1578381657700?e=2147483647&v=beta&t=U64XijTkyYQZtSc92KoUMlaEPWL_PNRmPP15HKDodX4",
                  -6.3697804920139145, 106.8879210529494,"Harmony Smiles Dental Clinic Cibubur"),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://goalkes-images.s3-ap-southeast-1.amazonaws.com/pharmacies/i2eB47ngDWH9WtmutpCpnWD4NmSs1Mwv6uf09rlt.jpg",
                  -6.349742537442328, 106.89468479527902,"Klinik Koronka Medika"),
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
          prima1Marker,yadika1Marker,setia1Marker,taruna1Marker,damessa1Marker,mata1Marker,mitra1Marker,kimia1Marker,bhakti1Marker,rahim1Marker,zap1Marker,pratama1Marker,rumat1Marker,harmony1Marker,koronka1Marker,primaMarker,yadikaMarker,setiaMarker,tarunaMarker,damessaMarker,mataMarker,mitraMarker,kimiaMarker,bhaktiMarker,rahimMarker,zapMarker,pratamaMarker,rumatMarker,harmonyMarker,koronkaMarker
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

Marker primaMarker = Marker(
  markerId: MarkerId('prima husada'),
  position: LatLng(-6.348021115325079, 106.87639075294918),
  infoWindow: InfoWindow(title: 'Klinik Prima Husada'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker yadikaMarker = Marker(
  markerId: MarkerId('yadika'),
  position: LatLng(-6.344865930501781, 106.87129004402571),
  infoWindow: InfoWindow(title: 'Klinik Yadika Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker setiaMarker = Marker(
  markerId: MarkerId('setia pratama'),
  position: LatLng(-6.351615260051717, 106.88640799527901),
  infoWindow: InfoWindow(title: 'Klinik Setia Pratama Rumanda'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker tarunaMarker = Marker(
  markerId: MarkerId('taruna'),
  position: LatLng(-6.365609974622882, 106.88591959446295),
  infoWindow: InfoWindow(title: 'Klinik Taruna Jaya'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker damessaMarker = Marker(
  markerId: MarkerId('damessa'),
  position: LatLng(-6.35365589014942, 106.96526409527908),
  infoWindow: InfoWindow(title: 'Damessa Klinik Gigi - Kota Wisata Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker mataMarker = Marker(
  markerId: MarkerId('mata'),
  position: LatLng(-6.352063438016922, 106.886380695279),
  infoWindow: InfoWindow(title: 'Klinik Mata Cibubur Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker mitraMarker = Marker(
  markerId: MarkerId('mitra'),
  position: LatLng(-6.367307465894912, 106.89194949527919),
  infoWindow: InfoWindow(title: 'Klinik Mitra Ria Husada'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker kimiaMarker = Marker(
  markerId: MarkerId('kimia'),
  position: LatLng(-6.3919593722035035, 106.95734145294959),
  infoWindow: InfoWindow(title: 'Apotek & Klinik Kimia Farma'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker bhaktiMarker = Marker(
  markerId: MarkerId('bhakti'),
  position: LatLng(-6.361415428654965, 106.88804999527905),
  infoWindow: InfoWindow(title: 'Klinik Bhakti Husada'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker rahimMarker = Marker(
  markerId: MarkerId('rahim'),
  position: LatLng(-6.346988861879821, 106.87342852683987),
  infoWindow: InfoWindow(title: 'Klinik Umum Ar-Rahim'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker zapMarker = Marker(
  markerId: MarkerId('zap'),
  position: LatLng(-6.363161140767385, 106.88639400877385),
  infoWindow: InfoWindow(title: 'Zap Clinic - Cibubur Junction'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker pratamaMarker = Marker(
  markerId: MarkerId('pratama'),
  position: LatLng(-6.346864789030876, 106.86696956828963),
  infoWindow: InfoWindow(title: 'Klinik Pratama Citra Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker rumatMarker = Marker(
  markerId: MarkerId('rumat'),
  position: LatLng(-6.3521443105293125, 106.88560534033472),
  infoWindow: InfoWindow(title: 'Rumat Cibubur - Spesialis Luka Diabetes'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker harmonyMarker = Marker(
  markerId: MarkerId('harmony'),
  position: LatLng(-6.3697804920139145, 106.8879210529494),
  infoWindow: InfoWindow(title: 'Harmony Smiles Dental Clinic Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker koronkaMarker = Marker(
  markerId: MarkerId('koronka'),
  position: LatLng(-6.349742537442328, 106.89468479527902),
  infoWindow: InfoWindow(title: 'Klinik Koronka Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
//New York Marker

Marker prima1Marker = Marker(
  markerId: MarkerId('prima husada1'),
  position: LatLng(-6.347903821723849, 106.87642293945447),
  infoWindow: InfoWindow(title: 'Klinik Prima Husada'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker yadika1Marker = Marker(
  markerId: MarkerId('yadika1'),
  position: LatLng(-6.344865930501781, 106.87129004402571),
  infoWindow: InfoWindow(title: 'Klinik Yadika Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker setia1Marker = Marker(
  markerId: MarkerId('setia1'),
  position: LatLng(-6.351615260051717, 106.88640799527901),
  infoWindow: InfoWindow(title: 'Klinik Setia Pratama Rumanda'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker taruna1Marker = Marker(
  markerId: MarkerId('taruna1'),
  position: LatLng(-6.365609974622882, 106.88591959446295),
  infoWindow: InfoWindow(title: 'Klinik Taruna Jaya'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker damessa1Marker = Marker(
  markerId: MarkerId('damessa1'),
  position: LatLng(-6.35365589014942, 106.96526409527908),
  infoWindow: InfoWindow(title: 'Klinik Damessa Klinik Gigi - Kota Wisata Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker mata1Marker = Marker(
  markerId: MarkerId('mata1'),
  position: LatLng(-6.352063438016922, 106.886380695279),
  infoWindow: InfoWindow(title: 'Klinik Mata Cibubur Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker mitra1Marker = Marker(
  markerId: MarkerId('mitra1'),
  position: LatLng(-6.36737144181212, 106.89197095294939),
  infoWindow: InfoWindow(title: 'Klinik Mitra Ria Husada'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker kimia1Marker = Marker(
  markerId: MarkerId('kimia1'),
  position: LatLng(-6.3919593722035035, 106.95734145294959),
  infoWindow: InfoWindow(title: 'Apotek & Klinik Kimia Farma'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker bhakti1Marker = Marker(
  markerId: MarkerId('bhakti1'),
  position: LatLng(-6.361415428654965, 106.88804999527905),
  infoWindow: InfoWindow(title: 'Klinik Bhakti Husada'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker rahim1Marker = Marker(
  markerId: MarkerId('rahim1'),
  position: LatLng(-6.346988861879821, 106.87342852683987),
  infoWindow: InfoWindow(title: 'Klinik Umum Ar-Rahim'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker zap1Marker = Marker(
  markerId: MarkerId('zap1'),
  position: LatLng(-6.363161140767385, 106.88639400877385),
  infoWindow: InfoWindow(title: 'Zap Clinic - Cibubur Junction'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker pratama1Marker = Marker(
  markerId: MarkerId('pratama1'),
  position: LatLng(-6.346864789030876, 106.86696956828963),
  infoWindow: InfoWindow(title: 'Klinik Pratama Citra Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker rumat1Marker = Marker(
  markerId: MarkerId('rumat1'),
  position: LatLng(-6.3521443105293125, 106.88560534033472),
  infoWindow: InfoWindow(title: 'Rumat Cibubur - Spesialis Luka Diabetes'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker harmony1Marker = Marker(
  markerId: MarkerId('harmony1'),
  position: LatLng(-6.3697804920139145, 106.8879210529494),
  infoWindow: InfoWindow(title: 'Harmony Smiles Dental Clinic Cibubur'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker koronka1Marker = Marker(
  markerId: MarkerId('koronka1'),
  position: LatLng(-6.349742537442328, 106.89468479527902),
  infoWindow: InfoWindow(title: 'Klinik Koronka Medika'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
