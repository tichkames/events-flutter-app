import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../features/events/Events.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
@lazySingleton
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: EventListRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: EventDetailRoute.page,
          // path: '/event/:id',
        ),
      ];
}
