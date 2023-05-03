import 'package:flutter/material.dart';
import 'package:widgets/widgets/AlertDialogPage.dart';
import 'package:widgets/widgets/AnimatedContainerPage.dart';
import 'package:widgets/widgets/AnimatedGridPage.dart';
import 'package:widgets/widgets/AnimatedListPage.dart';
import 'package:widgets/widgets/CardPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget List',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Widget List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardPage()),
              );
            },
            child: Card(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                      child: Center(
                          child: Text("Card",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                    Expanded(child: Image.asset('assets/images/card.jpg')),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedListPage()),
              );
            },
            child: Card(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                      child: Center(
                          child: Text("AnimatedList",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                    Expanded(
                        child: Image.asset('assets/images/animatedlist.jpg')),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedContainerPage()),
              );
            },
            child: Card(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                      child: Center(
                          child: Text("AnimatedContainer",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                    Expanded(
                        child:
                            Image.asset('assets/images/animatedcontainer.jpg')),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedGridPage()),
              );
            },
            child: Card(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                      child: Center(
                          child: Text("AnimatedGrid",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                    Expanded(
                        child: Image.asset('assets/images/animatedgrid.jpg')),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AlertDialogPage()),
              );
            },
            child: Card(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                      child: Center(
                          child: Text("AlertDiallog",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                    Expanded(
                        child: Image.asset('assets/images/alertdialog.jpg')),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
