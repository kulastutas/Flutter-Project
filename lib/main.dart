import 'package:flutter/material.dart';
import 'package:trabalo/LoginPage.dart';

import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'), // Background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/TrabaloLogo.png', // Logo image path
                width: 250, // Adjust width as needed
                height: 250, // Adjust height as needed
              ),
            ),
            SizedBox(height: 70), // Space between logo and buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SignUpPage()), // Navigate to LoginPage
                );
              },
              child: Text(
                '  SIGN UP  ',
                style: TextStyle(fontSize: 18), // Set the font size to 18
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor:
                    Color(0xFFF7B731), // Foreground color for the button text
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Semi-rounded corners
                ),
              ),
            ),
            SizedBox(height: 15), // Space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => login()), // Navigate to LoginPage
                );
              },
              child: Text(
                '   LOG IN   ',
                style: TextStyle(fontSize: 18), // Set the font size to 18
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xffffffff),
                backgroundColor:
                    Color(0xff000000), // Foreground color for the button text
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Semi-rounded corners
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
