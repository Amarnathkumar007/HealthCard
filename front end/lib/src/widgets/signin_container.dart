import 'dart:math';

import 'package:flutter/material.dart';

class SigninContainer extends StatelessWidget {
  const SigninContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Transform.rotate(
          angle: -pi / .27,
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            child: Container(
              width: MediaQuery.of(context).size.width * 1.2,
              decoration: BoxDecoration(
                color: Color.fromRGBO(104, 203, 240, 1),
              ),
            ),
          ),
        ),
        ClipPath(
          child: Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(80, 86, 96, 1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 158, horizontal: 30),
                child: Text('Welcome\nBack',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      // height: 5.5
                    )),
              )),
        ),
        Transform.rotate(
          angle: -pi / 7.4,
          alignment: Alignment.bottomLeft,
          child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 174, 71, 1),
              ),
            ),
          ),
        ]
      );
    }
}
