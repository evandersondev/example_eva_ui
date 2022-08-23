import 'package:flutter/material.dart';

import 'package:example/utils/copy_code.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:selectable/selectable.dart';

import 'package:eva_ui/eva_ui.dart';

import '../utils/copy_code.dart';

class CardCodeWidget extends StatelessWidget {
  const CardCodeWidget({
    Key? key,
    required this.code,
  }) : super(key: key);

  final String code;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: EvaColors.gray,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: EvaText.title('Code example'),
              ),
              IconButton(
                onPressed: () => CopyCode.copy(code),
                icon: const Icon(
                  Icons.content_paste_rounded,
                  color: EvaColors.black,
                  size: 22,
                ),
              )
            ],
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: EvaColors.gray,
          ),
          Selectable(
            child: HighlightView(
              code,
              language: 'dart',
              theme: githubTheme,
              padding: const EdgeInsets.all(12),
            ),
          ),
        ],
      ),
    );
  }
}
