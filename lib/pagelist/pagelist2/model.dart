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
    name: "Klinik Prima Husada",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Prima Husada adalah sebuah klinik yang berlokasi di Cibubur, Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/prima1.jpeg",
    image1: "assets/prima2.jpg",
    image2: "assets/prima3.jpg",
    url_launcher: "https://maps.app.goo.gl/6DhtU4sJMSZ8EZSG6",
    rate: 3,
    url_launcher1:"tel:(021) 98111938",
  ),
  tampilan(
    name: "Klinik Yadika Cibubur",
    shortDesc: "Telusuri lebih banyak.",
    desc:
        "Klinik Yadika Cibubur mulai berdiri pada tahun 2003. Klinik yang berada di bawah naungan Yayasan Abdi Karya yang didirikan pada tanggal 14 Februari tahun 1976 oleh DR. Sutan Raja Darianus Lungguk Sitorus dan Ny. Luceria Siagian B.Sc. Klinik ini menyediakan berbagai layanan kesehatan mulai dari kedokteran umum, kebidanan dan kandungan, gigi dan mulut, laboratorium klinik, dan radiologi.",
    image: "assets/yadika1.jpeg",
    image1: "assets/yadika2.jpg",
    image2: "assets/yadika3.jpg",
    url_launcher: "https://maps.app.goo.gl/m7TTKE4LLmkoDmK69",
    rate: 4,
    url_launcher1:"tel:(021) 8711515",
  ),
  tampilan(
    name: "Klinik Setia Pratama Rumanda",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Setia Pratama Rumanda adalah sebuah klinik yang berlokasi di Cibubur, Kec. Ciracas, Klp. Dua Wetan, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/praset1.jpg",
    image1: "assets/setia1.jpg",
    image2: "assets/setia2.jpg",
    url_launcher: "https://maps.app.goo.gl/musKuabeJyksjWUW8",
    rate: 4,
    url_launcher1:"tel:(021) 8705159",
  ),
  tampilan(
    name: "Klinik Taruna Jaya",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Taruna Jaya adalah sebuah klik yang berlokasi di Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/taruna1.jpg",
    image1: "assets/taruna2.jpg",
    image2: "assets/taruna3.jpg",
    url_launcher: "https://maps.app.goo.gl/JiFh39nT2j3ZqYaZA",
    rate: 5,
    url_launcher1:"tel:(021) 29842208",
  ),
  tampilan(
    name: "Damessa Klinik Gigi - Kota Wisata Cibubur",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Damessa adalah klinik gigi dan perawatan kulit terbaik di area Cibubur. Terpercaya, Nyaman, dan Terjangkau adalah komitmen kami untuk menghadirkan perawatan gigi dan kulit terbaik bagi anda dan keluarga.",
    image: "assets/damessa1.jpg",
    image1: "assets/damessa2.jpg",
    image2: "assets/damessa3.jpg",
    url_launcher: "https://maps.app.goo.gl/icmB7773Sn3AqUm78",
    rate: 5,
    url_launcher1:"tel:0822-8300-5552",
  ),
  tampilan(
    name: "Klinik Mata Cibubur Medika",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Mata Cibubur Medika adalah sebuah klinik mata yang berlokasi di Blok b1 No.4 Jalan Raya Lapangan Tembak, Cibubur, Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/mata1.jpg",
    image1: "assets/mata2.jpg",
    image2: "assets/mata3.jpg",
    url_launcher: "https://maps.app.goo.gl/CytmiiVwg41fDPLB6",
    rate: 4,
    url_launcher1:"tel:(021) 22823332",
  ),
  tampilan(
    name: "Klinik Mitra Ria Husada",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Mitra Ria Husada adalah sebuah klinik mata yang berlokasi di Jl. Karya Bakti, RT.8/RW.7, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/drugstore.png",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher: "https://maps.app.goo.gl/1WmHadbiB1hKdwf6A",
    rate: 0,
    url_launcher1:"tel:",
  ),
  tampilan(
    name: "Apotek & Klinik Kimia Farma",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Unit bisnis laboratorium klinik dibuka sejak tahun 2003 dibawah PT. Kimia Farma (Persero) Tbk. sebagai Healthcare company. Sampai November 2019 PT. Kimia Farma Diagnostika telah memiliki 63 outlet yang tersebar mulai dari Medan di bagian barat sampai dengan Makassar bagian timur. PT Kimia Farma Diagnostika memiliki Visi Menjadi jaringan pelayanan laboratorium klinik terbaik di Indonesia untuk mendukung kehidupan yang lebih sehat. Dengan Misi penyediaan layanan dan pengelolaan jaringan lab yang berkualitas, Pengembangan bisnis jaringan layanan lab sesuai kebutuhan pasar, serta Sinergi dengan PT Kimia Farma Apotek.",
    image: "assets/kimia1.jpg",
    image1: "assets/kimia2.jpg",
    image2: "assets/kimia3.jpg",
    url_launcher: "https://maps.app.goo.gl/p7AuwWRnmjYJbLhAA",
    rate: 4,
    url_launcher1:"tel:(021) 80488965",
  ),
  tampilan(
    name: "Klinik Bhakti Husada",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Bhakti Husada adalah sebuah klinik yang berlokasi di Jl. Jambore No.1, RT.6/RW.13, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta ",
    image: "assets/bhakti1.jpg",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher: "https://maps.app.goo.gl/FGV48Gz6dP3rMVnz6",
    rate: 0,
    url_launcher1:"tel:(021) 91267353",
  ),
  tampilan(
    name: "Klinik Umum Ar - Rahim",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Umum Ar - Rahim adalah sebuah klinik yang berlokasi di Jl. Lap. Tembak No.27, RT.2/RW.2, Cibubur, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/arrahim3.jpg",
    image1: "assets/arrahim1.jpg",
    image2: "assets/arrahim2.jpg",
    url_launcher: "https://maps.app.goo.gl/TYzx21aNp2CWczj7A",
    rate: 5,
    url_launcher1:"tel:(021) 8707810",
  ),
  tampilan(
    name: "ZAP Clinic - Cibubur Junction",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Zap Clinic merupakan salah satu klinik kecantikan terbesar dengan 49 cabang tersebar di Indonesia. Zap Clinic berdiri sejak tahun 2009, dibawah naungan PT Zulu Alpha Papa. Zap Clinic memiliki Visi untuk meningkatkan kualitas hidup di komunitas kita melalui kesehatan dan kecantikan. Dengan Misi memberikan pengalaman perawatan terbaik sebaik mungkin. Mengutamakan kenyamanan dan keamanan, ZAP hadir sebagai klinik yang mengutamakan ketepatan waktu, teknologi terbaik di kelasnya dan penanganan dilakukan secara medis dengan dokter berpengalaman disertai pelayanan berbintang yang bersahabat. ZAP telah dipercaya untuk melakukan lebih dari 4.000.000 prosedur treatment yang menjadikan ZAP sangat berpengalaman. Bukan hanya melayani perawatan dan produk kesehatan, saat ini ZAP berperan aktif untuk mengedepankan pelayanan kesehatan (ZAP HEALTH) seperti vaksinasi dewasa dan anak, sebagai solusi untuk terus meningkatkan kualitas hidup di masyarakat. ZAP akan terus meningkatkan pelayanan dan memberikan pengalaman terbaik sebaik mungkin.",
    image: "assets/zap1.jpg",
    image1: "assets/zap2.jpg",
    image2: "assets/zap3.jpg",
    url_launcher: "https://maps.app.goo.gl/PQQASKW4BLwQbk3t6",
    rate: 5,
    url_launcher1:"tel:(021) 21288079",
  ),
  tampilan(
    name: "Klinik Pratama Citra Medika",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Pratama Citra Medika adalah sebuah klinik yang berlokasi di Jl. Raya Bogor No.Km. 28, RT.3/RW.2, Cibubur, Kec. Ps. Rebo, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/pratama1.jpg",
    image1: "assets/pratama3.jpg",
    image2: "assets/pratama4.jpg",
    url_launcher: "https://maps.app.goo.gl/VHXdBTC2V8KJKkUZ7",
    rate: 4,
    url_launcher1:"tel:(021) 87714004",
  ),
  tampilan(
    name: "Rumat Cibubur - Spesialis Luka Diabetes",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik RUMAT Cibubur - Spesialis Luka Diabetes merupakan klinik yang berlokasi di Ciracas, Jakarta Timur, DKI Jakarta \nAdapun pelayanan yang tersedia yaitu : \n1. RUMAT memberikan pelayanan perawatan luka sesuai konsep evidence based wound care dengan metode terkini sehingga pasien tercegah dari opsi Amputasi. \n2. RUMAT at HOME adalah Divisi Perawatan Luka Home Care. Ini adalah pelayanan yang dilakukan perawatan di rumah",
    image: "assets/drugstore.png",
    image1: "assets/drugstore.png",
    image2: "assets/drugstore.png",
    url_launcher: "https://maps.app.goo.gl/6gdpYWMKLfQzokvTA",
    rate: 5,
    url_launcher1:"tel:0853-1000-7377",
  ),
  tampilan(
    name: "Harmony Smiles Dental Clinic Cibubur",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Happy Smile Dental Clinic merupakan klinik gigi yang berada di Ciracas, Jakarta Timur. Beberapa layanan yang tersedia meliputi: Kedokteran gigi, kedokteran gigi anak, kecantikan gigi, dan konservasi gigi",
    image: "assets/harmony1.jpg",
    image1: "assets/harmony2.jpg",
    image2: "assets/gigi1.png",
    url_launcher: "https://maps.app.goo.gl/JfhfdMsrf8Sj16nA7",
    rate: 5,
    url_launcher1:"tel:0811-1165-798",
  ),
  
  tampilan(
    name: "Klinik Koronka Medika",
    shortDesc: "Telusuri lebih banyak",
    desc:
        "Klinik Koronka Medika adalah sebuah klinik yang berlokasi di Jl. Raya Munjul No.55, RT.6/RW.1, Cibubur, Kec. Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta",
    image: "assets/koronka1.jpg",
    image1: "assets/koronka2.jpg",
    image2: "assets/koronka3.jpg",
    url_launcher: "https://maps.app.goo.gl/oPmD8C1jcUDk7kvi8",
    rate: 4,
    url_launcher1:"tel:(021) 84307844",
  ),
];
