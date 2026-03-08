import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@Singleton()
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
        path: '/SearchRoute',
        page: SearchRoute.page,
        initial: true,
    ),
  ];
}
