import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metacraftio/helpers/style.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              elevation: 2,
              color: sitetheme,
              child: Center(
                child: Text(
                  "No Mobile Layout Shared",
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ));
  }
}
