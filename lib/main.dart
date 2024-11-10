import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:swac/drawer.dart';
import 'appbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 239),
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
                    //dito ilalagay ang line chart

                    height: 300.0,
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width * 0.05,
                        horizontal: MediaQuery.of(context).size.width * 0.05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    // Add Firebase data here
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Align text to the left by default
                      children: [
                        // 'Estimated Bill' Text
                        Text(
                          'Estimated Bill',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                            height:
                                8), // Space between 'Estimated Bill' and the next text
                        Text(
                          'P 1000.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  )
                  ],
                )
              ],
            ),
          ),
        )
      );
  }
}