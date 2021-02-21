import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final bool border;
  final Color buttonColor;
  final Color textColor;
  final Function onTap;

  const CustomButton(
      {Key key,
      this.border = false,
      this.buttonColor,
      this.textColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
                color: border ? Colors.transparent : Colors.amberAccent),
            color: border ? Colors.amberAccent : Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              border ? "Write a Tribute" : "Make a Donation",
              style: GoogleFonts.sansita(
                  fontSize: 20,
                  color: border ? Colors.black : Colors.amberAccent),
            ),
          ),
        ),
      ),
    );
  }
}


class CustomButtonSend extends StatelessWidget {
  final bool border;
  final Color buttonColor;
  final Color textColor;
  final Function onTap;

  const CustomButtonSend(
      {Key key,
      this.border = false,
      this.buttonColor,
      this.textColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.amberAccent),
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "Send",
              style: GoogleFonts.sansita(
                  fontSize: 15,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}