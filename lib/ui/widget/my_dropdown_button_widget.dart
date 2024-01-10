import 'package:flutter/material.dart';
import 'package:my_flutter_rate_app/logger/logger.dart';

class MyDropdownButtonWidget extends StatelessWidget {
  const MyDropdownButtonWidget({
    super.key,
    required String baseCurruncy,
    required this.drops,
  }) : _baseCurruncy = baseCurruncy;

  final String _baseCurruncy;
  final List<String> drops;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _baseCurruncy,
      items: drops
          .map(
            (e) => DropdownMenuItem<String>(
              value: e.toUpperCase(),
              child: Text(e.toUpperCase()),
            ),
          )
          .toList(),
      onChanged: (value) {
        logger.info('qwerasdf drops changed');
      },
    );
  }
}
