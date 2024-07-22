// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // common to place a drawer header here
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () => {
                // pop drawer first
                Navigator.pop(context),
                // go to home page
                Navigator.pushNamed(context, '/homepage'),
              },
            ),
            // home page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () => {
                // pop drawer first
                Navigator.pop(context),
                // go to settings page
                Navigator.pushNamed(context, '/settingspage'),
              },
            ),
            // setting page list tile
          ],
        ),
      ),
    );
  }
}
