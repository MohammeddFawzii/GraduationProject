import 'package:flutter/material.dart';
import 'package:gproject/features/home/widgets/uploading_image_section.dart';

class FromSignLanguagebody extends StatefulWidget {
  const FromSignLanguagebody({
    super.key,
  });

  @override
  State<FromSignLanguagebody> createState() => _FromSignLanguagebodyState();
}

class _FromSignLanguagebodyState extends State<FromSignLanguagebody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        start: BorderSide(color: Color(0xff3CC563), width: 6))),
                child: const Text.rich(
                  TextSpan(
                    text: ' Translate',
                    style: TextStyle(
                        color: Color(0xff3CC563),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' From ',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: 'Sgin Language',
                        style: TextStyle(
                            color: Color(0xff3CC563),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 120,
        ),
        Column(
          children: [
            const UpLoadingImageSection(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Your Translation Will Appear Here..",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const Spacer(),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(const Color(0xff3CC563)),
              minimumSize: WidgetStateProperty.all<Size>(const Size(300, 50)),
            ),
            onPressed: () {},
            child: const Text(
              "Translate",
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
