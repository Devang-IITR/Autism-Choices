import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'home_icons.dart';
//import 'wordlist.csv';

class DictionaryRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(elevation: 0,
          title: Text(
            'Dictionary',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(
                  Home.slides,
                ),
                onPressed: () {
//                  Navigator.push(
//                    context, b
//                    MaterialPageRoute(builder: (context) => SlidesRoute()),
//                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                ),
                onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => SettingsRoute()),
//                  );
                },
              ),
            ),
          ],
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:DataTable(
                    columns: [
                      DataColumn(label: Text('Word')),
                      DataColumn(label: Text('Type')),
                      DataColumn(label: Text('Image')),
                      DataColumn(label: Text('Remove Word')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Test')),
                        DataCell(Text('Test')),
                        DataCell(Text('Test')),
                        DataCell(IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                              ),

                        ),
                        ],
                      ),
                      ],
                  ),

                  ),


              Padding(
                padding: EdgeInsets.only(bottom:30.0),
              child:TextFormField(

                      decoration: InputDecoration(
                      labelText: "Add Word",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                        ),
                      ),
                      //fillColor: Colors.gr
                    ),
                    textInputAction: TextInputAction.search,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontFamily: "Comic Sans MS",
                    ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Remove Word",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                    ),
                  ),
                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontFamily: "Comic Sans MS",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}