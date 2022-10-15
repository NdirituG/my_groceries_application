import 'package:flutter/material.dart';

import 'package:my_groceries_application/widgets/text_widget.dart';

import '../services/utils.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    return FittedBox(
      child: Row(
        children: [
          TextWidget(text: 'Ksh 50', color: Colors.green, textSize: 22),
          const SizedBox(
            width: 5,
          ),
          Text(
            'Ksh 100',
            style: TextStyle(
                fontSize: 15,
                color: color,
                decoration: TextDecoration.lineThrough),
          )
        ],
      ),
    );
  }
}
