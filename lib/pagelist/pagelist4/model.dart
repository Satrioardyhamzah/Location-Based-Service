class tampilan {
  final String name;
  final String shortDesc;
  final String desc;
  final String image;
  final String image1;
  final String image2;
  final String url_launcher;
  final String url_launcher1;
  final int rate;

  tampilan({
    required this.name,
    required this.shortDesc,
    required this.desc,
    required this.image,
    required this.image1,
    required this.image2,
    required this.url_launcher,
    required this.url_launcher1,
    required this.rate,
  });
}

List<tampilan> menu = [
  tampilan(
    name: "Apotik Bayu Cibubur",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotik Bayu Cibubur adalah Apotik yang berlokasi di Ruko Cibubur Indah, Jl. Lap. Tembak No.6, RT.2/RW.11, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/bayu2.jpg",
    image1: "assets/bayu3.jpg",
    image2: "assets/bayu1.jpg",
    url_launcher:"https://maps.app.goo.gl/bm78qRvTPTFPLcF18",
    rate: 4,
    url_launcher1:"tel:(021) 8719277",
  ),
  tampilan(
    name: "Rakyat Anda Pharmacy",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Rakyat Anda Pharmacy adalah apotik yang berlokasi di Jalan Raya Lapangan Tembak Blok Mesjid 4 No.17, RT.12/RW.2, Cibubur, Ciracas, RT.3/RW.1, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/rakyat2.jpg",
    image1: "assets/rakyat1.jpg",
    image2: "assets/rakyat3.jpg",
    url_launcher:"https://maps.app.goo.gl/zMq8EqLibVe4cNax7",
    rate: 4,
    url_launcher1:"tel:(021) 87707014",
  ),
  tampilan(
    name: "Century",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotik Century adalah apotik modern yang telah berpengalaman selama lebih dari 20 tahun.\nKini apotek Century telah menyediakan platform untuk pembelanjaan produk-produk Kesehatan dan Kecantikan secara online yaitu melalui aplikasi Century Marketplace",
    image: "assets/century2.jpg",
    image1: "assets/century3.jpg",
    image2: "assets/century4.jpg",
    url_launcher:"https://maps.app.goo.gl/r5CTGnw2CJN5F3d8A",
    rate: 5,
    url_launcher1:"tel:(021) 84932884",
  ),
  tampilan(
    name: "Apotik Fido Centra Medika",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotik Fido Centra Medika adalah apotik yang berlokasi di 8 Village Apartemen, Jl. Radar Auri No.1, RT.8/RW.14, Cibubur, Kec. Cimanggis, Kota Depok, Jawa Barat ",
    image: "assets/fido1.jpg",
    image1: "assets/fido2.jpg",
    image2: "assets/drugstore.png",
    url_launcher:"https://maps.app.goo.gl/4JFjau7ZrueQRqbW8",
    rate: 5,
    url_launcher1:"tel:(021) 87754055",
  ),
  tampilan(
    name: "Apotek Gracia Farma",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotek Gracia Farma adalah apotek yang berlokasi di Gg. Misneng II No.12, RT.10/RW.12, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/gracia1.jpg",
    image1: "assets/gracia2.jpg",
    image2: "assets/gracia3.jpg",
    url_launcher:"https://maps.app.goo.gl/7UVgJDhFw46NxtUM9",
    rate: 5,
    url_launcher1:"tel:0812-6514-4455",
  ),
  tampilan(
    name: "Apotek Indomart Lapangan Tembak",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotek Indomart Lapangan Tembak adalah apotek yang berlokasi di Lapangan Tembak (cibubur Raya), RT.2/RW.11, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/drugstore.png",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher:"https://maps.app.goo.gl/yBtNKRej8TABJW588",
    rate: 0,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "Apotek Endah Farma",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotek Endah Farma adalah apotek yang berlokasi di Jl. Taruna Jaya No.88a, RT.1/RW.14, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta ",
    image: "assets/endah1.jpg",
    image1: "assets/endah2.jpg",
    image2: "assets/endah3.jpg",
    url_launcher:"https://maps.app.goo.gl/JXCcg8n2WHzPLBxc9",
    rate: 5,
    url_launcher1:"tel:0813-2094-8962",
  ),
  tampilan(
    name: "Apotek Generik",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotek Generik adalah apotek yang berlokasi di Jl. Taruna Jaya No.6, RT.7/RW.5, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/generik1.jpg",
    image1: "assets/generik2.jpg",
    image2: "assets/generik3.jpg",
    url_launcher:"https://maps.app.goo.gl/zy3hN3s87t8cjirn7",
    rate: 0,
    url_launcher1:"tel:(021) 29616727",
  ),
  tampilan(
    name: "Toko Obat Zalfa",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Toko Obat Zalfa adalah apotek yang berlokasi di Jl. Cibubur VII, RT.4/RW.9, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/drugstore.png",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher:"https://maps.app.goo.gl/j1PaDrXgPiEt51cw8",
    rate: 0,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "Toko Obat Dedy",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Toko Obat Dedy adalah apotek yang berlokas di Pd. Pasar Jaya Cibubur Lantai Dasar A.L00. AKS, No. 005, Jl. Lap. Tembak, RT.13/RW.1, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta ",
    image: "assets/drugstore.png",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher:"https://maps.app.goo.gl/BT29FNZeB48etyuB6",
    rate: 0,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "kimia farma 450 (sar)",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "kimia farma 450 (sar) adalah apotek yang berlokasi di Jl. Lap. Tembak No.14p, RT.1/RW.5, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/farma1.jpg",
    image1: "assets/farma2.jpg",
    image2: "assets/farma3.jpg",
    url_launcher:"https://maps.app.goo.gl/WHEyBg5LrXZ7FHjq5",
    rate: 3,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "Apotek Sumber Sehat",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Apotek Sumber Sehat adalah apotek yang berlokasi di Jl. Taruna Jaya No.8, RT.4/RW.13, Cibubur, Ciracas, East Jakarta City, Jakarta ",
    image: "assets/sumber2.jpg",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher:"https://maps.app.goo.gl/Yt9WLb9vxtMJHukQ6",
    rate: 0,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "Toko Obat Adhira",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Toko Obat Adhira adalah apotek yang berlokasi di Jl. Taruna Jaya No.14, RT.5/RW.13, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/adhira1.jpg",
    image1: "assets/adhira2.jpg",
    image2: "assets/drugstore.png",
    url_launcher:"https://maps.app.goo.gl/rwpZv25HvULDP3eC8",
    rate: 0,
    url_launcher1:"tel:(021) 8729427",
  ),
  tampilan(
    name: "Toko Obat Sinar Jaya",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Toko Obat Sinar Jaya adalah apotek yang berlokasi di PD Pasar Jaya Cibubur,Lt.Dasar AL00 AKS 036, Jl. Lap. Tembak, RT.13/RW.1, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/drugstore.png",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher:"https://maps.app.goo.gl/EdPVVNtmY9BMBC8F9",
    rate: 0,
    url_launcher1:"tel:",
  ),
];
