import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_icons.dart';

class SettingsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Home.slides,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.book,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Orient(),
            ],
          ),
        ),
      ),
    );
  }
}

//
class Orient extends StatefulWidget {
  @override
  _OrientState createState() => _OrientState();
}

class _OrientState extends State<Orient> {
  int _orientmode;

  Widget build(BuildContext context) {
    _orientmode =
        MediaQuery.of(context).orientation == Orientation.portrait ? 0 : 1;
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'Alignment',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      groupValue: _orientmode,
                      value: 0,
                      onChanged: (val) {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitUp,
                        ]);
                        setState(() {
                          _orientmode = val;
                        });
                      },
                    ),
                    Text('Vertical'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      groupValue: _orientmode,
                      value: 1,
                      onChanged: (val) {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.landscapeLeft,
                          DeviceOrientation.landscapeRight
                        ]);
                        setState(() {
                          _orientmode = val;
                        });
                      },
                    ),
                    Text('Horizontal'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
