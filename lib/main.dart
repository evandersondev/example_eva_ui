import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:eva_ui/eva_ui.dart';

import 'routes.dart';

void main() {
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: EvaColors.primary,
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
