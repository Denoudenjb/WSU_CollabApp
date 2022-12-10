// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, sort_child_properties_last, duplicate_ignore
import 'package:flutter/material.dart';
import 'pictureviewer.dart';
import 'calendar.dart';
import 'phonedirectory.dart';
import 'helpfullinks.dart';
import 'requestinfo.dart';

void main() {
  runApp(const MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("931st Air Refueling Wing"),
          backgroundColor: Color.fromARGB(255, 7, 90, 158),
        ),
        body:
Container(
        constraints: const BoxConstraints.expand(),
        decoration: const 
        
        BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plane.png"),
            fit: BoxFit.cover,
          )),
        child: ListView(children: <Widget>[
          ListTile(
            leading: Icon(Icons.calendar_month, size: 50),
            title: Text('Upcoming Events'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Calendarevents(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline_sharp, size: 50),
            title: Text('Helpful Links'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HelpfulLinks(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.folder_copy, size: 50),
            title: Text('Pictures'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pictureviewer(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone_outlined, size: 50),
            title: Text('Phone Directory'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhoneDirectory(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, size: 50),
            title: Text('Request Info'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompleteForm(),
                ),
              );
            },
          ),
        ])),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 7, 90, 158),
          child: SizedBox(
            height: 30.0,
            child: (Text('Collaboration App', textAlign: TextAlign.center, style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                )))
            
          ),
        ),
      ),
    );
  }
}
