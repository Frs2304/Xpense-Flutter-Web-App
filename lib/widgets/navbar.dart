import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MobileNavBar() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            navLogo(),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Widget DesktopNavBar() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(),
            Row(
              children: [
                navButton('Features'),
                navButton('About us'),
                navButton('Pricing'),
                navButton('Feedback'),
              ],
            ),
            // ignore: sized_box_for_whitespace
            Container(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Request a Demo'),
                ))
          ],
        ));
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          )),
    );
  }

  Widget navLogo() {
    return Container(
        width: 110,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(logo))));
  }
}
