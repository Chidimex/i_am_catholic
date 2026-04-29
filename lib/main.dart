import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_am_catholic/pages/bottomnav.dart';
import 'package:i_am_catholic/pages/homeppage.dart';
import 'package:i_am_catholic/pages/readings.dart';
import 'package:i_am_catholic/pages/saints.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/':(context)=>BottomNav(),
      //   '/homepage':(context)=> HomePage(),
      //  // '/saints':(context)=>Saints(),
      //  // '/readings':(context)=> Readings(),
      // },
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const BottomNav(),
    );
    
  }
}

