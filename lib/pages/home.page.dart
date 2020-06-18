import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:gas_station/Widgets/Sucess.widget.dart';
import 'package:gas_station/Widgets/logo.widget.dart';
import 'package:gas_station/Widgets/submit-form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = new MoneyMaskedTextController();

  var _alcCtrl = new MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = "Compensa utilizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          _completed
              ? Sucess(
                  result: _resultText,
                  reset: reset,
                )
              : SubmitForm(
                  gasCtrl: _gasCtrl,
                  alcoolCtrl: _alcCtrl,
                  busy: _busy,
                  submitFunc: calculate,
                )
        ],
      ),
    );
  }

  Future calculate(){
    double alcool = 
      double.parse(_alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double gas = 
      double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alcool / gas;

    setState(() {
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(const Duration(seconds: 2),() {
         setState(() {
            if(res >= 0.7){
              _resultText = "Compensa utilizar Gasolina";
            }else{
              _resultText = "Compensa utilizar Alcool";
            }
            
            _busy = false;
            _completed = true;
          });
      }
    );

   
  }

  reset(){
    setState(() {
      _alcCtrl = new MoneyMaskedTextController();
      _gasCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}
