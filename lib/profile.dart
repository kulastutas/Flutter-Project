import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'LoginPage.dart';
import 'home.dart';
import 'inbox.dart';
import 'notif.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => home(),
        '/inbox': (context) => InboxApp(),
        '/notif': (context) => notif()
      },
      home: ProfilePage(title: ''),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String title;
  const ProfilePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Color.fromARGB(248, 255, 197, 80),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
            padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
            icon: Image.asset('assets/backBtn.png'),
          ),
        ),
        bottomNavigationBar: GNav(
            backgroundColor: Color.fromARGB(248, 255, 197, 80),
            onTabChange: (index) {
              print(index);
              if (index == 0) {
                Navigator.pushReplacementNamed(context, '/home');
              }
              if (index == 1) {
                Navigator.pushReplacementNamed(context, '/notif');
              }

              if (index == 2) {
                Navigator.pushReplacementNamed(context, '/inbox');
              }
            },
            tabs: const [
              GButton(icon: Icons.home, iconSize: 30),
              GButton(icon: Icons.notifications, iconSize: 30),
              GButton(icon: Icons.inbox, iconSize: 30),
              GButton(icon: Icons.library_books, iconSize: 30),
            ]),
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(248, 255, 197, 80),
            child: Center(
                child: Column(
              children: <Widget>[
                Container(
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xff000000),
                          width: 4.0,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/pfp.jpg'),
                      )),
                ),
                SizedBox(height: 15),
                Container(
                  child: Text(
                    'Bon Andrew Garcia',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Container(
                      child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Row(children: [
                          Image.asset('assets/location.png'),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('QUEZON CITY, PHILIPPINES',
                                style: TextStyle(fontSize: 15)),
                          ),
                        ]),
                      )
                    ],
                  )),
                ),
                SizedBox(height: 20),
                Container(
                  child: Container(
                      child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Row(children: [
                          Image.asset('assets/affiliation.png'),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('T.I.P. QUEZON CITY',
                                style: TextStyle(fontSize: 15)),
                          ),
                        ]),
                      )
                    ],
                  )),
                ),
                SizedBox(height: 20),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Text('NOTES',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 15),
                  child: Column(
                    children: [
                      Text(
                          'Hello! I am Bon. I am currently taking BSIT at T.I.P. Quezon City. I am looking for a part-time job. Please email migol@tip.edu.ph ',
                          style: TextStyle(fontSize: 14))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey, width: 1),
                        bottom: BorderSide(color: Colors.grey, width: 1)),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(children: [
                              Image.asset('assets/resume.png'),
                              Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text('MY RESUME'))
                            ])),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1)),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(children: [
                              Image.asset('assets/career.png'),
                              Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text('GET CAREER ADVICE'))
                            ])),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1)),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(children: [
                              Image.asset('assets/feedback.png'),
                              Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text('FEEDBACK'))
                            ])),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFF2F2F2),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    login()), // Navigate to LoginPage
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(children: [
                                  Image.asset('assets/logout.png'),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text('LOGOUT'))
                                ])),
                          ],
                        )),
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}
