import 'package:flutter/material.dart';

import 'package:example/views/button_view.dart';
import 'package:example/views/input_view.dart';
import 'package:example/views/text_view.dart';
import 'package:example/widgets/appbar_custom_widget.dart';

import '../app_responsive.dart';
import '../models/sidebar_model.dart';
import '../widgets/sidebar_widget.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key, required this.routeName}) : super(key: key);
  final String routeName;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int? pageIndex;

  late PageController pageController;

  List<SidebarModel> pages = [
    SidebarModel(
      pageName: 'Buttons',
      pagePath: 'button',
      pageWidget: const ButtonView(),
    ),
    SidebarModel(
      pageName: 'Inputs',
      pagePath: 'input',
      pageWidget: const InputView(),
    ),
    SidebarModel(
      pageName: 'Texts',
      pagePath: 'text',
      pageWidget: const TextView(),
    ),
  ];

  void selectPage(int index) {
    setState(() {
      pageIndex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    super.initState();

    final index = pages.indexWhere((page) => page.pagePath == widget.routeName);
    if (pageIndex == null) {
      setState(() {
        pageIndex = index;
      });
    }

    pageController = PageController(initialPage: index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCustomWidget(context: context),
      drawer: !AppResponsive.isDesktop(context)
          ? SidebarWidget(
              pages: pages,
              selectPage: selectPage,
              pageIndex: pageIndex ?? 0,
            )
          : null,
      body: Row(children: [
        if (AppResponsive.isDesktop(context))
          SidebarWidget(
            pages: pages,
            selectPage: selectPage,
            pageIndex: pageIndex ?? 0,
          ),
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: selectPage,
            physics: const NeverScrollableScrollPhysics(),
            children: pages.map((e) => e.pageWidget).toList(),
          ),
        )
      ]),
    );
  }
}
