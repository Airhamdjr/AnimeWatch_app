// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_app/util/exercise.dart';

class FantasyPage extends StatefulWidget {
  const FantasyPage({Key? key}) : super(key: key);

  @override
  State<FantasyPage> createState() => _FantasyPageState();
}

class _FantasyPageState extends State<FantasyPage> {
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
                        image: AssetImage('assets/fantasy.webp'),
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
                    top: 10,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            iconSize: 20,
                            icon: const Icon(Icons.logout),
                          ),
                          IconButton(
                            iconSize: 20,
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                          ),
                        ],
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
                padding: EdgeInsets.all(25),
                color: Colors.yellow,
                child: Center(
                  child: Column(
                    children: [
                      // Judul Latihan
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rekomendasi Anime Fantasy',
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
                          Exercise(
                              image: 'fantasy/kikansha.jpg',
                              exercisename: 'Kikansha no Mahou \n Tokubetsu desu',
                              rating: 8.00,
                              color: Colors.yellow,
                             
                            ),
                            Exercise(
                              image: 'fantasy/one.jpg',
                              exercisename: 'One Piece',
                              rating: 8.54,
                              color: Colors.yellow,
                             
                            ),
                            Exercise(
                              image: 'fantasy/potion.jpg',
                              exercisename: 'Potion-danomi \n de Ikinobimasu!',
                              rating: 7.5,
                              color: Colors.yellow,
                             
                            ),
                            Exercise(
                              image: 'fantasy/ragna.jpg',
                              exercisename: 'Ragna Crimson',
                              rating: 8.32,
                              color: Colors.yellow,
                             
                            ),
                            Exercise(
                              image: 'fantasy/shiro.jpg',
                              exercisename: 'Shiro Seijo \n to Kuro Bokushi',
                              rating: 8.42,
                              color: Colors.yellow,
                             
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
