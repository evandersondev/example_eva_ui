import 'package:flutter/material.dart';

import 'package:eva_ui/eva_ui.dart';

class TextView extends StatelessWidget {
  const TextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const spaceHorizontal = SizedBox(width: 8);
    const spaceVertical = SizedBox(height: 16);

    return Scaffold(
      body: EvaBox(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            EvaText.hero('Texts'),
          ],
        ),
      ),
    );
  }
}
