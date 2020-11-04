import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  int btcRate;
  int ethRate;
  int ltcRate;
  String selectedCurrency = currenciesList[0];

  @override
  void initState() {
    super.initState();
    updateRates();
  }

  void updateRates() async {
    try {
      var xRate = await CoinData().getCoinData(selectedCurrency);

      setState(() {
        if (xRate.length == 3) {
          btcRate = xRate[0];
          ethRate = xRate[1];
          ltcRate = xRate[2];
        } else {
          print(xRate[0]);
        }
      });
    } catch (e) {
      print(e);
    }
  }

  // void getCurrencyRate(String currencySelected) {}

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
        updateRates();
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
      onSelectedItemChanged: (selectedItemIndex) {
        selectedCurrency = currenciesList[selectedItemIndex];
        updateRates();
      },
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RatePad(cBase: 'BTC', rate: btcRate, cQoute: selectedCurrency),
              RatePad(cBase: 'ETH', rate: ethRate, cQoute: selectedCurrency),
              RatePad(cBase: 'LTC', rate: ltcRate, cQoute: selectedCurrency),
            ],
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

class RatePad extends StatelessWidget {
  const RatePad({
    @required this.cBase,
    @required this.rate,
    @required this.cQoute,
  });

  final String cBase;
  final int rate;
  final String cQoute;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            // '1 ${cBase ?? 'BTC'} = ${rate ?? '?'} ${cQoute ?? selectedCurrency}',
            rate == null ? 'Loading rates..' : '1 $cBase = $rate $cQoute',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
