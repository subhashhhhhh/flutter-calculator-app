import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final color;
  final String btntext;
  final buttoncolor;
  final buttonTapped;
  const MyButton({
    Key? key,
    required this.color,
    required this.btntext,
    required this.buttoncolor,
    required this.buttonTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: buttonTapped,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: buttoncolor,
            child: Center(
              child: Text(
                btntext,
                style: GoogleFonts.kameron(fontSize: 24,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
