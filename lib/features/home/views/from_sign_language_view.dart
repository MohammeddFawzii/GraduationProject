import 'package:flutter/material.dart';
import 'package:gproject/features/home/widgets/from_sign_language_view_body.dart';

class FromSignLanguage extends StatelessWidget {
  const FromSignLanguage({super.key});
  static String id = "FromSignLanguage";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              const Image(image: AssetImage("assets/images/logo2 copy 1.png")),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image 1.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: const FromSignLanguagebody()),
      ),
    );
  }
}
