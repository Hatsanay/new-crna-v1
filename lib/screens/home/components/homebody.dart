import 'package:flutter/material.dart';
import 'package:new_crna_v1/constans.dart';
import 'package:new_crna_v1/screens/login/loginscreens.dart';

class homeBody extends StatefulWidget {
  const homeBody({Key? key}) : super(key: key);

  @override
  State<homeBody> createState() => _homeBodyState();
}

class _homeBodyState extends State<homeBody> {
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
                labelText: 'ค้นหาหรืออู่ฯ',
                prefixIcon: Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0))),
          ),
        ),
        Container(
          // margin: new EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kPrimaryColor,
              style: BorderStyle.solid,
              // width: 8.0,
              width: 90,
            ),
            borderRadius: BorderRadius.circular(20.0),
            color: kPrimaryColor,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
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
                  "ช่าง",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                style: LoginButtonStyle,
              ),
              ElevatedButton(
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
                  "อู่หรือศูนย์",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                style: LoginButtonStyle,
              ),
              ElevatedButton(
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
                  "รถลาก",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                style: LoginButtonStyle,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 0.0,
            right: 210.0,
            top: 10.0,
          ),
          child: Text(
            "อู่หรือศูนย์ไกล้ฉัน",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: kPrimaryColor),
          ),
        ),
        Container(
          // margin: new EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: klistgarage,
              style: BorderStyle.solid,
              // width: 8.0,
              width: 100,
            ),
            borderRadius: BorderRadius.circular(20.0),
            color: kPrimaryColor,
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
