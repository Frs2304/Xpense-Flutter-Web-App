import 'package:flutter/material.dart';
import 'package:xpense/containers/container1.dart';
import 'package:xpense/containers/container2.dart';
import 'package:xpense/containers/container3.dart';
import 'package:xpense/containers/container4.dart';
import '../containers/container5.dart';
import '../utils/constants.dart';
import '../widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: const [
          NavBar(),
          Container1(),
          Container2(),
          Container3(),
          Container4(),
          Container5()
        ],
      ),
    ));
  }
}
