import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_icons.dart';
import 'Settings.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(ChoicesApp());
}

class ChoicesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Autism Choices',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Flex(
            children: [
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Home.slides,
                      ),
                      onPressed: () {},
                      iconSize: 75.0,
                      splashRadius: 80.0,
                    ),
                    Text(
                      'Add Slides',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.book,
                      ),
                      onPressed: () {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => DictionaryRoute()),
//                        );
                      },
                      iconSize: 85.0,
                    ),
                    Text(
                      'Dictionary',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsRoute()),
                        );
                      },
                      iconSize: 85.0,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
            direction: isLandscape ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
      ),
    );
  }
}
