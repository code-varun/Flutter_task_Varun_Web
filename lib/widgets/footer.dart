import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metacraftio/helpers/responsive.dart';
import 'package:metacraftio/helpers/style.dart';

Footer webFooter(context) {
  return Footer(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                ),
                // Logo and Socials
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo
                    Image.asset("assets/images/flogo.png"),
                    SizedBox(
                      height: 20,
                    ),

                    RichText(
                        text: TextSpan(
                            children: [
                          TextSpan(
                            text: "monibag ",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          TextSpan(
                              text: "provides remittance, multi-currency"
                                  '\n'
                                  " and e-wallet services to individuals and"
                                  '\n'
                                  "businesses across the globe."),
                        ],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ResponsiveWidget.isMediumScreen(context)
                                  ? 15
                                  : 15,
                            ))),
                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      "Read More  →",
                      style: TextStyle(color: sitetheme, fontSize: 15),
                    ),

                    // SOCIALS icons
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/fsocial.png",
                          scale: 1.5,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "assets/images/fsocial.png",
                          scale: 1.5,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "assets/images/fsocial.png",
                          scale: 1.5,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "assets/images/fsocial.png",
                          scale: 1.5,
                        ),
                      ],
                    )
                  ],
                ),
                // 2 row

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Text(
                      "Discover ",
                      style:
                          GoogleFonts.poppins(fontSize: 20, color: sitetheme),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Log in ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign up ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Home ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "How It Works ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Features ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Our Mission ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Get In Touch ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                // 3 row
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Legal & Support ",
                      style:
                          GoogleFonts.poppins(fontSize: 20, color: sitetheme),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Terms & Conditions ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Privacy Policy ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "FAQs ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Developers ",
                      style:
                          GoogleFonts.poppins(fontSize: 15, color: sitetheme),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Developer Portal ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),

                // 4row
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get In Touch ",
                      style:
                          GoogleFonts.poppins(fontSize: 20, color: sitetheme),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: sitetheme,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "support@monibag.com ",
                          style: GoogleFonts.poppins(
                              fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: sitetheme,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "+(44) 208 3802 3899 ",
                          style: GoogleFonts.poppins(
                              fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: sitetheme,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "5 Goodwin’s Court, London ",
                          style: GoogleFonts.poppins(
                              fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        "United Kingdom ",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        "WC2N 4LL ",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
                constraints: BoxConstraints(maxWidth: 720),
                child: CustomPaint(painter: DrawDottedhorizontalline())),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/appstore.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset("assets/images/playstore.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 200),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: "Copyright © "),
                    TextSpan(
                        text: "monibag.com",
                        style: TextStyle(color: Colors.amber)),
                    TextSpan(text: " All rights reserved."),
                  ])),
                )
              ],
            )
          ],
        ),
      ),
      height: MediaQuery.of(context).size.height * .8,
      // width: MediaQuery.of(context).size.width - 200.0,
      decoration: BoxDecoration(
          color: Color.fromRGBO(41, 41, 42, 1),
          borderRadius: BorderRadius.circular(5),
          // color: Colors.blue,
          image: DecorationImage(
              image: AssetImage("assets/images/pattern.png"),
              fit: BoxFit.cover)),
    ),
  );
}

// Divider in Footer
class DrawDottedhorizontalline extends CustomPainter {
  late Paint _paint;
  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint.color = Colors.grey; //dots color
    _paint.strokeWidth = 2; //dots thickness
    _paint.strokeCap = StrokeCap.square; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -600; i < 600; i = i + 15) {
      // 15 is space between dots
      if (i % 3 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
