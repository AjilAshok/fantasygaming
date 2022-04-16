import 'package:fantasygaming/screen/private_room_entry.dart';
import 'package:fantasygaming/screen/public_room.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:
      // PrivatRoom_Entru(),
      Public_room()
    );
  }
}

