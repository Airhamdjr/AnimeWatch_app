// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_app/pages/action_page_detail.dart';
import 'package:mental_app/util/exercise.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          Text(
                            'Selamat Datang',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Mau Nonton Anime Apa?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //Notifikasi
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        padding: EdgeInsets.all(9),
                        child: Icon(
                          Icons.notifications,
                          color: const Color.fromARGB(255, 48, 47, 47),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CATEGORIES',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //Emoticon Faces
                  Container(
                    height: 150, // Sesuaikan tinggi container sesuai kebutuhan
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // Action
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/action');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/action.webp',
                                  width: 200,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Action',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                          SizedBox(
                    width: 10,
                  ),
          // Isekai
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/isekai');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/isekai.gif',
                                  width: 200,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Isekai',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                         SizedBox(
                    width: 10,
                  ),

                        // Fantasy
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/fantasy');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/fantasy.webp',
                                  width: 200,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Fantasy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                         SizedBox(
                    width: 10,
                  ),

                        // Game
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/game');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/ngnl.gif',
                                  width: 200,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Game',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //section exercise
           // ...

// section exercise

// ...

// ListView of Exercise
// section exercise

// ...

 Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anime Populer',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 130,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              // Popular Anime Widgets
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ActionPageDetail(
                                        image: 'assets/kageno.jpeg',
                                        exercisename:
                                            'Kage no Jitsuryokusha ni \n Naritakute! Season 2',
                                        rating: 8.55,
                                        synopsis: 'Bagi Cid Kagenou, menjadi seorang pahlawan dan penjahat merupakan keinginan banyak orang. Namun, Cid menilai bahwa orang yang berada di balik bayangan adalah suatu hal keren dan ia memimpikan hal tersebut.\nKembali ke kehidupannya di Jepang, Cid harus menghadapi kenyataan bahwa ia tak bisa mencapai keinginannya tersebut. Namun, di dunia barunya, Cid kini bisa menguasai sihir dan menjadi karakter yang bekerja di balik bayangan.\nDengan mendirikan organisasi Shadow Garden, Cid memiliki tekad untuk menghancurkan Sekte Diablos bersama dengan para anggotanya....',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
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
                              SizedBox(width: 10),
                             GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ActionPageDetail(
                                        image: 'assets/onepiece.jpeg',
                                        exercisename:
                                            'One Piece',
                                        rating: 8.54,
                                        synopsis: 'Gol D. Roger dikenal sebagai “Raja Bajak Laut,” makhluk terkuat dan paling terkenal yang pernah berlayar di Grand Line. Penangkapan dan eksekusi Roger oleh Pemerintah Dunia membawa perubahan di seluruh dunia. Kata-kata terakhirnya sebelum kematiannya mengungkapkan keberadaan harta terbesar di dunia, One Piece. ',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/onepiece.jpeg',
                                  exercisename:
                                      'One Piece',
                                  rating: 8.54,
                                  color: Colors.yellow,
                                ),
                              ),
            SizedBox(width: 10),
            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ActionPageDetail(
                                        image: 'assets/naruto.jpeg',
                                        exercisename:
                                            'Naruto',
                                        rating: 9.00,
                                        synopsis: 'Uzumaki Naruto, protagonis yang bercita-cita menjadi ninja,  berhasil membangkitkan kekuatannya berkat aksi guru Umino Iruka yang melindunginya, dan dengan perjuangan berhasil menjadi genin. Bersama dengan teman-temannya, dia ditugaskan ke kelompok pimpinan Hatake Kakashi, yang menyadarkan mereka atas kelemahan masing-masing. Setelah Kakashi mengakui mereka sebagai genin secara resmi, mereka terus tumbuh dengan menaklukkan berbagai misi untuk menjadi ninja sejati. ',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/naruto.jpeg',
                                  exercisename:
                                      'Naruto',
                                  rating: 9.00,
                                  color: Colors.yellow,
                                ),
                              ),
            // Add more as needed
          ],
        ),
      ),
    ],
  ),
),

    ],
  ),
),

// ...

  

// ...

            Expanded(
                child: Container(
              padding: EdgeInsets.all(10),
              height: 800,
              width: 500,
              color: Colors.yellow,
              child: Center(
                child: Column(
                  children: [
                    //Excersie Heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Anime On-Going',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //ListView of Exercise
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
                                            'Kage no Jitsuryokusha ni \n Naritakute! Season 2',
                                        rating: 8.55,
                                        synopsis: 'Bagi Cid Kagenou, menjadi seorang pahlawan dan penjahat merupakan keinginan banyak orang. Namun, Cid menilai bahwa orang yang berada di balik bayangan adalah suatu hal keren dan ia memimpikan hal tersebut.\nKembali ke kehidupannya di Jepang, Cid harus menghadapi kenyataan bahwa ia tak bisa mencapai keinginannya tersebut. Namun, di dunia barunya, Cid kini bisa menguasai sihir dan menjadi karakter yang bekerja di balik bayangan.\nDengan mendirikan organisasi Shadow Garden, Cid memiliki tekad untuk menghancurkan Sekte Diablos bersama dengan para anggotanya....',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/kageno.jpeg',
                                  exercisename:
                                      'Kage no Jitsuryokusha ni \n Naritakute! Season 2',
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
                                        image: 'assets/bungou.jpeg',
                                        exercisename:
                                            'Bungou Stray Dogs',
                                        rating: 8.68,
                                        synopsis: '"Bungou Stray Dogs" adalah sebuah seri manga yang ditulis oleh Kafka Asagiri dan diilustrasikan oleh Sango Harukawa. Cerita ini mengikuti kehidupan seorang anak laki-laki bernama Atsushi Nakajima, yang dikeluarkan dari panti asuhan tempat dia tinggal karena dianggap sebagai kutukan hidup. Saat dia sedang dalam keadaan putus asa dan lapar di tepi sungai, dia menyelamatkan seorang pria aneh yang tenggelam. Pria itu adalah Anggota Agensi Detektif Khusus, sebuah agen detektif yang memiliki kekuatan supernatural dan berurusan dengan kasus-kasus yang melibatkan kejahatan supernatural.',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/bungou.jpeg',
                                  exercisename:
                                      'Bungou Stray Dogs',
                                  rating: 8.48,
                                  color: Colors.yellow,
                                ),
                              ),
                          GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ActionPageDetail(
                                        image: 'assets/mushoku.jpeg',
                                        exercisename:
                                            'Mushoku Tensei',
                                        rating: 8.35,
                                        synopsis: '"Mushoku Tensei" mengisahkan tentang seorang NEET (Not in Education, Employment, or Training) berusia 34 tahun yang memiliki kehidupan yang tidak berarti di dunia nyata. Suatu hari, dia tewas dalam suatu kejadian tragis, tetapi malah bereinkarnasi di dunia fantasi sebagai seorang bayi yang diberi nama Rudeus Greyrat.',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/mushoku.jpeg',
                                  exercisename:
                                      'Mushoku Tensei',
                                  rating: 8.48,
                                  color: Colors.yellow,
                                ),
                              ),
                          GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ActionPageDetail(
                                        image: 'assets/onepiece.jpeg',
                                        exercisename:
                                            'One Piece',
                                        rating: 8.54,
                                        synopsis: 'Gol D. Roger dikenal sebagai “Raja Bajak Laut,” makhluk terkuat dan paling terkenal yang pernah berlayar di Grand Line. Penangkapan dan eksekusi Roger oleh Pemerintah Dunia membawa perubahan di seluruh dunia. Kata-kata terakhirnya sebelum kematiannya mengungkapkan keberadaan harta terbesar di dunia, One Piece. ',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/onepiece.jpeg',
                                  exercisename:
                                      'One Piece',
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
                                        image: 'assets/death.jpeg',
                                        exercisename:
                                            'Death Note',
                                        rating: 8.00,
                                        synopsis: 'Light Yagami, seorang siswa sekolah menengah yang sangat cerdas dan bosan dengan dunia yang dianggapnya penuh kejahatan, menemukan sebuah buku catatan misterius yang disebut "Death Note." Death Note memiliki kekuatan untuk membunuh siapa pun yang namanya ditulis di dalamnya, asalkan penulisnya dapat memvisualisasikan wajah korban tersebut. Light memutuskan untuk menggunakan Death Note untuk membersihkan dunia dari kejahatan dan menciptakan masyarakat yang dianggapnya sempurna.',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/death.jpeg',
                                  exercisename:
                                      'Death Note',
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
                                        image: 'assets/naruto.jpeg',
                                        exercisename:
                                            'Naruto',
                                        rating: 9.00,
                                        synopsis: 'Uzumaki Naruto, protagonis yang bercita-cita menjadi ninja,  berhasil membangkitkan kekuatannya berkat aksi guru Umino Iruka yang melindunginya, dan dengan perjuangan berhasil menjadi genin. Bersama dengan teman-temannya, dia ditugaskan ke kelompok pimpinan Hatake Kakashi, yang menyadarkan mereka atas kelemahan masing-masing. Setelah Kakashi mengakui mereka sebagai genin secara resmi, mereka terus tumbuh dengan menaklukkan berbagai misi untuk menjadi ninja sejati. ',
 // Ganti dengan sinopsis yang sesuai),
                                    ),),
                                  );
                                },
                                child: Exercise(
                                  image: 'assets/naruto.jpeg',
                                  exercisename:
                                      'Naruto',
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
            ))
          ],
        ),
      ),
    );
  }
}
