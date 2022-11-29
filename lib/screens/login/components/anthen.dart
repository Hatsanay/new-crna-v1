import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_crna_v1/constans.dart';
import 'package:new_crna_v1/screens/home/homescreen.dart';
import 'package:new_crna_v1/screens/login/components/api_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  TextEditingController _ctrlUsername = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  ApiProvider apiProvider = ApiProvider();

  Future doLogin() async {
    if (_formKey.currentState!.validate()) {
      try {
        var rs =
            await apiProvider.doLogin(_ctrlUsername.text, _ctrlPassword.text);
        if (rs.statusCode == 200) {
          print(rs.body);
          var jsonRes = json.decode(rs.body);
          if (jsonRes['ok']) {
            String token = jsonRes['token'];
            print(token);
            final prefs = await SharedPreferences.getInstance();
            await prefs.setString(token, token);
            //redirect
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(
                      title: 'หน้าแรก',
                    )));
            print(jsonRes['error']);
            Fluttertoast.showToast(
              backgroundColor: Colors.green,
              textColor: Colors.white,
              msg: 'เข้าสู่ระบบเรียบร้อย!',
              toastLength: Toast.LENGTH_SHORT,
            );
          } else {
            print(jsonRes['error']);
            Fluttertoast.showToast(
              backgroundColor: Colors.orange,
              textColor: Colors.white,
              msg: 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง!',
              toastLength: Toast.LENGTH_SHORT,
            );
          }
        } else {
          print('การเชื่อมต่อเซฟเวอร์ผิดพลาด');
        }
      } catch (error) {
        print(error);
      }
    }
  }

  bool _isVisible = false;

  //Explict

  //Method
  Widget backButton() {
    return IconButton(
      icon: Icon(
        Icons.navigate_before,
        size: 36.0,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

//หัวข้อ
  Widget content() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          showAppName(),
          usernameText(),
          passwordText(),
        ],
      ),
    );
  }

//แสดงชื่อและโลโก้
  Widget showAppName() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        showLogo(),
        // showText(),
      ],
    );
  }

// โลโก้
  Widget showLogo() {
    return Container(
      width: 350.0,
      height: 150.0,
      child: Image.asset('assets/icons/Logo.png'),
    );
  }

// ชื่อ
  Widget showText() {
    return Text(
      'เข้าสู่ระบบ',
      style: TextStyle(fontSize: 30.0, fontFamily: ''),
    );
  }

  Widget usernameText() {
    return Container(
      width: 320.0,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'โปรดกรอกชื่อผู้ใช้(Username)!';
          }
          return null;
        },
        controller: _ctrlUsername,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              size: 36.0,
              color: kPrimaryColor,
            ),
            labelText: 'Username',
            labelStyle: TextStyle(color: kPrimaryColor)),
      ),
    );
  }

////////////////////////
/////เปิดดูรหัสผ่าน////////
///////////////////////
  IconButton visible() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isVisible = !_isVisible;
        });
      },
      icon: _isVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
    );
  }

  Widget passwordText() {
    return Container(
      width: 320.0,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'โปรดกรอกรหัสผ่าน(Password)!';
          }
          return null;
        },
        controller: _ctrlPassword,
        obscureText: !_isVisible,
        decoration: InputDecoration(
            suffixIcon: visible(),
            icon: Icon(
              Icons.lock,
              size: 36.0,
              color: kPrimaryColor,
            ),
            labelText: 'Password',
            labelStyle: TextStyle(color: kPrimaryColor)),
      ),
    );
  }

  Widget loginButton() {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      child: Icon(
        Icons.navigate_next,
        size: 36.0,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 130),
            child: Container(
              // decoration: BoxDecoration(
              //   gradient: RadialGradient(
              //       colors: [Colors.white, Colors.orange.shade700], radius: 1.0),
              // ),
              child: Stack(
                children: <Widget>[
                  backButton(),
                  content(),
                  // loginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.navigate_next,
          size: 36.0,
        ),
        onPressed: () => doLogin(),
      ),
    );
  }
}
