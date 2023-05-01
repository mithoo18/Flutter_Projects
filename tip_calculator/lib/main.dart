import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(title: 'Title Calculator', home: TipCalculator()));
}

class TipCalculator extends StatefulWidget {
  double billAmount = 0.0;
  double tipPercentage = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField billAmountField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          billAmount = double.parse(value);
        } catch (exception) {
          billAmount = 0.0;
        }
      },
      decoration: InputDecoration(labelText: "Bill Amount(\$)"),
    );

    TextField tipPercentageField = TextField(
        decoration: InputDecoration(labelText: "Tip %", hintText: "15"),
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          try {
            tipPercentage = double.parse(value);
          } catch (exception) {
            tipPercentage = 0.0;
          }
        });

    ElevatedButton elevatedButton = ElevatedButton(
        child: Text("Calculate"),
        onPressed: () {
          double calculatedTip = billAmount * tipPercentage / 100.0;
          double total = billAmount + calculatedTip;

          AlertDialog dialog = AlertDialog(
              content: Text("Tip: \$$calculatedTip \n"
                  "Total: \$$total"));

          // Show dialog
          showDialog(
              context: context, builder: (BuildContext context) => dialog);
        });

    Container container = Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [billAmountField, tipPercentageField, calculateButton]));

    AppBar appBar = AppBar(title: Text("Tip Calculator"));

    Scaffold scaffold = Scaffold(appBar: appBar, body: container);
    return scaffold;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
