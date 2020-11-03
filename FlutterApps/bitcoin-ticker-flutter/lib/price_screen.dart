import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String cBase;
  String cQoute;
  int rate;
  String selectedCurrency = currenciesList[0];

  @override
  void initState() {
    super.initState();
    updateRates();
  }

  void updateRates() async {
    var xRate = await CoinData().getCoinData();
    setState(() {
      cBase = xRate['asset_id_base'];
      cQoute = xRate['asset_id_quote'];
      rate = xRate['rate'].toInt();
    });
  }

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownMenuItems = [];

    for (String currency in currenciesList) {
      dropdownMenuItems.add(DropdownMenuItem(
        child: Text(currency),
        value: currency,
      ));
    }

    return DropdownButton<String>(
      elevation: 23,
      dropdownColor: Colors.blue,
      value: selectedCurrency,
      items: dropdownMenuItems,
      onChanged: (value) => setState(() {
        selectedCurrency = value;
      }),
    );
  }

  CupertinoPicker iosPicker() {
    List<Widget> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 52,
      onSelectedItemChanged: (selectedItemIndex) => print(selectedItemIndex),
      children: pickerItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 ${cBase ?? 'BTC'} = ${rate ?? '?'} ${cQoute ?? 'USD'}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}
