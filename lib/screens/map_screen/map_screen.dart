import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_crna_v1/constans.dart';
import 'package:new_crna_v1/screens/home/homescreen.dart';
import 'package:new_crna_v1/screens/list/list_screen.dart';
import 'package:new_crna_v1/screens/map_screen/components/googlemap.dart';
import 'package:new_crna_v1/screens/profile/profile_screen.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class pinScreen extends StatefulWidget {
  const pinScreen({Key? key, required String title}) : super(key: key);

  @override
  State<pinScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<pinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // body: MapSample(),
      //backgroundColor: kappbar,
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: kNavigationBar,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -10),
              blurRadius: 35,
              color: kNavigationBar.withOpacity(0.38),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return HomeScreen(
                            title: 'หน้าแรก',
                          );
                        },
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: Offset(-2.0, 0.0),
                              end: Offset(0.0, 0.0),
                            ).animate(animation),
                            child: child,
                          );
                        },
                        transitionDuration: Duration(seconds: 0)));
              },
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/pinO.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/files.svg"),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return listScreen(
                            title: 'รายการ',
                          );
                        },
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: Offset(-2.0, 0.0),
                              end: Offset(0.0, 0.0),
                            ).animate(animation),
                            child: child,
                          );
                        },
                        transitionDuration: Duration(seconds: 0)));
              },
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/user.svg"),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return profileScreen(
                            title: 'โปรไฟล์',
                          );
                        },
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: Offset(-2.0, 0.0),
                              end: Offset(0.0, 0.0),
                            ).animate(animation),
                            child: child,
                          );
                        },
                        transitionDuration: Duration(seconds: 0)));
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kappbar,
      title: const Text(
        'หน้าแผนที่',
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.normal,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/bell.svg",
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
