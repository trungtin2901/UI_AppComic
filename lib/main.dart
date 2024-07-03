import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/comic_page.dart';
import 'package:myfirstapp/pages/home_page.dart';

// import 'pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ComicPage(),
    );
  }
 
}
