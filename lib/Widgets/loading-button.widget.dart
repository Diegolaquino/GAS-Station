import 'package:flutter/material.dart';
import 'package:gas_station/Common/utils.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            width: 300,
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
                color: invert ? Colors.white : Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  10,
                )),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Theme.of(context).primaryColor : Colors.white,
                  fontSize: 25,
                  fontFamily: Utils.FONTE,
                ),
              ),
              onPressed: func,
            ),
          );
  }
}
