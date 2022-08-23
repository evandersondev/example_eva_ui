import 'package:flutter/material.dart';

import 'package:eva_ui/eva_ui.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    this.white = false,
    this.large = false,
  }) : super(key: key);

  final bool white;
  final bool large;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: large ? 50 : 30,
      width: large ? 87 : 55,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(large ? 16 : 8),
          topRight: Radius.circular(large ? 16 : 8),
          bottomRight: Radius.circular(large ? 22 : 12),
        ),
        color: white ? EvaColors.white : EvaColors.primary,
      ),
      child: Center(
        child: Text(
          'EVAUI',
          style: TextStyle(
            color: white ? EvaColors.primary : EvaColors.white,
            fontWeight: FontWeight.w900,
            fontSize: large ? 22 : 14,
          ),
        ),
      ),
    );
  }
}
