import 'package:flutter/material.dart';
import 'package:gproject/features/aboutUs/views/about_developers_view.dart';
import 'package:gproject/features/aboutUs/views/about_program_view.dart';
import 'package:gproject/features/home/views/from_sign_language_view.dart';
import 'package:gproject/features/home/views/home_view.dart';
import 'package:gproject/features/home/views/to_sign_language_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomeView.id: (context) => const HomeView(), 
      ToSignLanguageView.id: (context) => const ToSignLanguageView(), 
      FromSignLanguage.id: (context) => const FromSignLanguage(), 
      AboutProgramView.id: (context) => const AboutProgramView(), 
      AboutDevelopersView.id: (context) => const AboutDevelopersView(), 


      },
      initialRoute: HomeView.id,
    );
  }
}
