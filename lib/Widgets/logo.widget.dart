import 'package:flutter/material.dart';
import 'package:gas_station/Common/utils.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/aog-white.png",
            height: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Gas Station",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: Utils.FONTE,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          )
        ]
 
    );
  }
}