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
import 'package:widgets/widgets/FadeInImagePage.dart';
import 'package:widgets/widgets/FlowPage.dart';
import 'package:widgets/widgets/FocusPage.dart';
import 'package:widgets/widgets/FocusableActionDetectorPage.dart';
import 'package:widgets/widgets/FormPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          children: const <Widget>[
            NewWidget('assets/images/card.jpg', 'Card', CardPage()),
            NewWidget('assets/images/animatedlist.jpg', 'AnimatedList',
                AnimatedListPage()),
            NewWidget('assets/images/animatedcontainer.jpg',
                'AnimatedContainer', AnimatedContainerPage()),
            NewWidget('assets/images/animatedgrid.jpg', 'AnimatedGrid',
                AnimatedGridPage()),
            NewWidget('assets/images/alertdialog.jpg', 'AlertDiallog',
                AlertDialogPage()),
            NewWidget('assets/images/bottomappbar.jpg', 'BottomAppBar',
                BottomAppBarPage()),
            NewWidget('assets/images/bottomnavigationbar.jpg',
                'BottomNavigationBar', BottomNavigationBarPage()),
            NewWidget('assets/images/checkboxlisttile.jpg', 'CheckBoxListTile',
                CheckBoxListTilePage()),
            NewWidget('assets/images/colorfiltered.jpg', 'ColorFiltered',
                ColorFilteredPage()),
            NewWidget(
                'assets/images/datatable.jpg', 'DataTable', DataTablePage()),
            NewWidget('assets/images/datatablecheckbox.jpg',
                'DataTableCheckBox', DataTableCheckBoxPage()),
            NewWidget(
                'assets/images/draggable.jpg', 'Draggable', DraggablePage()),
            NewWidget('assets/images/drawer.jpg', 'Drawer', DrawerPage()),
            NewWidget('assets/images/dropdownbutton.jpg', 'DropDownButton',
                DropdownButtonPage()),
            NewWidget('assets/images/dropdownmenu.jpg', 'DropDownMenu',
                DropdownMenuPage()),
            NewWidget('assets/images/elevatedbutton.jpg', 'ElevatedButton',
                ElevatedButtonPage()),
            NewWidget('assets/images/expansiontile.jpg', 'ExpansionTile',
                ExpansionTilePage()),
            NewWidget('assets/images/fadeinimage.jpg', 'FadeInImage',
                FadeInImagePage()),
            NewWidget('assets/images/flow.jpg', 'Flow', FlowPage()),
            NewWidget('assets/images/focus.jpg', 'Focus', FocusPage()),
            NewWidget('assets/images/focusableactiondetector.jpg',
                'FocusableActionDetector', FocusableActionDetectorPage()),
            NewWidget('assets/images/form.jpg', 'Form', FormPage()),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String img;
  final String appName;
  final Widget view;

  const NewWidget(this.img, this.appName, this.view, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.deepPurpleAccent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => view),
        );
      },
      child: Card(
        child: SizedBox(
          width: 350,
          height: 350,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
                child: Center(
                    child: Text(appName,
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              Expanded(child: Image.asset(img)),
            ],
          ),
        ),
      ),
    );
  }
}
