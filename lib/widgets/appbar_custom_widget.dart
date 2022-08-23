import 'package:flutter/material.dart';

import 'package:eva_ui/eva_ui.dart';

import 'logo_widget.dart';

AppBar appbarCustomWidget(
    {required BuildContext context, List<Widget>? actions}) {
  return AppBar(
    title: Row(
      children: [
        const LogoWidget(
          white: true,
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Docs',
              style: TextStyle(
                color: EvaColors.white,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Examples',
              style: TextStyle(
                color: EvaColors.white,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Icons',
              style: TextStyle(
                color: EvaColors.white,
              ),
            )),
      ],
    ),
    actions: actions ?? [],
  );
}
