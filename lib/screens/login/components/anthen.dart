import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_crna_v1/constans.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
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
      body: SafeArea(
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.navigate_next,
          size: 36.0,
        ),
        onPressed: () {},
      ),
    );
  }
}
