import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProfilePage(title: '');
  }
}

class ProfilePage extends StatelessWidget {
  final String title;
  const ProfilePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(248, 255, 197, 80),
        child: Center(
          child: Column(
            children: [
              
            ],
        )),
      ),
    );
  }
}
