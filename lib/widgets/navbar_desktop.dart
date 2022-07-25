import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:metacraftio/Screens/auth/login.dart';
import 'package:metacraftio/helpers/style.dart';
import 'package:metacraftio/services/firebase.dart';


class NavBar extends StatefulWidget {
  const NavBar({required this.tittle, required this.isHomepage});

  final String tittle;
  final bool isHomepage;
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    bool isHomePage = widget.isHomepage;
    String tittle = widget.tittle;
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: isHomePage == false
                            ? Image.asset(
                                "assets/images/home.png",
                                scale: 2,
                              )
                            : InkWell(
                                onTap: () async {
                                  await AuthenticationHelper()
                                      .signOut()
                                      .then((result) {
                                    if (result == null) {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()));
                                    } else {}
                                  });
                                },
                                child: Text(
                                  "Sign Out",
                                  style: GoogleFonts.poppins(color: sitetheme),
                                ),
                              )),
                  ),
                  SizedBox(width: screenSize.width / 40),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    tittle,
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                height: 100.0,
                width: MediaQuery.of(context).size.width - 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/images/header.png"),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
