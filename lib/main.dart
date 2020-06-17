import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:gas_station/Common/utils.dart';
import 'package:gas_station/Widgets/Sucess.widget.dart';
import 'package:gas_station/Widgets/loading-button.widget.dart';
import 'package:gas_station/Widgets/submit-form.dart';
import 'Widgets/input.widget.dart';
import 'Widgets/logo.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gas Station',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final _gasCtrl = new MoneyMaskedTextController();
  final _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          // Sucess(
          //   result: "Compensa utilizar X",
          //   reset: (){},
          // ),
          
          SubmitForm(gasCtrl: _gasCtrl, alcoolCtrl: _alcCtrl, busy: false, submitFunc: (){})
         
        ],
             ),
    );
  }
}
