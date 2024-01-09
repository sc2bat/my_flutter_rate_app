import 'package:flutter/material.dart';
import 'package:my_flutter_rate_app/logger/logger.dart';

class MyCurrencyTextField extends StatefulWidget {
  final String currency;
  const MyCurrencyTextField({
    Key? key,
    required this.currency,
  }) : super(key: key);

  @override
  State<MyCurrencyTextField> createState() => _MyCurrencyTextFieldState();
}

class _MyCurrencyTextFieldState extends State<MyCurrencyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: widget.currency,
        focusedBorder: const OutlineInputBorder(),
      ),
      onChanged: (value) {
        logger.info('qwerasdf $value');
      },
    );
  }
}
