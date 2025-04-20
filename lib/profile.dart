import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text("PROFILE"),
        shadowColor: Colors.blueAccent,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black12,
              child: ClipOval(
                child: Image.asset("assets/images/luffy.jpg"),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              // Profile Photo
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
                child: ClipOval(
                  child: Image.asset("assets/images/luffy.jpg"),
                ),
              ),
              SizedBox(height: 30),
              // Details Box
              Container(
                padding: EdgeInsets.all(8),
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: const Text(
                  "Details:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Trajan Pro',
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Name
              ListTile(
                title: Text(
                  "Name: Arya Niyati Gaikwad",
                  style: TextStyle(fontFamily: 'Trajan Pro'),
                ),
              ),
              // Phone Number
              ListTile(
                title: Text(
                  "Phone No: +91 7028243683",
                  style: TextStyle(fontFamily: 'Trajan Pro'),
                ),
              ),
              // Email
              ListTile(
                title: Text(
                  "Email Id: arya.gaikwad2304@gmail.com",
                  style: TextStyle(fontFamily: 'Trajan Pro'),
                ),
              ),
              // Address
              ListTile(
                title: Text(
                  "Address: Boisar, Palghar, Maharashtra",
                  style: TextStyle(fontFamily: 'Trajan Pro'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
