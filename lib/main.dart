import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'travel/travel_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: const TravelPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
