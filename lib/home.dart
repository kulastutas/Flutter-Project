import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:trabalo/profile.dart';

import 'inbox.dart';
import 'notif.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => home(),
        '/inbox': (context) => InboxApp(),
        '/notif': (context) => notif()
      },
      home: homePage(title: ''),
    );
  }
}

class homePage extends StatelessWidget {
  final String title;
  const homePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Color(0xFFF2F2f2),
          leading: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
            child: Image.asset('assets/TrabaloLogo.png'),
          ),
          shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
          elevation: 5,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 15),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xff000000),
                        width: 2.0,
                      )),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/pfp.jpg'),
                  ),
                ),
              ),
            )
          ]),
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
      backgroundColor: Color(0xFFF2F2f2),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: CupertinoColors.black, width: 1.0),
                ),
                child: CupertinoSearchTextField(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('For You',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/ForYou1.png'),
                        Text('Career Consultation',
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/ForYou2.png'),
                        Text('Financial Tips', textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/ForYou3.png'),
                        Text(
                          'Study Abroad Programs',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Discover Job Openings',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(62, 255, 197, 80),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          height: 200,
                          child: Row(
                            children: [
                              Image.asset('assets/job1.png'),
                              Padding(
                                padding: EdgeInsets.fromLTRB(32, 10, 8, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('San Miguel Corporation',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.5),
                                        textAlign: TextAlign.center),
                                    Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Text(
                                          '40 San Miguel Ave. ,',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                    Text(
                                      'Ortigas Center, Mandaluyong',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      '1550, Metro Manila',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Initial Salary: ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '30k-85k/Month ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Color(0xffFFC650)),
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.black)),
                                        child: Text('Full Time'),
                                        onPressed: null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(62, 255, 197, 80),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          height: 200,
                          child: Row(
                            children: [
                              Image.asset('assets/job2.png'),
                              Padding(
                                padding: EdgeInsets.fromLTRB(58, 10, 8, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Jolibee Corporation',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.5),
                                        textAlign: TextAlign.center),
                                    Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Text(
                                          '10/F Jolibee Plaza Bldg,',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                    Text(
                                      'Emerald Ave., Ortigas Center',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      '1600, Pasig City',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Initial Salary: ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '10k-45k/Month ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Color(0xffFFC650)),
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.black)),
                                        child: Text('Full Time'),
                                        onPressed: null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
