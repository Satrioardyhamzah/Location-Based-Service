class tampilan {
  final String name;
  final String shortDesc;
  final String desc;
  final String image;
  final String image1;
  final String image2;
  final String image3;
  final String url_launcher;
  final String url_launcher1;
  final String url_launcher2;
  final int rate;

  tampilan({
    required this.name,
    required this.shortDesc,
    required this.desc,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.url_launcher,
    required this.url_launcher1,
    required this.url_launcher2,
    required this.rate,
  });
}

List<tampilan> menu = [
  tampilan(
    name: "Rumah Sakit Eka Hospital",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "RS Eka Cibubur adalah salah satu RS dibawah naungan Eka Hospital Group. Memiliki visi Menjadi Jaringan Penyedia Layanan Kesehatan Terdepan di Asia Pasifik. Dengan Misi Mengutamakan keselamatan dan kenyamanan pasien, Menerapkan standar layanan medis yang terbaik, Menyediakan layanan kesehatan terpadu, Melayani dengan tulus dan sepenuh hati serta Aktif mempromosikan hidup sehat.",
    image: "assets/images/ekahospital.jpg",
    image1: "assets/eka2.jpg",
    image2: "assets/eka.jpg",
    image3: "assets/bed.jpg",
    rate: 3,
    url_launcher: "https://maps.app.goo.gl/QGJ3hGJkXg3HQeMz8",
    url_launcher1: "https://www.ekahospital.com/",
    url_launcher2: "tel:(021) 50855555",
  ),
  tampilan(
    name: "Permata Cibubur Hospital",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Rumah Sakit Permata Cibubur merupakan rumah sakit pertama di kawasan Jatisampurna, Bekasi. Rumah Sakit ini berdiri sejak bulan oktober 2003. Memiliki Visi untuk menjadi rumah sakit terbaik di Bekasi. Dengan misinya memberikan pelayanan rumah sakit yang prima, meningkatkan profesionalisme SDM dan melengkapi sarana prasarana.",
    image: "assets/permata1.jpg",
    image1: "assets/permata4.jpg",
    image2: "assets/permata3.jpg",
    image3: "assets/permata2.jpg",
    rate: 4,
    url_launcher: "https://maps.app.goo.gl/mqbpCHaQ4fdnbM449",
    url_launcher1: "http://rspermatacibubur.com/",
    url_launcher2: "tel:(021) 8458806",
  ),
  tampilan(
    name: "Mitra Keluarga Cibubur",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "RS Mitra Keluarga Cibubur merupakan rumah sakit umum yang berdiri sejak tahun 2011. RS Mitra Keluarga Cibubur menawarkan keunggulan layanan Laparoskopi, Arthroscopy, serta ICU yang berkualitas dan canggih. Selain itu, RS Mitra Keluarga Cibubur juga menawarkan layanan kesehatan lainnya seperti layanan spesialis dan umum serta layanan pendukung lainnya. RS Mitra Keluarga Cibubur telah tersertifikasi olek Komisi Akreditasi Rumah Sakit (KARS) dengan tingkat Paripurna.",
    image: "assets/images/mitra1.jpg",
    image1: "assets/mitra2.jpg",
    image2: "assets/mitra3.jpg",
    image3: "assets/mitra4.jpg",
    rate: 3,
    url_launcher: "https://maps.app.goo.gl/Cw7TruS9mYUHsptx7",
    url_launcher1: "https://www.mitrakeluarga.com/",
    url_launcher2: "tel:(021) 84311771",
  ),
  tampilan(
    name: "Meilia Hospital Cibubur",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Rumah Sakit Meilia merupakan rumah sakit swasta yang menyediakan jasa layanan kesehatan bagi yang terkemuka dibidangnya. Rumah sakit ini memiliki visi yaitu menjadi rumah sakit komunitas dan rujukan bagi instansi kesehatan di wilayah sekitarnya dengan standar nasional. Dan dengan misi untuk meningkatkan kompetensi sumber daya manusia secara berkesinambungan dan meningkatkan akuntabilitas keuangan.",
    image: "assets/meilia1.jpg",
    image1: "assets/meilia2.png",
    image2: "assets/meilia4.png",
    image3: "assets/meilia3.png",
    rate: 4,
    url_launcher: "https://maps.app.goo.gl/gZdjXLA75No4H8qXA",
    url_launcher1: "http://www.rsmeilia.co.id/",
    url_launcher2: "tel:(021) 8444444",
  ),
  tampilan(
    name: "Rumah Sakit Olahraga Nasional",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Rumah Sakit Olahraga Nasional berada dibawah naungan KEMENPORA Republik Indonesia yang diresmikan pada 20 Agustus 2013. RS Olahraga Nasional memiliki Visi mewujudkan Rumah Sakit yang berdaya saing guna mendukung kepemudaan dan keolahragaan. Dengan Misi meningkatkan kualitas pelayanan kesehatan yang bermutu bagi para atlet secara paripurna, aman dan nyaman, meningkatkan kualitas dan kuantitas serta profesionalisme SDM.",
    image: "assets/olahraga1.jpeg",
    image1: "assets/nasional3.jpg",
    image2: "assets/nasional1.jpg",
    image3: "assets/nasional2.jpg",
    rate: 4,
    url_launcher: "https://maps.app.goo.gl/eMeB1PUwcTy2gCU28",
    url_launcher1: "https://rson.kemenpora.go.id/",
    url_launcher2: "tel:(021) 87753977",
  ),
  tampilan(
    name: "RSUD Ciracas",
    shortDesc: "Telusuri lebih banyak.",
    desc:
        "Rumah Sakit Umum Daerah Ciracas didirikan dengan tujuan sebagai salah satu Unit Pelaksana Teknis Dinas Kesehatan di bidang pelayanan dan pengembangan kesehatan di Kecamatan Ciracas untuk melaksanakan pelayanan kesehatan perorangan paripurna berorientasi pada upaya Penyembuhan (kuratif), Rumah Sakit Umum Daerah Ciracas berusaha untuk menjadi organisasi dengan pengelolaan keuangan yang sehat seperti UPT Dinas Kesehatan Provinsi DKI Jakarta lainnya yang telah menyandang status sebagai organisasi yang telah menyandang status sebagai organisasi yang telah menerapkan PPK - BLUD. Rumah Sakit Umum Daerah Ciracas terletak di Jalan Lapangan Tembak Cibubur I Kelurahan Cibubur Kecamatan Ciracas Kota Administrasi Jakarta Timur Provinsi DKI Jakarta. Rumah Sakit Umum Daerah Ciracas memiliki akreditasi Utama.",
    image: "assets/rsudcir3.jpg",
    image1: "assets/rsudcir2.jpg",
    image2: "assets/rsudcir4.jpg",
    image3: "assets/rsudcir5.jpg",
    rate: 3,
    url_launcher: "https://maps.app.goo.gl/Sbd1YmYkUvUMKE8s5",
    url_launcher1: "https://rsudciracas.jakarta.go.id/",
    url_launcher2: "tel:(021) 87711249",
  ),
];
