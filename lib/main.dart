import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Denis());
}

class Denis extends StatelessWidget {
  const Denis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: currencyConverter(),
    );
  }
}

class currencyConverter extends StatefulWidget {
  const currencyConverter({Key? key}) : super(key: key);

  @override
  State<currencyConverter> createState() => _currencyConverterState();
}

class _currencyConverterState extends State<currencyConverter> {
  double convertedValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Icon(Icons.currency_exchange,
              size: 200,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onSubmitted: (value) {
              setState(() {
                double _value = double.parse(value);
                convertedValue = _value * 5;
              });
            },
          ),
          Text(
            'Valoarea este ' + convertedValue.toString() + ' euro',
          ),
        ],
      ),
    );
  }
}


