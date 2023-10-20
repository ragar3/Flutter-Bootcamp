import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  CoinData coinData = CoinData();
  String? selectedCurrency = 'USD';
  Map<String, int> coinValues = {};

  DropdownMenu<String> materialDropdown() {
    return DropdownMenu<String>(
      initialSelection: selectedCurrency,
      dropdownMenuEntries: [
        for (String c in currenciesList)
          DropdownMenuEntry(
            value: c,
            label: c,
          )
      ],
      onSelected: (value) async {
        var tempCurrency = value;
        var tempValues = await coinData.getCoinData(tempCurrency);
        setState(() {
          selectedCurrency = tempCurrency;
          coinValues = tempValues;
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    return CupertinoPicker(
      children: [for (String c in currenciesList) Text(c)],
      itemExtent: 32.0,
      onSelectedItemChanged: (i) async {
        var tempCurrency = currenciesList[i];
        var tempValues = await coinData.getCoinData(tempCurrency);
        setState(() {
          selectedCurrency = tempCurrency;
          coinValues = tempValues;
        });
      },
      scrollController: FixedExtentScrollController(
        initialItem: 19,
      ),
    );
  }

  void getData() async {
    try {
      var tempValues = await coinData.getCoinData(selectedCurrency);
      setState(() {
        coinValues = tempValues;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
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
              for (String c in cryptoList)
                RateBlock(
                  cryptoName: c,
                  cryptoValue: coinValues[c],
                  selectedCurrency: selectedCurrency,
                ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.purple[100],
            child: Platform.isIOS ? iOSPicker() : materialDropdown(),
          ),
        ],
      ),
    );
  }
}

class RateBlock extends StatelessWidget {
  RateBlock({
    required this.cryptoName,
    required this.cryptoValue,
    required this.selectedCurrency,
  });

  final String cryptoName;
  final int? cryptoValue;
  final String? selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        // color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            // '1 $cryptoName = ${cryptoRate != 0 ? cryptoRate : '?'} $selectedCurrency',
            '1 $cryptoName = $cryptoValue $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              // color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
