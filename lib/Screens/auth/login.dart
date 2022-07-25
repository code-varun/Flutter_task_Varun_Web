import 'package:flutter/material.dart';
import 'package:metacraftio/Screens/auth/widgets/desktop.dart';
import 'package:metacraftio/Screens/auth/widgets/mobile.dart';

import 'package:metacraftio/helpers/responsive.dart';
import 'package:metacraftio/helpers/style.dart';
import 'package:metacraftio/widgets/drawer.dart';
import 'package:metacraftio/widgets/mobile_navbar.dart';
import 'package:metacraftio/widgets/navbar_desktop.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? mobileTopBar(scaffoldKey)
            : PreferredSize(
                preferredSize: Size(screenSize.width, 300),
                child: NavBar(
                  tittle: 'Developer Portal ',
                  isHomepage: false,
                ),
              ),
        drawer: MobileMenu(),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: DesktopScreen(),
          smallScreen: MobileScreen(),
        ));
  }
}
