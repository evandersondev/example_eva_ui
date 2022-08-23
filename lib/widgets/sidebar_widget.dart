import 'package:flutter/material.dart';

import 'package:example/widgets/logo_widget.dart';
import 'package:go_router/go_router.dart';

import 'package:eva_ui/eva_ui.dart';

import '../app_responsive.dart';
import '../models/sidebar_model.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({
    Key? key,
    required this.pages,
    required this.selectPage,
    required this.pageIndex,
  }) : super(key: key);

  final List<SidebarModel> pages;
  final Function selectPage;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          if (!AppResponsive.isDesktop(context))
            const DrawerHeader(
              child: Center(
                child: LogoWidget(large: true),
              ),
            ),
          const ListTile(
            title: Text(
              'Components',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: EvaColors.black,
              ),
            ),
            leading: Icon(
              Icons.apps,
              color: EvaColors.black,
            ),
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
          ),
          ...pages
              .map(
                (e) => ListTile(
                  horizontalTitleGap: 0,
                  visualDensity: VisualDensity.compact,
                  title: Text(e.pageName,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: pageIndex == pages.indexOf(e)
                            ? EvaColors.primary
                            : EvaColors.black.withOpacity(0.5),
                      )),
                  leading: const Icon(
                    Icons.apps,
                    color: Colors.transparent,
                  ),
                  onTap: () {
                    selectPage(pages.indexOf(e));

                    context.go('/docs/${e.pagePath}');
                  },
                ),
              )
              .toList(),
        ]),
      ),
    );
  }
}
