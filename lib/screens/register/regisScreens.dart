import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_crna_v1/screens/login/components/anthen.dart';
import 'package:new_crna_v1/screens/register/components/regisbody.dart';

class regisScreen extends StatefulWidget {
  const regisScreen({Key? key}) : super(key: key);

  @override
  State<regisScreen> createState() => _regisScreenState();
}

class _regisScreenState extends State<regisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: regisbody(),
    );
  }
}
