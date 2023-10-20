import 'package:flutter/material.dart';
import 'package:mental_app/pages/action_page_detail.dart';
import 'package:mental_app/util/exercise.dart';

class ActionPage extends StatefulWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  State<ActionPage> createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 48, 48),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage('assets/action.webp'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
  top: 0,
  left: 0,
  right: 0,
  height: 30,
  child: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 10, // Remove the shadow
    title: Text(
      'Action Page',
      style: TextStyle(
        color: Colors.white, // Set text color
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.favorite, color: Colors.white), // Set icon color
        onPressed: () {
          // Handle like action
        },
      ),
    ],
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white), // Set icon color
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ),
)

 
                

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Konten Anda di sini
                        ],
                      ),
                      // Notifikasi
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.yellow,
                child: Center(
                  child: Column(
                    children: [
                      // Judul Latihan
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Daftar Anime Action',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // ListView Latihan
                      Expanded(
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ActionPageDetail(
                                      image: 'assets/kageno.jpeg',
                                      
                                      exercisename:
                                          'Kage no Jitsuryokusha ni Naritakute! Season 2',
                                      rating: 8.55,
                                     synopsis: 'Bagi Cid Kagenou, menjadi seorang pahlawan dan penjahat merupakan keinginan banyak orang. Namun, Cid menilai bahwa orang yang berada di balik bayangan adalah suatu hal keren dan ia memimpikan hal tersebut.\nKembali ke kehidupannya di Jepang, Cid harus menghadapi kenyataan bahwa ia tak bisa mencapai keinginannya tersebut. Namun, di dunia barunya, Cid kini bisa menguasai sihir dan menjadi karakter yang bekerja di balik bayangan.\nDengan mendirikan organisasi Shadow Garden, Cid memiliki tekad untuk menghancurkan Sekte Diablos bersama dengan para anggotanya....',
 // Ganti dengan sinopsis yang sesuai
                                    ),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'assets/kageno.jpeg',
                                exercisename:
                                    'Kage no Jitsuryokusha ni \n Naritakute! Season 2',
                                rating: 8.55,
                                color: Colors.yellow,
                                
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ActionPageDetail(
                                      image: 'action/seiken.jpg',
                                      exercisename:
                                          'Seiken Gakuin no Makentsukai',
                                      rating: 8.68,
                                      synopsis: 'Pertarungan demi kerajaan kuno tidak ada bandingannya dengan pertarungan di ruang kelas!\nTerbangun dari stasis magis setelah seribu tahun, Pangeran Kegelapan Leonis tiba-tiba menemukan dirinya berada di tubuh anak laki-laki berusia sepuluh tahun! Dia segera bertemu Riselia, seorang gadis yang menghadapi Void, makhluk yang hampir memusnahkan umat manusia. Bertekad untuk mengungkap misteri era baru yang aneh ini, Leonis mendaftar di Akademi Excalibur, sebuah sekolah yang melatih siswanya untuk melawan monster misterius tersebut. Mungkinkah Void mempunyai hubungan dengan masa lalu Leonis?',
),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'action/seiken.jpg',
                                exercisename: 'Seiken Gakuin no Makentsukai',
                                rating: 8.68,
                                color: Colors.yellow,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ActionPageDetail(
                                      image: 'action/Helck.jpg',
                                      exercisename: 'Helck',
                                      rating: 8.35,
                                      synopsis: 'Sementara umat manusia merayakan kekalahan Raja Iblis di tangan seorang pahlawan tunggal, penghuni dunia iblis bersiap untuk kontes seumur hidup — sebuah turnamen untuk memutuskan siapa yang akan mewarisi gelar Raja Iblis.\nSekarang, tiga bulan kemudian, turnamen telah berjalan dengan lancar—yah, selain fakta bahwa favorit untuk menjadi yang teratas adalah pahlawan manusia Helck! menyatakan kebenciannya terhadap manusia. ',
),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'action/Helck.jpg',
                                exercisename: 'Helck',
                                rating: 8.35,
                                color: Colors.yellow,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ActionPageDetail(
                                      image: 'action/tokyo.jpg',
                                      exercisename: 'Tokyo Revengers',
                                      rating: 8.54,
                                     synopsis:
            'Anime ini menceritakan kehidupan Takemichi Hanagaki yang sedang berada di titik terburuknya setelah dua belas tahun lalu menikmati kehidupan masa sekolah menengah yang sempurna. Dulu, dia hidup dikelilingi oleh teman-teman bahkan pacar.\n\nKini, hidup Takemichi cukup menderita. Ditambah lagi, Takemichi harus kehilangan sang mantan pacar untuk selama-lamanya yang terbunuh dalam insiden yang melibatkan geng bernama \'Tokyo Manji\'.\n\nSuatu ketika, seseorang mendorong Takemichi yang sedang berdiri di pinggir rel kereta. Takemichi pun tertabrak.',
      ),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'action/tokyo.jpg',
                                exercisename: 'Tokyo Revengers',
                                rating: 8.54,
                                color: Colors.yellow,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ActionPageDetail(
                                      image: 'action/underninja.jpg',
                                      exercisename: 'Under Ninja',
                                      rating: 8.00,
                                    synopsis:
            'Seorang penyendiri di sekolah menengah diberikan pekerjaan paruh waktu seumur hidup sebagai ninja modern yang ditugaskan untuk melakukan pembunuhan internasional.\n\nSetelah Perang Dunia II, Komando Sekutu di Jepang mengembangkan sebuah badan baru untuk membantu menangani terorisme dan kekerasan di wilayah Pasifik. Badan tersebut beranggotakan para ninja dan mereka awalnya ditugaskan untuk menangani urusan dalam negeri. Akhirnya program tersebut berkembang menjadi bentuk yang sekarang, mengelola 20.000 ninja di berbagai urusan domestik dan internasional. ',
      ),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'action/underninja.jpg',
                                exercisename: 'Under Ninja',
                                rating: 8.00,
                                color: Colors.yellow,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ActionPageDetail(
                                      image: 'action/nanatsu.jpg',
                                      exercisename:
                                          'Nanatsu no Taizai: Mokushiroku no Yonkishi',
                                      rating: 9.00,
                                      synopsis: 'Percival selalu tinggal bersama kakeknya di Jari Tuhan, surga terpencil yang terletak tinggi di atas awan. Dan meskipun dia menyukai kehidupan sederhana, diam-diam dia mendambakan petualangan. Namun kehidupan Percival berubah selamanya ketika seorang penyusup—yang berbagi koneksi mengejutkan bersamanya—merobek semua yang pernah dia ketahui.\nKarena tidak ada lagi yang bisa dilakukan selain mengejar orang yang mengambil segalanya darinya, Percival berangkat sendiri. Selama perjalanannya, anak laki-laki yang dilindungi itu menemukan bahwa ada banyak hal yang tidak dia ketahui tentang kehidupan normal. ',
),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'action/nanatsu.jpg',
                                exercisename:
                                    'Nanatsu no Taizai: \n Mokushiroku no Yonkishi',
                                rating: 9.00,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
