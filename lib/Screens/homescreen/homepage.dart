import 'package:flutter/material.dart';
import 'package:metacraftio/Screens/homescreen/widgets/desktop.dart';
import 'package:metacraftio/Screens/homescreen/widgets/mobile.dart';
import 'package:metacraftio/helpers/responsive.dart';
import 'package:metacraftio/helpers/style.dart';
import 'package:metacraftio/widgets/drawer.dart';
import 'package:metacraftio/widgets/mobile_navbar.dart';
import 'package:metacraftio/widgets/navbar_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  tittle: 'Developer Portal',
                  isHomepage: true,
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
