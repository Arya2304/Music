import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music/alkaY.dart';
import 'package:music/apt.dart';
import 'package:music/ariana.dart';
import 'package:music/beyonce.dart';
import 'package:music/bts.dart';
import 'package:music/cold.dart';
import 'package:music/detail.dart';
import 'package:music/dualipa.dart';
import 'package:music/espresso.dart';
import 'package:music/fifth%20.dart';
import 'package:music/imagine%20.dart';
import 'package:music/jlo.dart';
import 'package:music/jonas.dart';
import 'package:music/lessfirm.dart';
import 'package:music/michelJ.dart';
import 'package:music/monali.dart';
import 'package:music/neha.dart';
import 'package:music/onepublic.dart';
import 'package:music/profile.dart';
import 'package:music/queen.dart';
import 'package:music/salim.dart';
import 'package:music/sanam.dart';
import 'package:music/shakira.dart';
import 'package:music/shreyaG.dart';
import 'package:music/stray.dart';
import 'package:music/weekend.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 11, 88, 50),
        centerTitle: true,
        title: const Text(
          "Music Artist",
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.blueAccent,
        iconTheme: IconThemeData(color: Colors.white),
        //profile
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black12,
              backgroundImage: AssetImage("assets/images/luffy.jpg"),
            ),
          )
        ],
      ),
      //list
      drawer: Drawer(
          child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            ListTile(
              title: const Text("Library"),
              onTap: () {},
            ),
            UserAccountsDrawerHeader(
              accountName: Text("Arya Gaikwad"),
              accountEmail: Text("arya.gaikwad2304@gmail.com"),
              currentAccountPicture:
                  Image(image: AssetImage("assets/images/luffy.jpg")),
            ),
            ListTile(
              leading: Icon(Icons.settings_accessibility),
              title: Text("Settings"),
              onTap: () => print("settings"),
            ),
            ListTile(
              leading: Icon(Icons.create_sharp),
              title: Text("Create Playlist"),
              onTap: () => print("Create Playlist"),
            ),
            ListTile(
              leading: Icon(Icons.announcement_sharp),
              title: Text("Updates"),
              onTap: () => print("Updates"),
            ),
            ListTile(
              leading: Icon(Icons.library_music_sharp),
              title: Text("Library"),
              onTap: () => print("Library"),
            ),
            ListTile(
              leading: Icon(Icons.password_sharp),
              title: Text("Password Management"),
              onTap: () => print("Password Management"),
            ),
          ],
        ),
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/back.jpg"))),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: const Text(
                      "Female Artists",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //artist1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detail()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/images/ts.jpg"),
                            child: Text(
                              "Taylor swift",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ariana()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/images/ag.jpg"),
                            child: Text(
                              "Ariana",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => alka()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/images/ay.jpg"),
                            child: Text(
                              "Alka Yagnik",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => beyounce()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("assets/images/beyouncy.jpg"),
                            child: Text(
                              "Beyonce",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist5
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => dua()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/images/dua.jpg"),
                            child: Text(
                              "Dua Lipa",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist6
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => jlo()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/images/jlo.jpg"),
                            child: Text(
                              "JLO",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist7
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => monali()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/images/m.jpg"),
                            child: Text(
                              "Monali.T",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist8
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => neha()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/images/neha.jpg"),
                            child: Text(
                              "Neha Kakkar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist9
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => shreya()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/images/sg.jpg"),
                            child: Text(
                              "Shreya.G",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //artist10
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => shakira()));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/images/shakira.jpg"),
                            child: Text(
                              "Shakira",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: const Text(
                      "Popular Albums",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        //album1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => mj()));
                          },
                          child: Container(
                            height: 300,
                            width: 300,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset(
                              "assets/images/mj.jpg",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //album2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => weekend()));
                          },
                          child: Container(
                              height: 300,
                              width: 300,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Image.asset("assets/images/weekend.jpg",
                                  fit: BoxFit.fitHeight)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //album3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => queen()));
                          },
                          child: Container(
                            height: 300,
                            width: 300,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset("assets/images/queen.jpg",
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //album4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => apt()));
                          },
                          child: Container(
                            height: 300,
                            width: 300,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset("assets/images/apt.jpg",
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //album5
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sabriana()));
                          },
                          child: Container(
                              height: 300,
                              width: 300,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Image.asset("assets/images/e.jpg",
                                  fit: BoxFit.fitHeight)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: const Text(
                            "Famous Group Artist",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            //group1
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => bts()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(23, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/bts.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            //group2
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => coldplay()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(30, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/cold.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            //group3
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => fifth()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(32, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/fifth.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            //group4
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => imagine()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(34, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/id.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            //group5
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => jonas()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(32, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/jonas.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            //group6
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => less()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(29, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/less.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            //group7
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => stray()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(34, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/stray.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            //group8
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => onep()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(36, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/op.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            //group9
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => salim()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(36, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/ss.jpg",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            //group10
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => sanam()));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                color: const Color.fromARGB(129, 255, 255, 255),
                                child: Image.asset(
                                  "assets/images/s.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
