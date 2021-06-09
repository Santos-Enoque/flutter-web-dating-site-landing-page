import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/responsive.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/pages/home/widgets/desktop.dart';
import 'package:flutter_web_example/pages/home/widgets/mobile.dart';
import 'package:flutter_web_example/widgets/navbar_desktop.dart';
import 'package:flutter_web_example/widgets/drawer.dart';
import 'package:flutter_web_example/widgets/mobile_navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
        appBar: ResponsiveWidget.isSmallScreen(context) ?
        mobileTopBar(scaffoldKey) :
         PreferredSize(preferredSize: Size(screenSize.width, 1000),
        child: NavBar(),),
        drawer: MobileMenu(),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: DesktopScreen(),
          smallScreen: MobileScreen(),
        ));
  }
}
