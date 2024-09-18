import 'package:flutter/material.dart';
import 'appbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Notifications'),
      body: Center(
        child: Text('This is the notification page.'),
      ),
    );
  }
}