import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  List prices = [];
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
        prices = xRate;
      });
    } catch (e) {
      print(e);
    }
  }

  Column makeCards() {
    List<RatePad> ratePad = [];

    if (prices.length == 1) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 64.0, 18.0, 0),
            child: Card(
              color: Colors.white,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '${prices[0]}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      for (var i = 0; i < cryptoList.length; i++) {
        if (prices.length == 0) {
          ratePad.add(RatePad());
        } else {
          ratePad.add(
            RatePad(
                cBase: cryptoList[i],
                rate: prices[i],
                cQoute: selectedCurrency),
          );
        }
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: ratePad,
    );
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
          makeCards(),
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
    this.cBase,
    this.rate,
    this.cQoute,
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
