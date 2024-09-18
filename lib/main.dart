import 'package:flutter/material.dart';
import 'package:swac/drawer.dart';
import 'appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor:const Color.fromARGB(255, 229, 229, 239), // bg color to
        
        drawer: const MyDrawer(),

        appBar: const CustomAppBar(title: 'Home'),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      // line chart container
                      height: 300.0,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.05,
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(
                            255, 255, 255, 255), // color of container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // shadow
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(5, 5),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120.0,
                      margin: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.05,
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // shadow
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(5, 5),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      );
  }
}
