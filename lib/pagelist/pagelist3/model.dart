
class tampilan {
  final String name;
  final String shortDesc;
  final String desc;
  final String image;
  final String url_launcher;
  final String url_launcher1;
  final int rate;

  tampilan({
    required this.name,
    required this.shortDesc,
    required this.desc,
    required this.image,
    required this.url_launcher,
    required this.url_launcher1,
    required this.rate,
  });
}

List<tampilan> menu = [
  tampilan(
    name: "Praktek Dokter Umum Wijalidi",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Praktek Dokter Umum Wijalidi adalah sebuah praktek dokter yang berlokasi di Jl. Moh. Aminudin, RT.3/RW.14, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/dokter.png",
    url_launcher: "https://maps.app.goo.gl/ZP4CC4hZhqcGTsAY6",
    rate: 0,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "Praktek dokter Soraya Simamora",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Praktek dokter Soraya Simamora adalah sebuah prakter dokter yang berlokasi di Jl. Radar Auri No.99, RT.7/RW.14, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/dokter2.png",
    url_launcher: "https://maps.app.goo.gl/psoBiSEeu24Do2858",
    rate: 0,
    url_launcher1:"tel:0852-6712-3454",
  ),
  tampilan(
    name: "Prakter Dokter Chris Wiyanti",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Prakter Dokter Chris Wiyanti adalah praktek dokter yang berlokasi di Jl. Taruna Jaya No.7, RT.7/RW.5, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/dokter2.png",
    url_launcher: "https://maps.app.goo.gl/TUBwn6c9AeDk4A1j8",
    rate: 0,
    url_launcher1:"tel:0817-9820-295",
  ),
  tampilan(
    name: "Prakter Dokter H Asmadi Chaidir",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Prakter Dokter H Asmadi Chaidir adalah praktek dokter yang berlokasi di Jl. Cibubur II No.7, RT.7/RW.2, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/asmadi1.jpg",
    url_launcher: "https://maps.app.goo.gl/jgtTtPQr3F4ZZWP89",
    rate: 5,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "Prakter Dokter Kurnia",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Prakter Dokter Kurnia adalah praktek dokter yang berlokasi di jl. lengkuas KPAD Ciracas Cibubur Jakarta Timur, RT.1/RW.7, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/dokter.png",
    url_launcher: "https://maps.app.goo.gl/JQfs1hf9qKLrLuzG6",
    rate: 0,
    url_launcher1:"tel:0812-1968-2277",
  ),
  tampilan(
    name: "Prakter Dokter Trisnaningsih Soedarto Dr Ny",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Prakter Dokter Trisnaningsih Soedarto Dr Ny adalah praktek dokter yang berlokasi di Jl. Welirang No.3, RT.3/RW.11, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/dokter2.png",
    url_launcher: "https://maps.app.goo.gl/v82JJacTPN2SdZXv9",
    rate: 0,
    url_launcher1:"tel:(021) 8716827",
  ),
  tampilan(
    name: "Praktek Dokter Gigi Spesialis Dwiyanti",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Praktek Dokter Gigi Spesialis Dwiyanti adalah praktek dokter yang berlokasi di Jl. Lap. Tembak No.1, RT.3/RW.1, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/dds1.jpg",
    url_launcher: "https://maps.app.goo.gl/Zyw2iGNDsQLARyR98",
    rate: 4,
    url_launcher1:"tel: (021) 8704880",
  ),
];
