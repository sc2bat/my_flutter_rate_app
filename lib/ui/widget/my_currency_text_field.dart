import 'package:flutter/material.dart';
import 'package:my_flutter_rate_app/logger/logger.dart';

class MyCurrencyTextField extends StatefulWidget {
  final String currency;
  final TextEditingController controller;
  const MyCurrencyTextField({
    super.key,
    required this.currency,
    required this.controller,
  });

  @override
  State<MyCurrencyTextField> createState() => _MyCurrencyTextFieldState();
}

class _MyCurrencyTextFieldState extends State<MyCurrencyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: widget.currency,
        // focusedBorder: const OutlineInputBorder(),
        border: const OutlineInputBorder(),
      ),
      onChanged: (value) {
        logger.info('qwerasdf $value');
      },
    );
  }
}
