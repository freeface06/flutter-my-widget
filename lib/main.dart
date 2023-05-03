import 'package:flutter/material.dart';
import 'package:widgets/widgets/AlertDialogPage.dart';
import 'package:widgets/widgets/AnimatedContainerPage.dart';
import 'package:widgets/widgets/AnimatedGridPage.dart';
import 'package:widgets/widgets/AnimatedListPage.dart';
import 'package:widgets/widgets/BottomAppBarPage.dart';
import 'package:widgets/widgets/BottomNavigationBarPage.dart';
import 'package:widgets/widgets/CardPage.dart';
import 'package:widgets/widgets/CheckBoxListTilePage.dart';
import 'package:widgets/widgets/ColorFilteredPage.dart';
import 'package:widgets/widgets/DataTableCheckBoxPage.dart';
import 'package:widgets/widgets/DataTablePage.dart';
import 'package:widgets/widgets/DraggablePage.dart';
import 'package:widgets/widgets/DrawerPage.dart';
import 'package:widgets/widgets/DropDownButtonPage.dart';
import 'package:widgets/widgets/DropDownMenuPage.dart';
import 'package:widgets/widgets/ElevatedButtonPage.dart';
import 'package:widgets/widgets/ExpansionTilePage.dart';

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
      appBar: null,
      body: SafeArea(
        child: ListView(
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
                          child: Image.asset(
                              'assets/images/animatedcontainer.jpg')),
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
            InkWell(
              splashColor: Colors.deepPurpleAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomAppBarPage()),
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
                            child: Text("BottomAppBar",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child: Image.asset('assets/images/bottomappbar.jpg')),
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
                      builder: (context) => const BottomNavigationBarPage()),
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
                            child: Text("BottomNavigationBar",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child: Image.asset(
                              'assets/images/bottomnavigationbar.jpg')),
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
                      builder: (context) => const CheckBoxListTilePage()),
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
                            child: Text("CheckBoxListTile",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child: Image.asset(
                              'assets/images/checkboxlisttile.jpg')),
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
                      builder: (context) => const ColorFilteredPage()),
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
                            child: Text("ColorFiltered",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child:
                              Image.asset('assets/images/colorfiltered.jpg')),
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
                      builder: (context) => const DataTablePage()),
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
                            child: Text("DataTable",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child: Image.asset('assets/images/datatable.jpg')),
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
                      builder: (context) => const DataTableCheckBoxPage()),
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
                            child: Text("DataTableCheckBox",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child: Image.asset(
                              'assets/images/datatablecheckbox.jpg')),
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
                      builder: (context) => const DraggablePage()),
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
                            child: Text("Draggable",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child: Image.asset('assets/images/draggable.jpg')),
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
                  MaterialPageRoute(builder: (context) => const DrawerPage()),
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
                            child: Text("Drawer",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(child: Image.asset('assets/images/drawer.jpg')),
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
                      builder: (context) => const DropdownButtonPage()),
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
                            child: Text("DropDownButton",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child:
                              Image.asset('assets/images/dropdownbutton.jpg')),
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
                      builder: (context) => const DropdownMenuPage()),
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
                            child: Text("DropDownMenu",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child: Image.asset('assets/images/dropdownmenu.jpg')),
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
                      builder: (context) => const ElevatedButtonPage()),
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
                            child: Text("ElevatedButton",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child:
                              Image.asset('assets/images/elevatedbutton.jpg')),
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
                      builder: (context) => const ExpansionTilePage()),
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
                            child: Text("ExpansionTile",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                      Expanded(
                          child:
                              Image.asset('assets/images/expansiontile.jpg')),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
