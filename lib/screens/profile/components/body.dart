import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_crna_v1/constans.dart';
import 'package:new_crna_v1/screens/login/loginscreens.dart';

class profileBody extends StatefulWidget {
  const profileBody({Key? key}) : super(key: key);

  @override
  State<profileBody> createState() => _homeBodyState();
}

class _homeBodyState extends State<profileBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Text(" "),
        Padding(
          padding: const EdgeInsets.only(
            top: 1,
            left: 15,
            right: 15,
          ),
        ),
        Container(
          width: 150,
          height: 150,
          // margin: new EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 2.0,
          ),
          child: IconButton(
            icon: SvgPicture.asset("assets/icons/user2.svg"),
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return logscreens();
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
        ),
        Container(
          // margin: new EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 50.0,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 0.0,
            right: 220.0,
            top: 10.0,
          ),
          child: Text(
            "แก้ไขข้อมูลส่วนตัว",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: kPrimaryColor),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
          ),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'โปรดกรอกรหัสผ่าน(Password)!';
              }
              return null;
            },
            obscureText: true,
            // controller: _ctrlPassword,
            decoration: InputDecoration(
                fillColor: ktextfieleregis,
                filled: true,
                labelText: '',
                suffixIcon: IconButton(
                  icon: SvgPicture.asset("assets/icons/backof.svg"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return logscreens();
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0))),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 20.0,
          ),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'โปรดกรอกรหัสผ่าน(Password)!';
              }
              return null;
            },
            obscureText: true,
            // controller: _ctrlPassword,
            decoration: InputDecoration(
                fillColor: ktextfieleregis,
                filled: true,
                labelText: '',
                suffixIcon: IconButton(
                  icon: SvgPicture.asset("assets/icons/backof.svg"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return logscreens();
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
                // prefixIcon: Icon(
                //   Icons.search,
                //   color: kPrimaryColor,
                // ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0))),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 20.0,
          ),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'โปรดกรอกรหัสผ่าน(Password)!';
              }
              return null;
            },
            obscureText: true,
            // controller: _ctrlPassword,
            decoration: InputDecoration(
                fillColor: ktextfieleregis,
                filled: true,
                labelText: '',
                suffixIcon: IconButton(
                  icon: SvgPicture.asset("assets/icons/backof.svg"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return logscreens();
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
                // prefixIcon: Icon(
                //   Icons.search,
                //   color: kPrimaryColor,
                // ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0))),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 20.0,
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return logscreens(
                            // title: 'หน้าล็อกอิน',
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
            child: Text(
              "ออกจากระบบ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            style: LogoutButtonStyle,
          ),
        ),
      ],
    );
  }
}

final ButtonStyle LoginButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black,
  primary: kButtonloginColor,
  minimumSize: Size(94, 40),
  padding: EdgeInsets.symmetric(horizontal: 10),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);

final ButtonStyle LogoutButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black,
  primary: kButtonloginColor,
  minimumSize: Size(94, 50),
  padding: EdgeInsets.symmetric(horizontal: 50),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);
