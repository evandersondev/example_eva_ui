import 'package:flutter/material.dart';

import 'package:eva_ui/eva_ui.dart';

import '../widgets/card_code_widget.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({Key? key}) : super(key: key);

  final buttonColorCode = '''
    EvaButton(
      'Success',
      tap: () {},
      type: ButtonType.success,
    );
  ''';

  final buttonSizeCode = '''
    EvaButton(
      'Medium',
      tap: () {},
      size: ButtonSize.medium,
    );
  ''';

  @override
  Widget build(BuildContext context) {
    const spaceHorizontal = SizedBox(width: 8);
    const spaceVertical = SizedBox(height: 16);

    return Scaffold(
      body: EvaBox(
        child: ListView(padding: const EdgeInsets.all(16), children: [
          const EvaText.hero('Buttons'),
          spaceVertical,
          const EvaText.title('Colors'),
          spaceVertical,
          Wrap(
            runSpacing: 8.0,
            children: [
              EvaButton('Primary', tap: () {}),
              spaceHorizontal,
              EvaButton(
                'Normal',
                tap: () {},
                type: ButtonType.normal,
              ),
              spaceHorizontal,
              EvaButton(
                'Success',
                tap: () {},
                type: ButtonType.success,
              ),
              spaceHorizontal,
              EvaButton(
                'Danger',
                tap: () {},
                type: ButtonType.danger,
              ),
              spaceHorizontal,
              EvaButton(
                'Warning',
                tap: () {},
                type: ButtonType.warning,
              ),
              spaceHorizontal,
              EvaButton(
                'Dark',
                tap: () {},
                type: ButtonType.dark,
              ),
              spaceHorizontal,
              EvaButton(
                'Light',
                tap: () {},
                type: ButtonType.light,
              ),
              spaceHorizontal,
              EvaButton(
                'Disabled',
                tap: () {},
                disabled: true,
              ),
            ],
          ),
          spaceVertical,
          CardCodeWidget(code: buttonColorCode),
          spaceVertical,
          const Divider(),
          spaceVertical,
          const EvaText.title('Sizes'),
          spaceVertical,
          Wrap(
            children: [
              EvaButton(
                'Small',
                tap: () {},
                size: ButtonSize.small,
              ),
              spaceHorizontal,
              EvaButton(
                'Medium',
                tap: () {},
                size: ButtonSize.medium,
              ),
              spaceHorizontal,
              EvaButton(
                'Large',
                tap: () {},
                size: ButtonSize.large,
              ),
            ],
          ),
          spaceVertical,
          CardCodeWidget(code: buttonSizeCode),
        ]),
      ),
    );
  }
}
