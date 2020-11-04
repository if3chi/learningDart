import 'package:bitcoin_ticker/services/networking.dart';

const _api = '69BCE436-7CEE-4813';
const _key = '83ED-E0BB359E135A';

// const _api = 'A989451A-14C5-4DDC';
// const _key = '9D83-96628715BB4E';

const _baseUrl = 'https://rest.coinapi.io/v1/exchangerate/';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String currency) async {
    var rates = [];
    err:
    for (var base in cryptoList) {
      var xRate =
          await NetworkHelper('$_baseUrl$base/$currency?apikey=$_api-$_key')
              .getUrlData();
      if (xRate.containsKey('error')) {
        rates.add(xRate['error']);
        break err;
      }
      rates.add(xRate['rate'].toInt());
    }

    return rates;
  }
}
