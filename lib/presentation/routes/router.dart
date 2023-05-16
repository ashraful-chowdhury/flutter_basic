import 'package:auto_route/auto_route.dart';
import 'package:flutter_basic/presentation/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: CounterRoute.page),
      ];
}
