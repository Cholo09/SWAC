import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'notification.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return AppBar(
      
      title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                title, // papaltan user name
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                DateFormat('EE, MMM dd').format(DateTime.now()),
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white, //color ng appbar
          actions: [
            IconButton(
              onPressed: () { //logic of routing here
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationPage())
                );
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
                semanticLabel: 'Notifications',
              ),
              splashColor: Colors.grey,
              splashRadius: 24.0,
            ),
          ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}