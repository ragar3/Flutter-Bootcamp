import 'dart:convert';

import 'package:http/http.dart' as http;

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

const coinBaseURL = 'https://api.coinbase.com/v2/exchange-rates?currency=';
const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';

class CoinData {
  Future getCoinData(String? selectedCurrency) async {
    Map<String, int> coinValues = {};

    for (String c in cryptoList) {
      print(c);
      print(selectedCurrency);
      http.Response response = await http.get(Uri.parse('$coinBaseURL$c'));
      if (response.statusCode == 200) {
        dynamic data = jsonDecode(response.body)['data'];
        var value = data['rates'][selectedCurrency];
        value = double.parse(value);
        coinValues[c] = value.round();
      } else {
        print(response.statusCode);
        coinValues[c] = 0;
      }
    }

    return coinValues;
  }
}
