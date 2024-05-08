import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home.dart';
import 'inbox.dart';

void main() => runApp(notif());

class notif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inbox',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/home': (context) => home(),
        '/inbox': (context) => InboxApp(),
      },
      home: NotifPage(),
    );
  }
}

class NotifPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Color(0xFFF2F2F2F2),
          shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
          title: Text('Notification',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        bottomNavigationBar: GNav(
            backgroundColor: Color.fromARGB(248, 255, 197, 80),
            onTabChange: (index) {
              print(index);
              if (index == 0) {
                Navigator.pushReplacementNamed(context, '/home');
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
        backgroundColor: Color(0xFFF2F2F2F2),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 1),
                          bottom: BorderSide(color: Colors.grey, width: 1)),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                    'You are invited at Quezon City Job Fair!'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Text('3:58PM'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 1),
                          bottom: BorderSide(color: Colors.grey, width: 1)),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                    'Mental Health Matters! Join Our Menta...'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                child: Text('11:05AM'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 1),
                          bottom: BorderSide(color: Colors.grey, width: 1)),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                    'Financial Tips is Page is now available...'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Wednesday'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 1),
                          bottom: BorderSide(color: Colors.grey, width: 1)),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                    'Mental Health Matters! Join Our Menta...'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Thursday'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
