import 'package:flutter/material.dart';

import 'Design.dart';
import 'di/Injection.dart';
import 'routes/app_router.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Exokames Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(textTheme: poppins),
      routerConfig: _appRouter.config(),
    );
  }
}
