import 'package:bitcoin_ticker/services/networking.dart';

const _api = '69BCE436-7CEE-48';
const _key = '13-83ED-E0BB359E135A';
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
  Future<dynamic> getCoinData(String currency) {
    var xRate =
        NetworkHelper('$_baseUrl${cryptoList[0]}/$currency?apikey=$_api$_key')
            .getUrlData();
    return xRate;
  }
}
