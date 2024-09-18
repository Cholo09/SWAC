import 'package:flutter/material.dart';
import 'package:swac/settings.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 157, 202, 255),
            ),
            child: Text('MENU'),
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage())
                );
            },
          ),
          ListTile(
            title: const Text('Sign out'),
            onTap: () {
              // Update the state of the app or navigate to Page 2
              // ...
            },
          ),
          // Add more ListTile items for other drawer options
        ],
      ),
    );
  }
}