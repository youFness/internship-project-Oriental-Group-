// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(
              'Menu',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          buildListStyle(
            'Home',
            Icons.dashboard_outlined,
            () {
              // i used pushReplacementNamed bc pushnamed build the the pages on each others and its bad for the app
              // so its gonna remplace instead of adding it on top  of it
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListStyle(
            'Page de filtrage',
            Icons.filter,
            () {
              Navigator.of(context).pushReplacementNamed('/filter');
            },
          ),
        ],
      ),
    );
  }

// i used Function()  bcs funtion is not working for me
  ListTile buildListStyle(String title, IconData icon, Function() onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Color.fromARGB(255, 198, 215, 15),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 24, fontFamily: 'ElMessiri', fontWeight: FontWeight.bold),
      ),
      onTap: onTapLink,
    );
  }
}
