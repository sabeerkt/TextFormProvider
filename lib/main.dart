import 'package:flutter/material.dart';
import 'package:textform/home.dart';
import 'package:provider/provider.dart';
import 'package:textform/name_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => dbname(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.
            ),
        home: MyHomePage(),
      ),
    );
  }
}
