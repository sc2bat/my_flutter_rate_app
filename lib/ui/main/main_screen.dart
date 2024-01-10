import 'package:flutter/material.dart';
// import 'package:my_flutter_rate_app/logger/logger.dart';
import 'package:my_flutter_rate_app/ui/widget/my_currency_text_field.dart';
import 'package:my_flutter_rate_app/ui/widget/my_dropdown_button_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String _baseCurruncy = 'KRW';
  final String _targetCurruncy = 'USD';

  final _baseCurrencyController = TextEditingController();
  final _targetCurrencyController = TextEditingController();

  List<String> drops = [
    'KRW',
    'USD',
    'EUR',
  ];

  @override
  void dispose() {
    _baseCurrencyController.dispose();
    _targetCurrencyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Rate App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 기준 통화 입력창
            MyCurrencyTextField(
              currency: 'Base currency',
              controller: _baseCurrencyController,
            ),
            MyDropdownButtonWidget(
              baseCurruncy: _baseCurruncy,
              drops: drops,
            ),
            // 대상 통화 입력창
            MyCurrencyTextField(
              currency: 'Targeted currency',
              controller: _targetCurrencyController,
            ),
            MyDropdownButtonWidget(
              baseCurruncy: _targetCurruncy,
              drops: drops,
            ),
          ],
        ),
      ),
    );
  }
}
