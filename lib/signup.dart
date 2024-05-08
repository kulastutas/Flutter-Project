import 'package:flutter/material.dart';
import 'package:trabalo/LoginPage.dart';

import 'home.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg.png'), // Background image path
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.dstATop)),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120, // Adjusted height to lower contents
                  ), // Add space between the top and login elements
                  Container(
                      padding: EdgeInsets.all(20),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xff000000), // Black background color
                        borderRadius:
                            BorderRadius.circular(20), // Capsule shape
                      ),
                      child: Column(
                        children: [
                          Text(
                            '   SIGN UP   ',
                            style: TextStyle(
                              color: Color(0xFFF7B731), // White text color
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2', // Apply Baloo 2 font
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 5,
                  ), // Add space between the login button and input fields
                  SizedBox(
                    height: 350, // Adjust the height as needed
                    child: Container(
                      width: 320,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFF7B731), // Yellow container color
                        borderRadius:
                            BorderRadius.circular(30), // Rounded corners
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 250,
                            child: TextFormField(
                              style: TextStyle(fontSize: 12, height: 2),
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(15),
                                hintText: 'Email',
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ), // Space between email and password fields
                          Container(
                            width: 250,
                            child: TextFormField(
                              obscureText: true,
                              style: TextStyle(fontSize: 12, height: 2),
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                hintText: 'Password',
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ), // Space between password and confirm password fields
                          Container(
                            width: 250,
                            child: TextFormField(
                              obscureText: true,
                              style: TextStyle(fontSize: 12, height: 2),
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                hintText: 'Confirm Password',
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ), // Space between confirm password field and "SIGN UP" button
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => home()));
                            },
                            icon: SizedBox
                                .shrink(), // No icon, just an empty SizedBox
                            label: Text(
                              '—>',
                              style: TextStyle(
                                color: Color(0xFFF7B731), // Arrow color
                                fontSize: 24,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.black, // Black button color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Rounded corners
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ), // Space between "SIGN UP" button and "Already have an account?" text
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => login(),
                                ),
                              );
                            },
                            child: Text.rich(
                              TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontFamily: 'Baloo 2', // Apply Baloo 2 font
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Log In',
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          'Baloo 2', // Apply Baloo 2 font
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20, // Adjust top position as needed
            left: 20, // Adjust left position as needed
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Navigate back to the previous screen
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Circle shape
                  color: Colors.black, // Black circle background color
                ),
                padding: EdgeInsets.all(8), // Adjust padding as needed
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white, // White arrow icon color
                ),
              ),
            ),
          ),
          Positioned(
            top: 80, // Adjust top position as needed
            width: MediaQuery.of(context).size.width,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/TrabaloLogo.png', // Replace 'assets/logo.png' with your logo path
                width: 220, // Adjust the width as needed
                height: 180, // Adjust the height as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
