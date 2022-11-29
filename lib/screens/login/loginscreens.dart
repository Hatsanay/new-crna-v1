import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_crna_v1/screens/login/components/anthen.dart';

class logscreens extends StatefulWidget {
  const logscreens({Key? key}) : super(key: key);

  @override
  State<logscreens> createState() => _WelComeState();
}

class _WelComeState extends State<logscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Authen(),
    );
  }
}

// class welcomeScreen extends StatelessWidget {
//   const welcomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold();
//   }
// }
