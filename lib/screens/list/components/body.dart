import 'package:flutter/material.dart';
import 'package:new_crna_v1/constans.dart';

class listBody extends StatefulWidget {
  const listBody({Key? key}) : super(key: key);

  @override
  State<listBody> createState() => _homeBodyState();
}

class _homeBodyState extends State<listBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 1,
            left: 15,
            right: 15,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 0.0,
            right: 200.0,
            top: 10.0,
          ),
          child: Text(
            "รายการการใช้บริการ",
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
              width: 260,
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
