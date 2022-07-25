import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metacraftio/Screens/homescreen/homepage.dart';
import 'package:metacraftio/helpers/style.dart';
import 'package:metacraftio/services/firebase.dart';
import 'package:metacraftio/widgets/footer.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _pass = TextEditingController();
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    // var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      // constraints: BoxConstraints(maxWidth: 1440),
      body: new FooterView(
        children: <Widget>[
          Center(
            child: Container(
              height: 550,
              width: 600,
              // constraints: BoxConstraints(maxWidth: 50),
              child: Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Login Account",
                      style: GoogleFonts.poppins(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Login account to enjoy all the services.",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(124, 124, 124, 1)),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    // Email:
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Email",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(124, 124, 124, 1)),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(12),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.grey,
                            ),
                            hintText: "Enter Your Email ",
                            border: inputBorder,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            filled: true,
                            contentPadding: const EdgeInsets.all(8)),
                        controller: _email,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Password
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Password",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(124, 124, 124, 1)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline_sharp,
                              color: Colors.grey,
                            ),
                            hintText: "***********",
                            border: inputBorder,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            filled: true,
                            contentPadding: const EdgeInsets.all(8)),
                        controller: _pass,
                      ),
                    ),

                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          "Forgot Password ?",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(241, 184, 7, 1)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 450,
                      height: 30,
                      color: sitetheme,
                      child: ElevatedButton(
                          onPressed: () async {
                            await AuthenticationHelper()
                                .signIn(
                                    email: _email.text, password: _pass.text)
                                .then((result) {
                              if (result == null) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: Icon(
                                              Icons.cancel,
                                              color: sitetheme,
                                            ))
                                      ],
                                    ),
                                    actions: <Widget>[
                                      Center(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 40.0),
                                              child: Image.asset(
                                                  "assets/images/alertimage.png"),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Text(
                                                  "Unauthorized to use developer portal",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: Container(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text(
                                                      "Contact Us",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(sitetheme),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    content: Builder(
                                      builder: (context) {
                                        return Container(
                                          height: 10,
                                          width: 400,
                                        );
                                      },
                                    ),
                                  ),
                                );
                              }
                            });
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(sitetheme),
                          )),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "By continuing you agree to our ",
                            style: GoogleFonts.poppins(),
                          ),
                          TextSpan(
                            text: "Terms & Conditions  ",
                            style: GoogleFonts.poppins(color: sitetheme),
                          ),
                          TextSpan(
                            text: "and Privacy Policy. ",
                            style: GoogleFonts.poppins(
                              color: sitetheme,
                            ),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
        footer: webFooter(context),
        flex: 8, //default flex is 2
      ),
    );
  }
}
