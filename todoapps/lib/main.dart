import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapps/Page/homepage.dart';

Future<void> main() async {
  //int the hive
  await Hive.initFlutter();

  //open the box

  var box = await Hive.openBox("myBox");

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
