import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Color(0xFFF2F2f2),
          leading: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Image.asset('assets/TrabaloLogo.png'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
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
            )
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
