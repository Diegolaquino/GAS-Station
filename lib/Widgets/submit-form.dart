import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:gas_station/Widgets/input.widget.dart';
import 'package:gas_station/Widgets/loading-button.widget.dart';

class SubmitForm extends StatelessWidget {

  var gasCtrl = new MoneyMaskedTextController();
  var alcoolCtrl = new MoneyMaskedTextController();

  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcoolCtrl,
    @required this.busy,
    @required this.submitFunc
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gasolina",
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Alcool",
            ctrl: gasCtrl,
          ),
        ),
        LoadingButton(
                  busy: busy, 
                  func: submitFunc, 
                  invert: true, 
                  text: "Calcular",
        ),
      ],
    );
  }
}