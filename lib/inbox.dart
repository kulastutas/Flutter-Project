import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home.dart';
import 'notif.dart';

void main() => runApp(InboxApp());

class InboxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inbox',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/home': (context) => home(),
        '/notif': (context) => notif()
      },
      home: InboxPage(),
    );
  }
}

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      bottomNavigationBar: GNav(
          backgroundColor: Color.fromARGB(248, 255, 197, 80),
          onTabChange: (index) {
            print(index);
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/home');
            }
            if(index == 1){
              Navigator.pushReplacementNamed(context, '/notif');
            }
          },
          tabs: const [
            GButton(icon: Icons.home, iconSize: 30),
            GButton(icon: Icons.notifications, iconSize: 30),
            GButton(icon: Icons.inbox, iconSize: 30),
            GButton(icon: Icons.library_books, iconSize: 30),
          ]),
          
      body: ListView.builder(
        itemCount: 10, // Number of inbox items
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()), // Display item number
            ),
            title: Text('Message $index'),
            subtitle: Text('From: Sender $index'),
            onTap: () {
              // Action when an inbox item is tapped
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Message Details'),
                    content: Text('This is message $index'),
                    actions: <Widget>[
                      TextButton(
                        // Changed FlatButton to TextButton for null safety
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
