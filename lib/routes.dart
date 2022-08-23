import 'package:go_router/go_router.dart';

import 'views/main_view.dart';

final router = GoRouter(
  initialLocation: '/docs/button',
  routes: [
    GoRoute(
      path: '/',
      redirect: (_) => '/docs/:view',
    ),
    GoRoute(
      path: '/docs/:view',
      builder: (context, state) {
        return MainView(
          routeName: state.params['view']!,
        );
      },
    ),
  ],
);
