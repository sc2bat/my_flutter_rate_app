import 'package:flutter/material.dart';
import 'package:my_flutter_rate_app/ui/widget/my_currency_text_field.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Rate App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            // 기준 통화 입력창
            MyCurrencyTextField(currency: 'Base currency'),

            // 대상 통화 입력창
            MyCurrencyTextField(currency: 'Targeted currency'),
          ],
        ),
      ),
    );
  }
}
