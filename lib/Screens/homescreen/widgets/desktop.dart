import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:metacraftio/helpers/style.dart';
import 'package:metacraftio/widgets/footer.dart';
import "package:hovering/hovering.dart";

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: new FooterView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    elevation: 50,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: HoverContainer(
                      height: 250,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset("assets/images/auth.png"),
                      ),
                      hoverDecoration: BoxDecoration(
                          color: sitetheme,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Material(
                    elevation: 50,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: HoverContainer(
                      height: 250,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset("assets/images/homecard2.png"),
                      ),
                      hoverDecoration: BoxDecoration(
                          color: sitetheme,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Material(
                    elevation: 50,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: HoverContainer(
                      height: 250,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset("assets/images/imto.png"),
                      ),
                      hoverDecoration: BoxDecoration(
                          color: sitetheme,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Material(
                elevation: 50,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: HoverContainer(
                  height: 250,
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("assets/images/auth.png"),
                  ),
                  hoverDecoration: BoxDecoration(
                      color: sitetheme,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              SizedBox(
                width: 120,
              ),
              Material(
                elevation: 50,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: HoverContainer(
                  height: 250,
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("assets/images/homecard2.png"),
                  ),
                  hoverDecoration: BoxDecoration(
                      color: sitetheme,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              SizedBox(
                width: 120,
              ),
              Material(
                elevation: 50,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: HoverContainer(
                  height: 250,
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("assets/images/imto.png"),
                  ),
                  hoverDecoration: BoxDecoration(
                      color: sitetheme,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ],
          )
        ],
        footer: webFooter(context),
        flex: 8, //default flex is 2
      ),
    );
  }
}
