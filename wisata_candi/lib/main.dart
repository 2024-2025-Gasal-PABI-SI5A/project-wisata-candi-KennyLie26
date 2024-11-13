import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/screens/detail_screen.dart';
import 'package:wisata_candi/screens/profile_screen.dart';
import 'package:wisata_candi/screens/signin_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wisata candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 58, 116, 183),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255, 94, 169, 255)).copyWith(
          primary: const Color.fromARGB(255, 58, 112, 183),
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true
      ),
       home: DetailScreen(candi: candiList[0],),
       //home: ProfileScreen(),
      //home: SignInScreen(),
    );
  }
}

