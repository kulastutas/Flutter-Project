import 'package:flutter/material.dart';
import 'home.dart';

// Import the SignupPage class
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF2F2f2)),
        useMaterial3: true,
      ),
      home: const MyLoginPage(title: ''),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
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
                            '   LOG IN   ',
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
                    height: 280, // Adjust the height as needed
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
                            height: 20,
                          ), // Space between password field and "jonald" button
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => home()));
                              // Handle login button press
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
                          ), // Space between "LOG IN" button and "Create Account" link
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => SignupPage(),
                            //     ),
                            //   );
                            // },
                            child: Text.rich(
                              TextSpan(
                                text: 'Don\'t have an account? ',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontFamily: 'Baloo 2', // Apply Baloo 2 font
                                ),
                                children: [
                                  TextSpan(
                                    text: 'SIGN UP',
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
            top: 120, // Adjust top position as needed
            width: MediaQuery.of(context).size.width,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/TrabaloLogo.png', // Replace 'assets/logo.png' with your logo path
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
