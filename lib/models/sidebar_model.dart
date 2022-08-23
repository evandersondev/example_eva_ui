import 'package:flutter/widgets.dart';

class SidebarModel {
  final String pageName;
  final String pagePath;
  final Widget pageWidget;
  final bool isSelected;

  SidebarModel({
    required this.pageName,
    required this.pagePath,
    required this.pageWidget,
    this.isSelected = false,
  });
}
